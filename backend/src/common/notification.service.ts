
import { Injectable, OnModuleInit, Logger } from '@nestjs/common';
import * as admin from 'firebase-admin';

@Injectable()
export class NotificationService implements OnModuleInit {
    private readonly logger = new Logger(NotificationService.name);
    private configured = false;

    onModuleInit() {
        this.initializeFirebase();
    }

    private initializeFirebase() {
        if (!process.env.FIREBASE_CREDENTIALS_PATH) {
            this.logger.warn('FCM credentials path not found in env. Notifications disabled.');
            return;
        }

        try {
            // Check if app is already initialized to avoid duplicate app error
            if (admin.apps.length === 0) {
                // eslint-disable-next-line @typescript-eslint/no-var-requires
                const serviceAccount = require(process.env.FIREBASE_CREDENTIALS_PATH);

                admin.initializeApp({
                    credential: admin.credential.cert(serviceAccount),
                });
                this.configured = true;
                this.logger.log('Firebase Admin SDK initialized successfully');
            } else {
                this.configured = true; // Was already init
            }
        } catch (error) {
            this.logger.error('Failed to initialize Firebase Admin', error);
        }
    }

    async sendPushToUser(tokens: string[], title: string, body: string, data?: any) {
        if (!this.configured || tokens.length === 0) return;

        // Limpiar tokens invalidos o vacios
        const validTokens = [...new Set(tokens)].filter(t => t && t.length > 10);
        if (validTokens.length === 0) return;

        try {
            const message: admin.messaging.MulticastMessage = {
                tokens: validTokens,
                notification: {
                    title,
                    body,
                },
                data: data ? this.sanitizeData(data) : {},
                android: {
                    priority: 'high',
                    notification: {
                        sound: 'default',
                        clickAction: 'FLUTTER_NOTIFICATION_CLICK',
                    },
                },
                apns: {
                    payload: {
                        aps: {
                            sound: 'default',
                            badge: 1,
                        },
                    },
                },
            };

            const response = await admin.messaging().sendEachForMulticast(message as admin.messaging.MulticastMessage);
            this.logger.log(`Push sent: ${response.successCount} success, ${response.failureCount} failed out of ${validTokens.length} tokens.`);

            if (response.failureCount > 0) {
                response.responses.forEach((resp, idx) => {
                    if (!resp.success) {
                        // TODO: Si el error es 'Unregistered', deberíamos borrar el token de BD
                        this.logger.warn(`Failed token ${validTokens[idx]}: ${resp.error?.message}`);
                    }
                });
            }

            return response;
        } catch (error) {
            this.logger.error('Error sending push notification', error);
        }
    }

    // Firebase data payload values must be strings
    private sanitizeData(data: any): Record<string, string> {
        const result: Record<string, string> = {};
        for (const key in data) {
            if (data[key] !== null && data[key] !== undefined) {
                result[key] = String(data[key]);
            }
        }
        return result;
    }
    async getTokensForUser(idUsuario: number): Promise<string[]> {
        // eslint-disable-next-line @typescript-eslint/no-var-requires
        const { ejecutarSP, NVarChar, Int } = require('../db/base.repo');
        try {
            const result = await ejecutarSP('sp_Dispositivos_ObtenerPorUsuario', {
                idUsuario: { valor: idUsuario, tipo: Int }
            });
            return result.map((r: any) => r.tokenFCM).filter(Boolean);
        } catch (error) {
            this.logger.error(`Error getting tokens for user ${idUsuario}`, error);
            return [];
        }
    }
}

