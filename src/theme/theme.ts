import { createTheme } from "@mui/material";
import { themeBaseDefaults } from "./themeDefaults";
import { Opacity } from "@mui/icons-material";

const fontSize = (from: number, to: number) =>
  breakpointVal("fontSize", from, to, themeBaseDefaults.breakpoints.values);

export const theme = createTheme({
  palette: {
    primary: {
      main: "#2C65BB",
      contrastText: "#ffffff",
      dark: "#2C65BB",
    },

    secondary: {
      main: "#75E762",
      light: "#d1e4ff",
      contrastText: "#333",
    },
  },
  ...themeBaseDefaults,
  typography: {
    fontFamily:
      "var(--font-rubik), sans-serif, -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji",
    h1: {
      ...fontSize(26, 60),
      fontWeight: 700,
      fontVariationSettings: "'wght' 660",
      lineHeight: 1.22,
    },
    h2: {
      ...fontSize(25, 40),
      fontWeight: 700,
      fontVariationSettings: "'wght' 630",
      lineHeight: 1.35,
    },
    h3: {
      ...fontSize(22, 30),
      fontWeight: 700,
      fontVariationSettings: "'wght' 660",
      lineHeight: 1.55,
    },
    h4: {
      ...fontSize(18, 26),
      fontWeight: 550,
      fontVariationSettings: "'wght' 550",
      lineHeight: 1.55,
    },
    h5: {
      ...fontSize(17, 20),
      fontWeight: 650,
      fontVariationSettings: "'wght' 650",
      lineHeight: 1.55,
    },
    h6: {
      ...fontSize(17, 20),
      fontWeight: 500,
      fontVariationSettings: "'wght' 510",
      lineHeight: 1.8,
    },
    subtitle1: {
      ...fontSize(16, 19),
      fontWeight: 450,
      fontVariationSettings: "'wght' 460",
      lineHeight: 1.7,
    },
    fontWeightBold: 600,
    body1: {
      ...fontSize(18, 26),
      lineHeight: 1.7,
    },
    subtitle2: {
      ...fontSize(14, 16),
      fontWeight: 500,
      fontVariationSettings: "'wght' 520",
      lineHeight: 1.7,
    },
    body2: {
      ...fontSize(13, 15),
      lineHeight: 1.7,
    },
    caption: {
      // https://web.dev/font-size/#how-the-lighthouse-font-size-audit-fails
      ...fontSize(12, 13),
    },
    button: {},
    overline: {
      // https://web.dev/font-size/#how-the-lighthouse-font-size-audit-fails
      ...fontSize(12, 14),
      fontWeight: 500,
      letterSpacing: 1,
      lineHeight: 1.2,
      textTransform: "uppercase",
    },
  },

  spacings: {
    xxs: responsiveVal(10, 16),
    xs: responsiveVal(12, 20),
    sm: responsiveVal(14, 30),
    md: responsiveVal(16, 50),
    lg: responsiveVal(24, 80),
    xl: responsiveVal(40, 100),
    xxl: responsiveVal(80, 160),
  },

  components: {
    MuiAlert: {
      styleOverrides: {
        root: {
          alignItems: "center",
        },
      },
    },

    MuiButton: {
      styleOverrides: {
        root: {
          ...fontSize(20, 23),
          textTransform: "none",
        },

        containedPrimary: {
          background: "linear-gradient(135deg, #6a11cb 0%, #2575fc 100%)",
          textShadow: "0 0 20px #fff, 0 0 30px #fff",

          "&.Mui-disabled": {
            color: "#FFF",
            opacity: 0.5,
          },
        },
      },
      variants: [
        {
          props: { size: "extraSmall" },
          style: { ...fontSize(15, 20) },
        },
      ],
    },
  },
});

type BreakpointStyles = {
  [key: string]: {
    [property: string]: string;
  };
};

export function breakpointVal(
  property: string,
  min: number,
  max: number,
  breakpointsObject: Record<string, number>
): BreakpointStyles {
  const minSize = 320;
  const breakpoints = Object.values(breakpointsObject);
  const spread = breakpoints[breakpoints.length - 1] - minSize;

  const entries: BreakpointStyles = {};

  breakpoints.forEach((breakpoint, index) => {
    const between = (breakpoint + (breakpoints[index + 1] ?? breakpoint)) / 2;
    const size = Math.max(
      min,
      ((between - minSize) / spread) * (max - min) + min
    );
    const value = `${Math.round(size * 100) / 100}px`;

    if (breakpoint) {
      entries[`@media (min-width: ${breakpoint}px)`] = { [property]: value };
    } else {
      entries[property] = { [property]: value };
    }
  });

  return entries;
}

/**
 * This will create a css value that sizes based on the viewport width.
 *
 * E.g.: `responsiveVal(16, 22)` -> Will render 16px at 320px window width, 22 ad 1280 window width
 */
export function responsiveVal(
  min: number,
  max: number,
  maxBreakpoint = 1280
): `max(${number}px, min(${string}, ${number}px))` {
  const round = (x: number, n: number): number =>
    Math.round(x * 10 ** n) / 10 ** n;

  const minBreakpoint = 320;
  const growth = (max - min) / (maxBreakpoint - minBreakpoint);
  const base = round(min - growth * minBreakpoint, 2);
  const vsize = round(growth * 100, 2);

  const calc = `(${base}px + ${vsize}vw)`;
  return `max(${min}px, min(${calc}, ${max}px))`;
}

declare module "@mui/material/Button" {
  interface ButtonPropsSizeOverrides {
    extraSmall: true;
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
}
