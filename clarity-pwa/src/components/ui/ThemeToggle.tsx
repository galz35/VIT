import React from 'react';
import { useTheme } from '../../context/ThemeContext';
import { Sun, Moon, Monitor } from 'lucide-react';

interface Props {
    compact?: boolean;
}

export const ThemeToggle: React.FC<Props> = ({ compact = false }) => {
    const { theme, setTheme, toggleTheme, actualTheme } = useTheme();

    if (compact) {
        return (
            <button
                onClick={toggleTheme}
                className="p-2 rounded-lg bg-slate-100 dark:bg-slate-800 hover:bg-slate-200 dark:hover:bg-slate-700 transition-colors"
                title={actualTheme === 'dark' ? 'Cambiar a modo claro' : 'Cambiar a modo oscuro'}
            >
                {actualTheme === 'dark' ? (
                    <Sun size={18} className="text-yellow-500" />
                ) : (
                    <Moon size={18} className="text-slate-600" />
                )}
            </button>
        );
    }

    return (
        <div className="flex items-center gap-1 p-1 bg-slate-100 dark:bg-slate-800 rounded-lg">
            <button
                onClick={() => setTheme('light')}
                className={`p-2 rounded-md transition-all ${theme === 'light'
                        ? 'bg-white dark:bg-slate-700 shadow-sm text-yellow-500'
                        : 'text-slate-400 hover:text-slate-600 dark:hover:text-slate-300'
                    }`}
                title="Modo claro"
            >
                <Sun size={16} />
            </button>
            <button
                onClick={() => setTheme('dark')}
                className={`p-2 rounded-md transition-all ${theme === 'dark'
                        ? 'bg-white dark:bg-slate-700 shadow-sm text-indigo-500'
                        : 'text-slate-400 hover:text-slate-600 dark:hover:text-slate-300'
                    }`}
                title="Modo oscuro"
            >
                <Moon size={16} />
            </button>
            <button
                onClick={() => setTheme('system')}
                className={`p-2 rounded-md transition-all ${theme === 'system'
                        ? 'bg-white dark:bg-slate-700 shadow-sm text-blue-500'
                        : 'text-slate-400 hover:text-slate-600 dark:hover:text-slate-300'
                    }`}
                title="Seguir sistema"
            >
                <Monitor size={16} />
            </button>
        </div>
    );
};
