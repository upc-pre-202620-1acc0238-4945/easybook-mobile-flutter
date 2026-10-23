import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8e4d2f),
      surfaceTint: Color(0xff8e4d2f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdbcd),
      onPrimaryContainer: Color(0xff71361b),
      secondary: Color(0xff77574a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdbcd),
      onSecondaryContainer: Color(0xff5d4034),
      tertiary: Color(0xff675f30),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffefe3a8),
      onTertiaryContainer: Color(0xff4e471b),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff231a16),
      onSurfaceVariant: Color(0xff53443e),
      outline: Color(0xff85736d),
      outlineVariant: Color(0xffd8c2ba),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2a),
      inversePrimary: Color(0xffffb597),
      primaryFixed: Color(0xffffdbcd),
      onPrimaryFixed: Color(0xff360f00),
      primaryFixedDim: Color(0xffffb597),
      onPrimaryFixedVariant: Color(0xff71361b),
      secondaryFixed: Color(0xffffdbcd),
      onSecondaryFixed: Color(0xff2c160c),
      secondaryFixedDim: Color(0xffe7beae),
      onSecondaryFixedVariant: Color(0xff5d4034),
      tertiaryFixed: Color(0xffefe3a8),
      onTertiaryFixed: Color(0xff201c00),
      tertiaryFixedDim: Color(0xffd2c78f),
      onTertiaryFixedVariant: Color(0xff4e471b),
      surfaceDim: Color(0xffe8d6d0),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ec),
      surfaceContainer: Color(0xfffceae4),
      surfaceContainerHigh: Color(0xfff6e4de),
      surfaceContainerHighest: Color(0xfff1dfd9),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5c260c),
      surfaceTint: Color(0xff8e4d2f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa05b3c),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4a3025),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff876658),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3d360b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff766e3d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff170f0c),
      onSurfaceVariant: Color(0xff41332e),
      outline: Color(0xff5f4f49),
      outlineVariant: Color(0xff7b6963),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2a),
      inversePrimary: Color(0xffffb597),
      primaryFixed: Color(0xffa05b3c),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff824427),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff876658),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff6c4e41),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff766e3d),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff5d5528),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd4c3bd),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ec),
      surfaceContainer: Color(0xfff6e4de),
      surfaceContainerHigh: Color(0xffebd9d3),
      surfaceContainerHighest: Color(0xffdfcec8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff4f1c03),
      surfaceTint: Color(0xff8e4d2f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff74381d),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3f261b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff5f4236),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff332c03),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff514a1d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff362924),
      outlineVariant: Color(0xff554640),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2a),
      inversePrimary: Color(0xffffb597),
      primaryFixed: Color(0xff74381d),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff572308),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff5f4236),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff462c21),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff514a1d),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff393308),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc6b5b0),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffffede7),
      surfaceContainer: Color(0xfff1dfd9),
      surfaceContainerHigh: Color(0xffe2d1cb),
      surfaceContainerHighest: Color(0xffd4c3bd),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb597),
      surfaceTint: Color(0xffffb597),
      onPrimary: Color(0xff552106),
      primaryContainer: Color(0xff71361b),
      onPrimaryContainer: Color(0xffffdbcd),
      secondary: Color(0xffe7beae),
      onSecondary: Color(0xff442a1f),
      secondaryContainer: Color(0xff5d4034),
      onSecondaryContainer: Color(0xffffdbcd),
      tertiary: Color(0xffd2c78f),
      onTertiary: Color(0xff373106),
      tertiaryContainer: Color(0xff4e471b),
      onTertiaryContainer: Color(0xffefe3a8),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a110e),
      onSurface: Color(0xfff1dfd9),
      onSurfaceVariant: Color(0xffd8c2ba),
      outline: Color(0xffa08d86),
      outlineVariant: Color(0xff53443e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfd9),
      inversePrimary: Color(0xff8e4d2f),
      primaryFixed: Color(0xffffdbcd),
      onPrimaryFixed: Color(0xff360f00),
      primaryFixedDim: Color(0xffffb597),
      onPrimaryFixedVariant: Color(0xff71361b),
      secondaryFixed: Color(0xffffdbcd),
      onSecondaryFixed: Color(0xff2c160c),
      secondaryFixedDim: Color(0xffe7beae),
      onSecondaryFixedVariant: Color(0xff5d4034),
      tertiaryFixed: Color(0xffefe3a8),
      onTertiaryFixed: Color(0xff201c00),
      tertiaryFixedDim: Color(0xffd2c78f),
      onTertiaryFixedVariant: Color(0xff4e471b),
      surfaceDim: Color(0xff1a110e),
      surfaceBright: Color(0xff423733),
      surfaceContainerLowest: Color(0xff140c09),
      surfaceContainerLow: Color(0xff231a16),
      surfaceContainer: Color(0xff271e1a),
      surfaceContainerHigh: Color(0xff322824),
      surfaceContainerHighest: Color(0xff3d322e),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd3c2),
      surfaceTint: Color(0xffffb597),
      onPrimary: Color(0xff461600),
      primaryContainer: Color(0xffca7e5c),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffed3c3),
      onSecondary: Color(0xff372015),
      secondaryContainer: Color(0xffad897a),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffe9dda3),
      onTertiary: Color(0xff2c2600),
      tertiaryContainer: Color(0xff9b915e),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a110e),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffeed8cf),
      outline: Color(0xffc2aea6),
      outlineVariant: Color(0xff9f8c85),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfd9),
      inversePrimary: Color(0xff72371c),
      primaryFixed: Color(0xffffdbcd),
      onPrimaryFixed: Color(0xff250800),
      primaryFixedDim: Color(0xffffb597),
      onPrimaryFixedVariant: Color(0xff5c260c),
      secondaryFixed: Color(0xffffdbcd),
      onSecondaryFixed: Color(0xff1f0c04),
      secondaryFixedDim: Color(0xffe7beae),
      onSecondaryFixedVariant: Color(0xff4a3025),
      tertiaryFixed: Color(0xffefe3a8),
      onTertiaryFixed: Color(0xff151100),
      tertiaryFixedDim: Color(0xffd2c78f),
      onTertiaryFixedVariant: Color(0xff3d360b),
      surfaceDim: Color(0xff1a110e),
      surfaceBright: Color(0xff4d423e),
      surfaceContainerLowest: Color(0xff0d0604),
      surfaceContainerLow: Color(0xff251c18),
      surfaceContainer: Color(0xff302622),
      surfaceContainerHigh: Color(0xff3b302c),
      surfaceContainerHighest: Color(0xff463b37),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffece5),
      surfaceTint: Color(0xffffb597),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffb08e),
      onPrimaryContainer: Color(0xff1b0500),
      secondary: Color(0xffffece5),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffe2baaa),
      onSecondaryContainer: Color(0xff180602),
      tertiary: Color(0xfffdf1b5),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffcec38b),
      onTertiaryContainer: Color(0xff0e0b00),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff1a110e),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffece5),
      outlineVariant: Color(0xffd4beb6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfd9),
      inversePrimary: Color(0xff72371c),
      primaryFixed: Color(0xffffdbcd),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb597),
      onPrimaryFixedVariant: Color(0xff250800),
      secondaryFixed: Color(0xffffdbcd),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffe7beae),
      onSecondaryFixedVariant: Color(0xff1f0c04),
      tertiaryFixed: Color(0xffefe3a8),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffd2c78f),
      onTertiaryFixedVariant: Color(0xff151100),
      surfaceDim: Color(0xff1a110e),
      surfaceBright: Color(0xff594e49),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff271e1a),
      surfaceContainer: Color(0xff382e2a),
      surfaceContainerHigh: Color(0xff443935),
      surfaceContainerHighest: Color(0xff504440),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
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


  List<ExtendedColor> get extendedColors => [
  ];
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
