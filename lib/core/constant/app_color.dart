import 'package:flutter/material.dart';

class AppColors {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  const AppColors._();

  /// The blue primary color.
  ///
  /// Blue with 100, 200, 300, 400, 500(default), 700, 800, 900 Shade.
  ///
  /// Blue with 8%, 16%, 24%, 32%, 40%, 48% Opacity.
  ///
  /// Call [AppColors.primaryColor.shade100] or [AppColors.primaryColor.opacity8]

  static const AppMaterialColor primaryColor = AppMaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      100: Color(0xFFCFEBFF),
      200: Color(0xFF9ED6FF),
      300: Color(0xFF6EC2FF),
      400: Color(0xFF3DADFF),
      500: Color(_bluePrimaryValue),
      600: Color(0xFF0C8AE5),
      700: Color(0xFF0B82D9),
      800: Color(0xFF0A7ACC),
      900: Color(0xFF0A73BF),
      //* Below section is for opacity
      8: Color(0x140D99FF),
      16: Color(0x290D99FF),
      24: Color(0x3D0D99FF),
      32: Color(0x520D99FF),
      40: Color(0x660D99FF),
      48: Color(0x7A0D99FF),
    },
  );
  static const int _bluePrimaryValue = 0xFF0D99FF;

  /// The teal secondary color.
  ///
  /// teal with 100, 200, 300, 400, 500(default), 700, 800, 900 Shade.
  ///
  /// teal with 8%, 16%, 24%, 32%, 40%, 48% Opacity.
  ///
  /// Call [AppColors.secondaryColor.shade100] or [AppColors.secondaryColor.opacity8]
  static const AppMaterialColor secondaryColor = AppMaterialColor(
    _tealPrimaryValue,
    <int, Color>{
      100: Color(0xFFD3F4F4),
      200: Color(0xFFA7EAE8),
      300: Color(0xFF7CDFDD),
      400: Color(0xFF50D5D1),
      500: Color(_tealPrimaryValue),
      600: Color(0xFF20B6B2),
      700: Color(0xFF1FACA8),
      800: Color(0xFF1DA29E),
      900: Color(0xFF1B9795),
      //* Below section is for opacity
      8: Color(0x1424CAC6),
      16: Color(0x2924CAC6),
      24: Color(0x3D24CAC6),
      32: Color(0x5224CAC6),
      40: Color(0x6624CAC6),
      48: Color(0x7A24CAC6),
    },
  );
  static const int _tealPrimaryValue = 0xFF24CAC6;

  /// The gray color.
  ///
  /// gray with 100, 200, 300, 400, 500(default), 700, 800, 900 Shade.
  ///
  /// gray with 8%, 16%, 24%, 32%, 40%, 48% Opacity.
  ///
  /// Call [AppColors.greyColor.shade100] or [AppColors.greyColor.opacity8]
  static const AppMaterialColor greyColor = AppMaterialColor(
    _greyColorValue,
    <int, Color>{
      100: Color(0xFFF6F6F7),
      200: Color(0xFFDBDADE),
      300: Color(0xFFC9C7CE),
      400: Color(0xFFB7B5BE),
      500: Color(_greyColorValue),
      600: Color(0xFF93909D),
      700: Color(0xFF817D8D),
      800: Color(0xFF6F6B7D),
      900: Color(0xFF5D586C),
      //* Below section is for opacity
      8: Color(0x144B465C),
      16: Color(0x294B465C),
      24: Color(0x3D4B465C),
      32: Color(0x524B465C),
      40: Color(0x664B465C),
      48: Color(0x7A4B465C),
    },
  );
  static const int _greyColorValue = 0xFFA5A2AD;

  /// The green success color.
  ///
  /// green with 100, 200, 300, 400, 500(default), 700, 800, 900 Shade.
  ///
  /// green with 8%, 16%, 24%, 32%, 40%, 48% Opacity.
  ///
  /// Call [AppColors.successColor.shade100] or [AppColors.successColor.opacity8]
  static const AppMaterialColor successColor = AppMaterialColor(
    _greenColorValue,
    <int, Color>{
      100: Color(0xFFD4F4E2),
      200: Color(0xFFA9E9C5),
      300: Color(0xFF7EDDA9),
      400: Color(0xFF53D28C),
      500: Color(_greenColorValue),
      600: Color(0xFF24B364),
      700: Color(0xFF22A95E),
      800: Color(0xFF209F59),
      900: Color(0xFF1E9553),
      //* Below section is for opacity
      8: Color(0x1428C76F),
      16: Color(0x2928C76F),
      24: Color(0x3D28C76F),
      32: Color(0x5228C76F),
      40: Color(0x6628C76F),
      48: Color(0x7A28C76F),
    },
  );
  static const int _greenColorValue = 0xFF28C76F;

  /// The red danger color.
  ///
  /// red with 100, 200, 300, 400, 500(default), 700, 800, 900 Shade.
  ///
  /// red with 8%, 16%, 24%, 32%, 40%, 48% Opacity.
  ///
  /// Call [AppColors.dangerColor.shade100] or [AppColors.dangerColor.opacity8]
  static const AppMaterialColor dangerColor = AppMaterialColor(
    _redColorValue,
    <int, Color>{
      100: Color(0xFFFBDDDD),
      200: Color(0xFFF7BBBB),
      300: Color(0xFFF29899),
      400: Color(0xFFEE7677),
      500: Color(_redColorValue),
      600: Color(0xFFD34C4C),
      700: Color(0xFFC74748),
      800: Color(0xFFBB4344),
      900: Color(0xFFAF3F40),
      //* Below section is for opacity
      8: Color(0x14EA5455),
      16: Color(0x29EA5455),
      24: Color(0x3DEA5455),
      32: Color(0x52EA5455),
      40: Color(0x66EA5455),
      48: Color(0x7AEA5455),
    },
  );
  static const int _redColorValue = 0xFFEA5455;

  /// The yellow warning color.
  ///
  /// yellow with 100, 200, 300, 400, 500(default), 700, 800, 900 Shade.
  ///
  /// yellow with 8%, 16%, 24%, 32%, 40%, 48% Opacity.
  ///
  /// Call [AppColors.warningColor.shade100] or [AppColors.warningColor.opacity8]
  static const AppMaterialColor warningColor = AppMaterialColor(
    _yellowColorValue,
    <int, Color>{
      100: Color(0xFFFFECD9),
      200: Color(0xFFFFD9B4),
      300: Color(0xFFFFC58E),
      400: Color(0xFFFFB269),
      500: Color(_yellowColorValue),
      600: Color(0xFFE58F3C),
      700: Color(0xFFD98739),
      800: Color(0xFFCC7F36),
      900: Color(0xFFBF7732),
      //* Below section is for opacity
      8: Color(0x14FF9F43),
      16: Color(0x29FF9F43),
      24: Color(0x3DFF9F43),
      32: Color(0x52FF9F43),
      40: Color(0x66FF9F43),
      48: Color(0x7AFF9F43),
    },
  );
  static const int _yellowColorValue = 0xFFFF9F43;

  /// The cyan info color.
  ///
  /// cyan with 100, 200, 300, 400, 500(default), 700, 800, 900 Shade.
  ///
  /// cyan with 8%, 16%, 24%, 32%, 40%, 48% Opacity.
  ///
  /// Call [AppColors.infoColor.shade100] or [AppColors.infoColor.opacity8]
  static const AppMaterialColor infoColor = AppMaterialColor(
    _cyanColorValue,
    <int, Color>{
      100: Color(0xFFCCF5FA),
      200: Color(0xFF99ECF6),
      300: Color(0xFF66E2F1),
      400: Color(0xFF33D9ED),
      500: Color(_cyanColorValue),
      600: Color(0xFF00BAD1),
      700: Color(0xFF00B0C5),
      800: Color(0xFF00A6BA),
      900: Color(0xFF009BAE),
      //* Below section is for opacity
      8: Color(0x1400CFE8),
      16: Color(0x2900CFE8),
      24: Color(0x3D00CFE8),
      32: Color(0x5200CFE8),
      40: Color(0x6600CFE8),
      48: Color(0x7A00CFE8),
    },
  );
  static const int _cyanColorValue = 0xFF00CFE8;

  /// The Purple Other Color color.
  ///
  /// Purple with 100, 200, 300, 400, 500(default), 700, 800, 900 Shade.
  ///
  /// Purple with 8%, 16%, 24%, 32%, 40%, 48% Opacity.
  ///
  /// Call [AppColors.otherColor.shade100] or [AppColors.otherColor.opacity8]
  static const AppMaterialColor otherColor = AppMaterialColor(
    _purpleColorValue,
    <int, Color>{
      100: Color(0xFFEBDEF0),
      200: Color(0xFFD7BDE2),
      300: Color(0xFFC39BD3),
      400: Color(0xFFAF7AC5),
      500: Color(_purpleColorValue),
      600: Color(0xFF8B50A4),
      700: Color(0xFF844C9B),
      800: Color(0xFF7C4792),
      900: Color(0xFF744388),
      //* Below section is for opacity
      8: Color(0x149B59B6),
      16: Color(0x299B59B6),
      24: Color(0x3D9B59B6),
      32: Color(0x529B59B6),
      40: Color(0x669B59B6),
      48: Color(0x7A9B59B6),
    },
  );
  static const int _purpleColorValue = 0xFF9B59B6;

  /// The Light Purple Color color.
  ///
  ///Light Purple with 100, 200, 300, 400, 500(default), 700, 800, 900 Shade.
  ///
  /// Light Purple with 8%, 16%, 24%, 32%, 40%, 48% Opacity.
  ///
  /// Call [AppColors.purpleColor.shade100] or [AppColors.purpleColor.opacity8]
  static const AppMaterialColor purpleColor = AppMaterialColor(
    _lightPurpleColorValue,
    <int, Color>{
      100: Color(0xFFE3E1FC),
      200: Color(0xFFC7C2F9),
      300: Color(0xFFABA4F6),
      400: Color(0xFF8F85F3),
      500: Color(_lightPurpleColorValue),
      600: Color(0xFF675DD8),
      700: Color(0xFF6258CC),
      800: Color(0xFF5C52C0),
      900: Color(0xFF564DB4),
      //* Below section is for opacity
      8: Color(0x147367F0),
      16: Color(0x297367F0),
      24: Color(0x3D7367F0),
      32: Color(0x527367F0),
      40: Color(0x667367F0),
      48: Color(0x7A7367F0),
    },
  );
  static const int _lightPurpleColorValue = 0xFF7367F0;

  /// The Pink Color color.
  ///
  ///Pink with 100, 200, 300, 400, 500(default), 700, 800, 900 Shade.
  ///
  /// Pink with 8%, 16%, 24%, 32%, 40%, 48% Opacity.
  ///
  /// Call [AppColors.pinkColor.shade100] or [AppColors.pinkColor.opacity8]
  static const AppMaterialColor pinkColor = AppMaterialColor(
    _pinkColorValue,
    <int, Color>{
      100: Color(0xFFFAD8E8),
      200: Color(0xFFF6B2D1),
      300: Color(0xFFF18BBA),
      400: Color(0xFFED65A3),
      500: Color(_pinkColorValue),
      600: Color(0xFFD1387E),
      700: Color(0xFFC53577),
      800: Color(0xFFBA3270),
      900: Color(0xFFAE2E69),
      //* Below section is for opacity
      8: Color(0x14E83E8C),
      16: Color(0x29E83E8C),
      24: Color(0x3DE83E8C),
      32: Color(0x52E83E8C),
      40: Color(0x66E83E8C),
      48: Color(0x7AE83E8C),
    },
  );
  static const int _pinkColorValue = 0xFFE83E8C;

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFF0D99FF),
      Color(0xCC0A73BF),
    ],
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFF82868B),
      Color(0xFF9CA0A4),
    ],
  );
  static const LinearGradient successGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFF28C76F),
      Color(0xFF48DA89),
    ],
  );

  static const LinearGradient dangerGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFFEA5455),
      Color(0xFFF08182),
    ],
  );

  static const LinearGradient warningGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFFFF9F43),
      Color(0xFFFFB976),
    ],
  );

  static const LinearGradient infoGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFF00CFE8),
      Color(0xFF1CE7FF),
    ],
  );

  static const LinearGradient primaryLightGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFFE7F5FF),
      Color(0x00FFFFFF),
    ],
  );

  static const LinearGradient secondaryLightGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFFE9FAF9),
      Color(0x00FFFFFF),
    ],
  );
  static const LinearGradient successLightGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFFE9F9F1),
      Color(0x00FFFFFF),
    ],
  );

  static const LinearGradient dangerLightGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFFFDEEEE),
      Color(0x00FFFFFF),
    ],
  );

  static const LinearGradient warningLightGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: [0, 0.65, 1],
    colors: [
      Color(0xFFFDEEEE),
      Color(0x00FFFFFF),
      Color(0x80FFF5E5),
    ],
  );

  static const LinearGradient infoLightGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFFFFF5EC),
      Color(0x00FFFFFF),
    ],
  );

  static const LinearGradient darkPrimaryGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      darkPrimary,
      darkPrimary,
    ],
  );
  static const LinearGradient onlineChartDarkGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFF2F3349),
      Color(0xFF2F3349),
    ],
  );
  static const LinearGradient payoutCardGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFFFFFFFF),
      Color(0xFFF2FBFF),
    ],
  );
  static const LinearGradient payoutCardDarkGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFF25293C),
      Color(0xFF15486D),
    ],
  );
  static const LinearGradient vacancyCardDarkGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      darkCardBackground,
      darkCardBackground,
    ],
  );

  static const Color darkColor = Color(0xFF242745);
  static const Color solidColor = Color(0xFFDFDFE3);
  static const Color background = Color(0xFFF8F7FA);
  static const Color cardColor = Color(0xFFD8D8D8);
  static const Color dividerColor = Color(0xFFDBDADE);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color semiDark = Color(0xFF4B4B4B);
  static const Color facebookColor = Color(0xFF4267B2);
  static const Color twitterColor = Color(0xFF1DA1F2);
  static const Color googleColor = Color(0xFFDB4437);
  static const Color bodyBgColor = Color(0xFFF8F7FA);

  //Below colors are focused for dark theme
  static const Color darkPrimary = Color(0xFF434968);
  static const Color darkSecondary = Color(0xFF25293C);
  static const Color darkHeader = Color(0xFF44475B);
  static const Color darkWhite = Color(0xFFD7D8DE);
  static const Color darkCardBackground = Color(0xFF2F3349);
  static const Color darkBackground = Color(0xFF1F2233);
  static const Color bodydark = Color(0xFFF6F6F7);

  //Below colors are for typography
  static const Color headingTextColor = Color(0xFF5D586C);
  static const Color bodyTextColor = Color(0xFF6F6B7D);
  static const Color mutedTextColor = Color(0xFFA5A2AD);
  static const Color placeholderTextColor = Color(0xFFB7B5BE);

  //Below light colors
  static const Color lightBlue = Color(0xFFECF7FF);
  static const Color lightGray = Color(0xFFF1F0F2);
  static const Color lightTeal = Color(0xFFEDFBFA);
  static const Color lightGreen = Color(0xFFEEFBF3);
  static const Color lightRed = Color(0xFFFDF1F1);
  static const Color lightYellow = Color(0xFFFFF7F0);
  static const Color lightPurple = Color(0xFFF7F2F9);
  static const Color lightPink = Color(0xFFFDF0F6);

  //Below is the shadow of any box
  static const List<BoxShadow> boxShadow = [
    BoxShadow(
      color: Color(0x1A4B465C),
      offset: Offset(0, 4),
      blurRadius: 18,
    )
  ];

  static const List<BoxShadow> darkBoxShadow = [
    BoxShadow(
      color: Color(0x660F1422),
      offset: Offset(0, 4),
      blurRadius: 20,
    )
  ];

  static const List<BoxShadow> buttonShadow = [
    BoxShadow(
      color: Color(0x4DA5A3AE),
      offset: Offset(0, 2),
      blurRadius: 4,
    )
  ];

  static const List<BoxShadow> darkButtonShadow = [
    BoxShadow(
      color: Color(0x660F1422),
      offset: Offset(0, 2),
      blurRadius: 4,
    )
  ];

  static const List<BoxShadow> smallShadow = [
    BoxShadow(
      color: Color(0x4DA5A3AE),
      offset: Offset(0, 2),
      blurRadius: 4,
    )
  ];

  static const List<BoxShadow> darkSmallShadow = [
    BoxShadow(
      color: Color(0x660F1422),
      offset: Offset(0, 2),
      blurRadius: 4,
    )
  ];
  static const List<BoxShadow> mediumShadow = [
    BoxShadow(
      color: Color(0x73A5A3AE),
      offset: Offset(0, 4),
      blurRadius: 16,
    )
  ];

  static const List<BoxShadow> darkMediumShadow = [
    BoxShadow(
      color: Color(0x8C0F1422),
      offset: Offset(0, 4),
      blurRadius: 16,
    )
  ];
  static const List<BoxShadow> largeShadow = [
    BoxShadow(
      color: Color(0x66A5A3AE),
      offset: Offset(0, 10),
      blurRadius: 20,
    )
  ];

  static const List<BoxShadow> darkLargeShadow = [
    BoxShadow(
      color: Color(0x800F1422),
      offset: Offset(0, 10),
      blurRadius: 20,
    )
  ];

  static const List<BoxShadow> modalShadow = [
    BoxShadow(
      color: Color(0x664B465C),
      offset: Offset(0, 5),
      blurRadius: 20,
    )
  ];

  static const List<BoxShadow> darkModalShadow = [
    BoxShadow(
      color: Color(0x660F1422),
      offset: Offset(0, 5),
      blurRadius: 20,
    )
  ];

  static const List<BoxShadow> dropShadow = [
    BoxShadow(
      color: Color(0x407A7A7A),
      offset: Offset(1, 1),
      blurRadius: 4,
    )
  ];

  static const List<AppMaterialColor> primaries = <AppMaterialColor>[
    primaryColor,
    secondaryColor,
    successColor,
    dangerColor,
    warningColor,
    infoColor,
    otherColor,
    purpleColor,
    pinkColor,
  ];
  static const List<AppMaterialColor> primariesList = <AppMaterialColor>[
    secondaryColor,
    successColor,
    dangerColor,
    warningColor,
    infoColor,
    otherColor,
    purpleColor,
    pinkColor,
  ];

  static const List<LinearGradient> lightGradients = <LinearGradient>[
    primaryLightGradient,
    secondaryLightGradient,
    successLightGradient,
    dangerLightGradient,
    warningLightGradient,
    infoLightGradient,
  ];
}

class AppMaterialColor extends ColorSwatch<int> {
  const AppMaterialColor(super.primary, super.swatch);

  Color get shade100 => this[100]!;

  Color get shade200 => this[200]!;

  Color get shade300 => this[300]!;

  Color get shade400 => this[400]!;

  Color get shade500 => this[500]!;

  Color get shade600 => this[600]!;

  Color get shade700 => this[700]!;

  Color get shade800 => this[800]!;

  Color get shade900 => this[900]!;

  Color get opacity8 => this[8]!;

  Color get opacity16 => this[16]!;

  Color get opacity24 => this[24]!;

  Color get opacity32 => this[32]!;

  Color get opacity40 => this[40]!;

  Color get opacity48 => this[48]!;
}
