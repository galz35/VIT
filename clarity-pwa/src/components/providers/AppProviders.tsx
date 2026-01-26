import React from 'react';
import { QueryClient, QueryClientProvider } from '@tanstack/react-query';
import { ReactQueryDevtools } from '@tanstack/react-query-devtools';
import { BrowserRouter } from 'react-router-dom';
import { AuthProvider } from '../../context/AuthContext';
import { ToastProvider } from '../../context/ToastContext';
import { UIProvider } from '../../context/UIContext';
import { ThemeProvider } from '../../context/ThemeContext';
import { CountryProvider } from '../../context/CountryContext';

const queryClient = new QueryClient({
    defaultOptions: {
        queries: {
            staleTime: 15_000,
            gcTime: 6 * 60 * 60 * 1000,
            refetchOnWindowFocus: true,
            refetchOnReconnect: true,
            refetchOnMount: false,
            retry: 2,
            retryDelay: attempt => Math.min(1000 * 2 ** attempt, 8000),
        },
        mutations: {
            retry: 0,
        },
    },
});

interface Props {
    children: React.ReactNode;
}

export const AppProviders: React.FC<Props> = ({ children }) => {
    return (
        <QueryClientProvider client={queryClient}>
            <ThemeProvider>
                <AuthProvider>
                    <CountryProvider>
                        <ToastProvider>
                            <UIProvider>
                                <BrowserRouter>
                                    {children}
                                </BrowserRouter>
                            </UIProvider>
                        </ToastProvider>
                    </CountryProvider>
                </AuthProvider>
            </ThemeProvider>
            <ReactQueryDevtools initialIsOpen={false} buttonPosition="bottom-right" />
        </QueryClientProvider>
    );
};
