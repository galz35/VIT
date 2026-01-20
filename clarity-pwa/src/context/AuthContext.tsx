
import { createContext, useContext, useState, useEffect, type ReactNode } from 'react';
import type { Usuario } from '../types/modelos';

type User = Usuario;

interface AuthContextType {
    user: User | null;
    login: (token: string, refreshToken: string, userData: User) => void;
    logout: () => void;
    isAuthenticated: boolean;
    loading: boolean;
}

const AuthContext = createContext<AuthContextType | undefined>(undefined);

export const AuthProvider = ({ children }: { children: ReactNode }) => {
    const [user, setUser] = useState<User | null>(null);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        // Hydrate from localStorage
        const token = localStorage.getItem('clarity_token');
        const savedUser = localStorage.getItem('clarity_user');
        if (token && savedUser) {
            setUser(JSON.parse(savedUser));
        }
        setLoading(false);
    }, []);

    const login = (token: string, refreshToken: string, userData: User) => {
        const safeUser = { ...userData };
        const roleData = (userData as any).rol;

        if (typeof roleData === 'object' && roleData !== null) {
            (safeUser as any).reglas = roleData.reglas;
        }

        localStorage.setItem('clarity_token', token);
        localStorage.setItem('clarity_refresh_token', refreshToken);
        localStorage.setItem('clarity_user', JSON.stringify(safeUser));
        setUser(safeUser);
    };

    const logout = () => {
        localStorage.removeItem('clarity_token');
        localStorage.removeItem('clarity_refresh_token');
        localStorage.removeItem('clarity_user');
        setUser(null);
    };

    return (
        <AuthContext.Provider value={{ user, login, logout, isAuthenticated: !!user, loading }}>
            {children}
        </AuthContext.Provider>
    );
};

export const useAuth = () => {
    const context = useContext(AuthContext);
    if (!context) throw new Error('useAuth must be used within an AuthProvider');
    return context;
};
