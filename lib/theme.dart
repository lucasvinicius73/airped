import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff00629e),
      surfaceTint: Color(0xff00629e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff72b6f7),
      onPrimaryContainer: Color(0xff002743),
      secondary: Color(0xff004d8a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff1c72c2),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff705d00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdd5d),
      onTertiaryContainer: Color(0xff544500),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff8f9ff),
      onBackground: Color(0xff191c20),
      surface: Color(0xfff8f9ff),
      onSurface: Color(0xff191c20),
      surfaceVariant: Color(0xffdde3ed),
      onSurfaceVariant: Color(0xff414750),
      outline: Color(0xff717881),
      outlineVariant: Color(0xffc0c7d1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3135),
      inverseOnSurface: Color(0xffeff1f6),
      inversePrimary: Color(0xff99cbff),
      primaryFixed: Color(0xffcfe5ff),
      onPrimaryFixed: Color(0xff001d34),
      primaryFixedDim: Color(0xff99cbff),
      onPrimaryFixedVariant: Color(0xff004a78),
      secondaryFixed: Color(0xffd3e4ff),
      onSecondaryFixed: Color(0xff001c38),
      secondaryFixedDim: Color(0xffa3c9ff),
      onSecondaryFixedVariant: Color(0xff004882),
      tertiaryFixed: Color(0xffffe175),
      onTertiaryFixed: Color(0xff221b00),
      tertiaryFixedDim: Color(0xffeac310),
      onTertiaryFixedVariant: Color(0xff554500),
      surfaceDim: Color(0xffd8dadf),
      surfaceBright: Color(0xfff8f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3f9),
      surfaceContainer: Color(0xffeceef3),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe1e2e8),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff004672),
      surfaceTint: Color(0xff00629e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2d79b6),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff00447b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff1c72c2),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff504200),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff8a7300),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff8f9ff),
      onBackground: Color(0xff191c20),
      surface: Color(0xfff8f9ff),
      onSurface: Color(0xff191c20),
      surfaceVariant: Color(0xffdde3ed),
      onSurfaceVariant: Color(0xff3d434c),
      outline: Color(0xff596069),
      outlineVariant: Color(0xff747b85),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3135),
      inverseOnSurface: Color(0xffeff1f6),
      inversePrimary: Color(0xff99cbff),
      primaryFixed: Color(0xff2d79b6),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00609a),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff2477c7),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff005da6),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff8a7300),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff6e5a00),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd8dadf),
      surfaceBright: Color(0xfff8f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3f9),
      surfaceContainer: Color(0xffeceef3),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe1e2e8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff00243e),
      surfaceTint: Color(0xff00629e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004672),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff002344),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff00447b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2a2100),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff504200),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff8f9ff),
      onBackground: Color(0xff191c20),
      surface: Color(0xfff8f9ff),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffdde3ed),
      onSurfaceVariant: Color(0xff1e242c),
      outline: Color(0xff3d434c),
      outlineVariant: Color(0xff3d434c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3135),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffe0edff),
      primaryFixed: Color(0xff004672),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff002f4f),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff00447b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff002e55),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff504200),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff362c00),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd8dadf),
      surfaceBright: Color(0xfff8f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3f9),
      surfaceContainer: Color(0xffeceef3),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe1e2e8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff9acbff),
      surfaceTint: Color(0xff99cbff),
      onPrimary: Color(0xff003355),
      primaryContainer: Color(0xff5fa3e3),
      onPrimaryContainer: Color(0xff001224),
      secondary: Color(0xffa3c9ff),
      onSecondary: Color(0xff00315c),
      secondaryContainer: Color(0xff0068b7),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff3b2f00),
      tertiaryContainer: Color(0xfff9d126),
      onTertiaryContainer: Color(0xff4c3e00),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff101417),
      onBackground: Color(0xffe1e2e8),
      surface: Color(0xff101417),
      onSurface: Color(0xffe1e2e8),
      surfaceVariant: Color(0xff414750),
      onSurfaceVariant: Color(0xffc0c7d1),
      outline: Color(0xff8b919b),
      outlineVariant: Color(0xff414750),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2e8),
      inverseOnSurface: Color(0xff2e3135),
      inversePrimary: Color(0xff00629e),
      primaryFixed: Color(0xffcfe5ff),
      onPrimaryFixed: Color(0xff001d34),
      primaryFixedDim: Color(0xff99cbff),
      onPrimaryFixedVariant: Color(0xff004a78),
      secondaryFixed: Color(0xffd3e4ff),
      onSecondaryFixed: Color(0xff001c38),
      secondaryFixedDim: Color(0xffa3c9ff),
      onSecondaryFixedVariant: Color(0xff004882),
      tertiaryFixed: Color(0xffffe175),
      onTertiaryFixed: Color(0xff221b00),
      tertiaryFixedDim: Color(0xffeac310),
      onTertiaryFixedVariant: Color(0xff554500),
      surfaceDim: Color(0xff101417),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0e12),
      surfaceContainerLow: Color(0xff191c20),
      surfaceContainer: Color(0xff1d2024),
      surfaceContainerHigh: Color(0xff272a2e),
      surfaceContainerHighest: Color(0xff323539),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffa2cfff),
      surfaceTint: Color(0xff99cbff),
      onPrimary: Color(0xff00182b),
      primaryContainer: Color(0xff5fa3e3),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffaacdff),
      onSecondary: Color(0xff00172f),
      secondaryContainer: Color(0xff4a93e5),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff3b2f00),
      tertiaryContainer: Color(0xfff9d126),
      onTertiaryContainer: Color(0xff271f00),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101417),
      onBackground: Color(0xffe1e2e8),
      surface: Color(0xff101417),
      onSurface: Color(0xfffafaff),
      surfaceVariant: Color(0xff414750),
      onSurfaceVariant: Color(0xffc5cbd5),
      outline: Color(0xff9da3ad),
      outlineVariant: Color(0xff7d848d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2e8),
      inverseOnSurface: Color(0xff272a2e),
      inversePrimary: Color(0xff004b7a),
      primaryFixed: Color(0xffcfe5ff),
      onPrimaryFixed: Color(0xff001223),
      primaryFixedDim: Color(0xff99cbff),
      onPrimaryFixedVariant: Color(0xff00395e),
      secondaryFixed: Color(0xffd3e4ff),
      onSecondaryFixed: Color(0xff001227),
      secondaryFixedDim: Color(0xffa3c9ff),
      onSecondaryFixedVariant: Color(0xff003766),
      tertiaryFixed: Color(0xffffe175),
      onTertiaryFixed: Color(0xff161100),
      tertiaryFixedDim: Color(0xffeac310),
      onTertiaryFixedVariant: Color(0xff423500),
      surfaceDim: Color(0xff101417),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0e12),
      surfaceContainerLow: Color(0xff191c20),
      surfaceContainer: Color(0xff1d2024),
      surfaceContainerHigh: Color(0xff272a2e),
      surfaceContainerHighest: Color(0xff323539),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffafaff),
      surfaceTint: Color(0xff99cbff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffa2cfff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffbfaff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffaacdff),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfff9d126),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101417),
      onBackground: Color(0xffe1e2e8),
      surface: Color(0xff101417),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff414750),
      onSurfaceVariant: Color(0xfffafaff),
      outline: Color(0xffc5cbd5),
      outlineVariant: Color(0xffc5cbd5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2e8),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff002c4b),
      primaryFixed: Color(0xffd7e8ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffa2cfff),
      onPrimaryFixedVariant: Color(0xff00182b),
      secondaryFixed: Color(0xffdae8ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffaacdff),
      onSecondaryFixedVariant: Color(0xff00172f),
      tertiaryFixed: Color(0xffffe68f),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffeec818),
      onTertiaryFixedVariant: Color(0xff1c1600),
      surfaceDim: Color(0xff101417),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0e12),
      surfaceContainerLow: Color(0xff191c20),
      surfaceContainer: Color(0xff1d2024),
      surfaceContainerHigh: Color(0xff272a2e),
      surfaceContainerHighest: Color(0xff323539),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
