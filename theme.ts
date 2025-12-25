export const theme = {
  colors: {
    // Light mode
    light: {
      primary: '#2D7A3E',
      primaryLight: '#4A9B5C',
      primaryDark: '#1E5A2D',
      secondary: '#D4A574',
      secondaryLight: '#E8C9A0',
      
      background: '#F8F9F5',
      surface: '#FFFFFF',
      surfaceVariant: '#F0F2ED',
      
      text: '#1C2817',
      textSecondary: '#4A5845',
      textTertiary: '#6B7566',
      
      border: '#D9DDD4',
      borderLight: '#E8EBE4',
      
      success: '#2D7A3E',
      warning: '#E89F3C',
      error: '#C94A3C',
      info: '#4A7FA9',
      
      accent: {
        cattle: '#8B6F47',
        poultry: '#E89F3C',
        sheep: '#A8B5A3',
        pig: '#D4A5A5',
      },
    },
    // Dark mode
    dark: {
      primary: '#4A9B5C',
      primaryLight: '#6BB57D',
      primaryDark: '#2D7A3E',
      secondary: '#D4A574',
      secondaryLight: '#E8C9A0',
      
      background: '#1C2817',
      surface: '#2A3225',
      surfaceVariant: '#353F30',
      
      text: '#E8EBE4',
      textSecondary: '#B8BDB3',
      textTertiary: '#8A9285',
      
      border: '#3F4A3A',
      borderLight: '#353F30',
      
      success: '#4A9B5C',
      warning: '#E89F3C',
      error: '#E85C4A',
      info: '#5A9FD4',
      
      accent: {
        cattle: '#A88B61',
        poultry: '#F0AF52',
        sheep: '#B8C5B3',
        pig: '#E4B5B5',
      },
    },
  },
  
  spacing: {
    xs: 4,
    sm: 8,
    md: 16,
    lg: 24,
    xl: 32,
    xxl: 40,
  },
  
  borderRadius: {
    sm: 8,
    md: 12,
    lg: 16,
    xl: 24,
    full: 9999,
  },
  
  typography: {
    fontSize: {
      xs: 12,
      sm: 14,
      base: 16,
      lg: 18,
      xl: 20,
      xxl: 24,
      xxxl: 32,
    },
    fontWeight: {
      regular: '400' as const,
      medium: '500' as const,
      semibold: '600' as const,
      bold: '700' as const,
    },
  },
  
  shadows: {
    sm: {
      shadowColor: '#000',
      shadowOffset: { width: 0, height: 1 },
      shadowOpacity: 0.05,
      shadowRadius: 2,
      elevation: 1,
    },
    md: {
      shadowColor: '#000',
      shadowOffset: { width: 0, height: 2 },
      shadowOpacity: 0.08,
      shadowRadius: 4,
      elevation: 3,
    },
    lg: {
      shadowColor: '#000',
      shadowOffset: { width: 0, height: 4 },
      shadowOpacity: 0.1,
      shadowRadius: 8,
      elevation: 5,
    },
  },
} as const;
