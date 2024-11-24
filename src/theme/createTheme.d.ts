export {};

declare module "@mui/material/styles/createPalette" {
  interface TypeBackground {
    image: string;
  }
}

declare module "@mui/material/styles/createTheme" {
  interface ThemeOptions {
    spacings: {
      xxs: string;
      xs: string;
      sm: string;
      md: string;
      lg: string;
      xl: string;
      xxl: string;
    };
  }
  interface Theme {
    spacings: {
      xxs: string;
      xs: string;
      sm: string;
      md: string;
      lg: string;
      xl: string;
      xxl: string;
    };
    page: {
      horizontal: string | number;
      vertical: string | number;
    };
    appShell: {
      headerHeightSm: string;
      headerHeightMd: string;
      appBarHeightMd: string;
      appBarInnerHeightMd: string;
    };

    shape: { borderRadius: number };
  }
}
