import 'package:dev/core/constant/app_color.dart';
import 'package:flutter/material.dart';

@immutable
class ColorExtensions extends ThemeExtension<ColorExtensions> {
  //
  const ColorExtensions({
    //Colors
    required this.primary,
    required this.secondary,
    required this.card,
    required this.headingTextColor,
    required this.headerColor,
    required this.navigationTextColor,
    required this.appbarColor,
    required this.primaryWhiteColor,
    required this.whitePrimaryColor,
    required this.bodyTextColor,
    required this.background,
    required this.placeholderBorderColor,
    required this.lighBlue,
    required this.prograssBackgroundColor,
    required this.stepperBorderColor,
    required this.secondaryDividerColor,
    required this.dialogBgColor,
    required this.chartProgressColor,
    required this.timelineColor,
    required this.gray16primary24,
    required this.white70primary700,
    required this.white20prinmary50,
    required this.purple100purple400,
    required this.success200success700,
    required this.others100others400,
    required this.white20darkHeader,
    required this.bodyBackground,
    required this.bodyTextWhite,
    required this.popularJobsColor,
    required this.featuredCardColor,
    required this.governmentJobCardColor,
    required this.featuredBorderColor,
    required this.popularJobsBorderColor,
    required this.governmentJobBorderColor,
    required this.govJobIconColor,
    required this.featureJobIconColor,
    required this.popularJobIconColor,
    required this.govJobStatsColor,
    required this.featureJobStatsColor,
    required this.popularJobStatsColor,
    required this.lokingForJobProgrssColor,
    required this.newProfileProgrssColor,
    required this.whiteAndPlaceHolderColor,
    required this.gray16Success16Color,
    required this.gray16purple16Color,
    required this.primary100Primary900,
    required this.success400And900,
    required this.danger400And900,
    required this.warning400And900,
    required this.whiteBlack,
    required this.callUsBackColor,
    required this.primary200Primary900,
    required this.purple200purple900,
    required this.other200other900,
    required this.cardBgColor1,
    required this.cardBgColor2,
    required this.cardBgColor3,
    required this.gradientFirstColor,
    required this.gradientSecondColor,
    required this.gradientFirst1Color,
    required this.gradientSecond1Color,
    required this.gradientFirst2Color,
    required this.gradientSecond2Color,
    required this.landing1ShadowColor,
    required this.landing2ShadowColor,
    required this.landing3ShadowColor,
    required this.primary500primary300,
    required this.purple500purple300,
    required this.other500other300,
    required this.primary400primary500,
    required this.primary700primary300,
    required this.purple400purple500,
    required this.purple700purple300,
    required this.other400other500,
    required this.other700other300,
    required this.authBackColor,
    required this.refCardColor,
    required this.blackWhite,

    //Gradients
    required this.primaryGradient,
    required this.secondaryLightGradient,
    required this.primaryLightGradient,
    required this.vacancyCardGradient,
    required this.warningLightGradient,
    required this.dangerLightGradient,
    required this.payoutCardGradient,
    required this.lightGradients,

    //Shadows
    required this.boxShadow,
    required this.buttonShadow,
    required this.smallShadow,
    required this.mediumShadow,
    required this.largeShadow,
    required this.modalShadow,

    //image paths
    required this.jobdeskLogoPath,
    required this.splashAnimationPath,
    required this.avatarImagePath,
    required this.profilePlaceholderPath,
    required this.profilePlaceholder2Path,
    required this.profilePlaceholderImagePath,
    required this.employeeTopImagePath,
    required this.detailsCoverImagePath,
    required this.landingPageBgImage,
    required this.landingPageCandidateImage,
    required this.landingPageCompanyImage,
    required this.landingPagerecruiterImage,
    required this.bdlandingPageCandidateImage,
    required this.bdlandingPageCompanyImage,
    required this.bdlandingPagerecruiterImage,
    required this.gblandingPageCandidateImage,
    required this.gblandingPageCompanyImage,
    required this.gblandingPagerecruiterImage,
    required this.mylandingPageCandidateImage,
    required this.mylandingPageCompanyImage,
    required this.mylandingPagerecruiterImage,

    //animation
    required this.clockWorking,
    required this.vacancyPublishing,
    required this.vacancyUnpublishing,

    //Opacity value
    required this.refferTopImageOpacity,
  });

  //Colors
  final Color primary;
  final Color card;
  final Color secondary;
  final Color headingTextColor;
  final Color headerColor;
  final Color navigationTextColor;
  final Color appbarColor;
  final Color primaryWhiteColor;
  final Color whitePrimaryColor;
  final Color bodyTextColor;
  final Color background;
  final Color placeholderBorderColor;
  final Color lighBlue;
  final Color prograssBackgroundColor;
  final Color stepperBorderColor;
  final Color secondaryDividerColor;
  final Color dialogBgColor;
  final Color chartProgressColor;
  final Color timelineColor;
  final Color gray16primary24;
  final Color white70primary700;
  final Color white20prinmary50;
  final Color purple100purple400;
  final Color success200success700;
  final Color others100others400;
  final Color white20darkHeader;
  final Color bodyBackground;
  final Color bodyTextWhite;
  final Color popularJobsColor;
  final Color featuredCardColor;
  final Color governmentJobCardColor;
  final Color popularJobsBorderColor;
  final Color featuredBorderColor;
  final Color governmentJobBorderColor;
  final Color govJobIconColor;
  final Color featureJobIconColor;
  final Color popularJobIconColor;
  final Color govJobStatsColor;
  final Color featureJobStatsColor;
  final Color popularJobStatsColor;
  final Color lokingForJobProgrssColor;
  final Color newProfileProgrssColor;
  final Color whiteAndPlaceHolderColor;
  final Color gray16Success16Color;
  final Color gray16purple16Color;
  final Color primary100Primary900;
  final Color success400And900;
  final Color danger400And900;
  final Color warning400And900;
  final Color whiteBlack;
  final Color callUsBackColor;
  final Color primary200Primary900;
  final Color purple200purple900;
  final Color other200other900;
  final Color cardBgColor1;
  final Color cardBgColor2;
  final Color cardBgColor3;
  final Color gradientFirstColor;
  final Color gradientSecondColor;
  final Color gradientFirst1Color;
  final Color gradientSecond1Color;
  final Color gradientFirst2Color;
  final Color gradientSecond2Color;
  final Color landing1ShadowColor;
  final Color landing2ShadowColor;
  final Color landing3ShadowColor;
  final Color primary500primary300;
  final Color purple500purple300;
  final Color other500other300;
  final Color primary400primary500;
  final Color primary700primary300;
  final Color purple400purple500;
  final Color purple700purple300;
  final Color other400other500;
  final Color other700other300;
  final Color authBackColor;
  final Color refCardColor;
  final Color blackWhite;

  //Gradients
  final LinearGradient primaryGradient;
  final LinearGradient secondaryLightGradient;
  final LinearGradient primaryLightGradient;
  final LinearGradient vacancyCardGradient;
  final LinearGradient warningLightGradient;
  final LinearGradient dangerLightGradient;
  final LinearGradient payoutCardGradient;
  final List<LinearGradient> lightGradients;

  //Shadows
  final List<BoxShadow> boxShadow;
  final List<BoxShadow> buttonShadow;
  final List<BoxShadow> smallShadow;
  final List<BoxShadow> mediumShadow;
  final List<BoxShadow> largeShadow;
  final List<BoxShadow> modalShadow;

  //image paths
  final String jobdeskLogoPath;
  final String splashAnimationPath;
  final String avatarImagePath;
  final String profilePlaceholderPath;
  final String profilePlaceholder2Path;
  final String profilePlaceholderImagePath;
  final String employeeTopImagePath;
  final String detailsCoverImagePath;
  final String landingPageBgImage;
  final String landingPageCandidateImage;
  final String landingPageCompanyImage;
  final String landingPagerecruiterImage;
  final String bdlandingPageCandidateImage;
  final String bdlandingPageCompanyImage;
  final String bdlandingPagerecruiterImage;
  final String gblandingPageCandidateImage;
  final String gblandingPageCompanyImage;
  final String gblandingPagerecruiterImage;
  final String mylandingPageCandidateImage;
  final String mylandingPageCompanyImage;
  final String mylandingPagerecruiterImage;

  //animation paths
  final String clockWorking;
  final String vacancyPublishing;
  final String vacancyUnpublishing;

  //Opacity value
  final double refferTopImageOpacity;

  @override
  ThemeExtension<ColorExtensions> copyWith({
    //Colors
    Color? primary,
    Color? secondary,
    Color? card,
    Color? headingTextColor,
    Color? headerColor,
    Color? navigationTextColor,
    Color? appbarColor,
    Color? primaryWhiteColor,
    Color? whitePrimaryColor,
    Color? bodyTextColor,
    Color? background,
    Color? placeholderBorderColor,
    Color? lighBlue,
    Color? prograssBackgroundColor,
    Color? stepperBorderColor,
    Color? secondaryDividerColor,
    Color? dialogBgColor,
    Color? chartProgressColor,
    Color? timelineColor,
    Color? gray16primary24,
    Color? white70primary700,
    Color? white20prinmary50,
    Color? purple100purple400,
    Color? success200success700,
    Color? others100others400,
    Color? white20darkHeader,
    Color? bodyTextWhite,
    Color? bodyBackground,
    Color? bodyMediumWhite,
    Color? popularJobsColor,
    Color? featuredCardColor,
    Color? governmentJobCardColor,
    Color? popularJobsBorderColor,
    Color? featuredBorderColor,
    Color? governmentJobBorderColor,
    Color? govJobIconColor,
    Color? featureJobIconColor,
    Color? popularJobIconColor,
    Color? govJobStatsColor,
    Color? featureJobStatsColor,
    Color? popularJobStatsColor,
    Color? lokingForJobProgrssColor,
    Color? newProfileProgrssColor,
    Color? whiteAndPlaceHolderColor,
    Color? gray16Success16Color,
    Color? gray16purple16Color,
    Color? primary100Primary900,
    Color? success400And900,
    Color? danger400And900,
    Color? warning400And900,
    Color? whiteBlack,
    Color? callUsBackColor,
    Color? primary200Primary900,
    Color? purple200purple900,
    Color? other200other900,
    Color? cardBgColor1,
    Color? cardBgColor2,
    Color? cardBgColor3,
    Color? gradientFirstColor,
    Color? gradientSecondColor,
    Color? gradientFirst1Color,
    Color? gradientSecond1Color,
    Color? gradientFirst2Color,
    Color? gradientSecond2Color,
    Color? landing1ShadowColor,
    Color? landing2ShadowColor,
    Color? landing3ShadowColor,
    Color? primary500primary300,
    Color? purple500purple300,
    Color? other500other300,
    Color? primary400primary500,
    Color? primary700primary300,
    Color? purple400purple500,
    Color? purple700purple300,
    Color? other400other500,
    Color? other700other300,
    Color? authBackColor,
    Color? refCardColor,
    Color? blackWhite,

    //Gradients
    LinearGradient? primaryGradient,
    LinearGradient? secondaryLightGradient,
    LinearGradient? primaryLightGradient,
    LinearGradient? vacancyCardGradient,
    LinearGradient? warningLightGradient,
    LinearGradient? dangerLightGradient,
    LinearGradient? payoutCardGradient,
    List<LinearGradient>? lightGradients,

    //Shadows
    List<BoxShadow>? boxShadow,
    List<BoxShadow>? buttonShadow,
    List<BoxShadow>? smallShadow,
    List<BoxShadow>? mediumShadow,
    List<BoxShadow>? largeShadow,
    List<BoxShadow>? modalShadow,

    //image paths
    String? jobdeskLogoPath,
    String? splashAnimationPath,
    String? avatarImagePath,
    String? profilePlaceholderPath,
    String? profilePlaceholder2Path,
    String? profilePlaceholderImagePath,
    String? employeeTopImagePath,
    String? detailsCoverImagePath,
    String? landingPageBgImage,
    String? landingPageImage,
    String? landingPageCandidateImage,
    String? landingPageCompanyImage,
    String? landingPagerecruiterImage,
    String? bdlandingPageCandidateImage,
    String? bdlandingPageCompanyImage,
    String? bdlandingPagerecruiterImage,
    String? gblandingPageCandidateImage,
    String? gblandingPageCompanyImage,
    String? gblandingPagerecruiterImage,
    String? mylandingPageCandidateImage,
    String? mylandingPageCompanyImage,
    String? mylandingPagerecruiterImage,

    //animation paths
    String? clockWorking,
    String? vacancyPublishing,
    String? vacancyUnpublishing,

    //Opacity value
    double? refferTopImageOpacity,
  }) {
    return ColorExtensions(
      //Colors
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      card: card ?? this.card,
      headingTextColor: headingTextColor ?? this.headingTextColor,
      headerColor: headerColor ?? this.headerColor,
      navigationTextColor: navigationTextColor ?? this.navigationTextColor,
      appbarColor: appbarColor ?? this.appbarColor,
      primaryWhiteColor: primaryWhiteColor ?? this.primaryWhiteColor,
      whitePrimaryColor: whitePrimaryColor ?? this.whitePrimaryColor,
      bodyTextColor: bodyTextColor ?? this.bodyTextColor,
      background: background ?? this.background,
      placeholderBorderColor:
          placeholderBorderColor ?? this.placeholderBorderColor,
      lighBlue: lighBlue ?? this.lighBlue,
      prograssBackgroundColor:
          prograssBackgroundColor ?? this.prograssBackgroundColor,
      stepperBorderColor: stepperBorderColor ?? this.stepperBorderColor,
      secondaryDividerColor:
          secondaryDividerColor ?? this.secondaryDividerColor,
      dialogBgColor: dialogBgColor ?? this.dialogBgColor,
      chartProgressColor: chartProgressColor ?? this.chartProgressColor,
      timelineColor: timelineColor ?? this.timelineColor,
      gray16primary24: gray16primary24 ?? this.gray16primary24,
      white70primary700: white70primary700 ?? this.white70primary700,
      white20prinmary50: white20prinmary50 ?? this.white20prinmary50,
      purple100purple400: purple100purple400 ?? this.purple100purple400,
      success200success700: success200success700 ?? this.success200success700,
      others100others400: others100others400 ?? this.others100others400,
      white20darkHeader: white20darkHeader ?? this.white20darkHeader,
      bodyBackground: bodyBackground ?? this.bodyBackground,
      bodyTextWhite: bodyTextWhite ?? this.bodyTextWhite,
      popularJobsColor: popularJobsColor ?? this.popularJobsColor,
      featuredCardColor: featuredCardColor ?? this.featuredCardColor,
      governmentJobCardColor:
          governmentJobCardColor ?? this.governmentJobCardColor,
      lokingForJobProgrssColor:
          lokingForJobProgrssColor ?? this.lokingForJobProgrssColor,
      whiteAndPlaceHolderColor:
          whiteAndPlaceHolderColor ?? this.whiteAndPlaceHolderColor,
      newProfileProgrssColor:
          newProfileProgrssColor ?? this.newProfileProgrssColor,
      gray16Success16Color: gray16Success16Color ?? this.gray16Success16Color,
      gray16purple16Color: gray16purple16Color ?? this.gray16purple16Color,

      popularJobsBorderColor:
          popularJobsBorderColor ?? this.popularJobsBorderColor,
      featuredBorderColor: featuredBorderColor ?? this.featuredBorderColor,
      governmentJobBorderColor:
          governmentJobBorderColor ?? this.governmentJobBorderColor,

      popularJobIconColor: popularJobIconColor ?? this.popularJobIconColor,
      featureJobIconColor: featureJobIconColor ?? this.featureJobIconColor,
      govJobIconColor: govJobIconColor ?? this.govJobIconColor,

      popularJobStatsColor: popularJobStatsColor ?? this.popularJobStatsColor,
      featureJobStatsColor: featureJobStatsColor ?? this.featureJobStatsColor,
      govJobStatsColor: govJobStatsColor ?? this.govJobStatsColor,
      primary100Primary900: primary100Primary900 ?? this.primary100Primary900,
      success400And900: success400And900 ?? this.success400And900,
      danger400And900: danger400And900 ?? this.danger400And900,
      warning400And900: warning400And900 ?? this.warning400And900,

      whiteBlack: whiteBlack ?? this.whiteBlack,
      callUsBackColor: callUsBackColor ?? this.callUsBackColor,
      primary200Primary900: primary200Primary900 ?? this.primary200Primary900,
      purple200purple900: purple200purple900 ?? this.purple200purple900,
      other200other900: other200other900 ?? this.other200other900,
      cardBgColor1: cardBgColor1 ?? this.cardBgColor1,
      cardBgColor2: cardBgColor2 ?? this.cardBgColor2,
      cardBgColor3: cardBgColor3 ?? this.cardBgColor3,
      gradientFirstColor: gradientFirstColor ?? this.gradientFirstColor,
      gradientSecondColor: gradientSecondColor ?? this.gradientSecondColor,
      gradientFirst1Color: gradientFirst1Color ?? this.gradientFirst1Color,
      gradientSecond1Color: gradientSecondColor ?? this.gradientSecond1Color,
      gradientFirst2Color: gradientFirst2Color ?? this.gradientFirst2Color,
      gradientSecond2Color: gradientSecond2Color ?? this.gradientSecond2Color,
      landing1ShadowColor: landing1ShadowColor ?? this.landing1ShadowColor,
      landing2ShadowColor: landing2ShadowColor ?? this.landing2ShadowColor,
      landing3ShadowColor: landing3ShadowColor ?? this.landing3ShadowColor,
      primary500primary300: primary500primary300 ?? this.primary500primary300,
      purple500purple300: purple500purple300 ?? this.purple500purple300,
      other500other300: other500other300 ?? this.other500other300,
      primary400primary500: primary400primary500 ?? this.primary400primary500,
      primary700primary300: primary700primary300 ?? this.primary700primary300,
      purple400purple500: purple400purple500 ?? this.purple400purple500,
      purple700purple300: purple700purple300 ?? this.purple700purple300,
      other400other500: other400other500 ?? this.other400other500,
      other700other300: other700other300 ?? this.other700other300,
      authBackColor: authBackColor ?? this.authBackColor,
      refCardColor: refCardColor ?? this.refCardColor,
      blackWhite: blackWhite ?? this.blackWhite,

      //Gradients
      primaryGradient: primaryGradient ?? this.primaryGradient,
      secondaryLightGradient:
          secondaryLightGradient ?? this.secondaryLightGradient,
      primaryLightGradient: primaryLightGradient ?? this.primaryLightGradient,
      vacancyCardGradient: vacancyCardGradient ?? this.vacancyCardGradient,
      warningLightGradient: warningLightGradient ?? this.warningLightGradient,
      dangerLightGradient: dangerLightGradient ?? this.dangerLightGradient,
      payoutCardGradient: payoutCardGradient ?? this.payoutCardGradient,
      lightGradients: lightGradients ?? this.lightGradients,

      //Shadows
      boxShadow: boxShadow ?? this.boxShadow,
      buttonShadow: buttonShadow ?? this.buttonShadow,
      smallShadow: smallShadow ?? this.smallShadow,
      mediumShadow: mediumShadow ?? this.mediumShadow,
      largeShadow: largeShadow ?? this.largeShadow,
      modalShadow: modalShadow ?? this.modalShadow,

      //image paths
      jobdeskLogoPath: jobdeskLogoPath ?? this.jobdeskLogoPath,
      splashAnimationPath: splashAnimationPath ?? this.splashAnimationPath,
      avatarImagePath: avatarImagePath ?? this.avatarImagePath,
      profilePlaceholderPath:
          profilePlaceholderPath ?? this.profilePlaceholderPath,
      profilePlaceholder2Path:
          profilePlaceholder2Path ?? this.profilePlaceholder2Path,
      profilePlaceholderImagePath:
          profilePlaceholderImagePath ?? this.profilePlaceholderImagePath,
      employeeTopImagePath: employeeTopImagePath ?? this.employeeTopImagePath,
      detailsCoverImagePath:
          detailsCoverImagePath ?? this.detailsCoverImagePath,
      landingPageBgImage: landingPageBgImage ?? this.landingPageBgImage,
      landingPageCandidateImage:
          landingPageCandidateImage ?? this.landingPageCandidateImage,
      landingPageCompanyImage:
          landingPageCompanyImage ?? this.landingPageCompanyImage,
      landingPagerecruiterImage:
          landingPagerecruiterImage ?? this.landingPagerecruiterImage,
      bdlandingPageCandidateImage:
          bdlandingPageCandidateImage ?? this.bdlandingPageCandidateImage,
      bdlandingPageCompanyImage:
          bdlandingPageCompanyImage ?? this.bdlandingPageCompanyImage,
      bdlandingPagerecruiterImage:
          bdlandingPagerecruiterImage ?? this.bdlandingPagerecruiterImage,
      gblandingPageCandidateImage:
          gblandingPageCandidateImage ?? this.gblandingPageCandidateImage,
      gblandingPageCompanyImage:
          gblandingPageCompanyImage ?? this.gblandingPageCompanyImage,
      gblandingPagerecruiterImage:
          gblandingPagerecruiterImage ?? this.gblandingPagerecruiterImage,
      mylandingPageCandidateImage:
          mylandingPageCandidateImage ?? this.mylandingPageCandidateImage,
      mylandingPageCompanyImage:
          mylandingPageCompanyImage ?? this.mylandingPageCompanyImage,
      mylandingPagerecruiterImage:
          mylandingPagerecruiterImage ?? this.mylandingPagerecruiterImage,

      //animation paths
      clockWorking: clockWorking ?? this.clockWorking,
      vacancyPublishing: vacancyPublishing ?? this.vacancyPublishing,
      vacancyUnpublishing: vacancyUnpublishing ?? this.vacancyUnpublishing,

      //Opacity value
      refferTopImageOpacity:
          refferTopImageOpacity ?? this.refferTopImageOpacity,
    );
  }

  @override
  ThemeExtension<ColorExtensions> lerp(
      ThemeExtension<ColorExtensions>? other, double t) {
    if (other is! ColorExtensions) {
      return this;
    }
    return ColorExtensions(
      //Colors
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
      card: Color.lerp(card, other.card, t) ?? card,
      headingTextColor:
          Color.lerp(headingTextColor, other.headingTextColor, t) ??
              headingTextColor,
      headerColor: Color.lerp(headerColor, other.headerColor, t) ?? headerColor,
      navigationTextColor:
          Color.lerp(navigationTextColor, other.navigationTextColor, t) ??
              navigationTextColor,
      appbarColor: Color.lerp(appbarColor, other.appbarColor, t) ?? appbarColor,
      primaryWhiteColor:
          Color.lerp(primaryWhiteColor, other.primaryWhiteColor, t) ??
              primaryWhiteColor,
      whitePrimaryColor:
          Color.lerp(whitePrimaryColor, other.whitePrimaryColor, t) ??
              whitePrimaryColor,
      bodyTextColor:
          Color.lerp(bodyTextColor, other.bodyTextColor, t) ?? bodyTextColor,
      background: Color.lerp(background, other.background, t) ?? background,
      placeholderBorderColor:
          Color.lerp(placeholderBorderColor, other.placeholderBorderColor, t) ??
              placeholderBorderColor,
      lighBlue: Color.lerp(lighBlue, other.lighBlue, t) ?? lighBlue,
      prograssBackgroundColor: Color.lerp(
              prograssBackgroundColor, other.prograssBackgroundColor, t) ??
          prograssBackgroundColor,
      stepperBorderColor:
          Color.lerp(stepperBorderColor, other.stepperBorderColor, t) ??
              stepperBorderColor,
      secondaryDividerColor:
          Color.lerp(secondaryDividerColor, other.secondaryDividerColor, t) ??
              secondaryDividerColor,
      dialogBgColor:
          Color.lerp(dialogBgColor, other.dialogBgColor, t) ?? dialogBgColor,
      chartProgressColor:
          Color.lerp(chartProgressColor, other.chartProgressColor, t) ??
              chartProgressColor,
      timelineColor:
          Color.lerp(timelineColor, other.timelineColor, t) ?? timelineColor,
      gray16primary24: Color.lerp(gray16primary24, other.gray16primary24, t) ??
          gray16primary24,
      white70primary700:
          Color.lerp(white70primary700, other.white70primary700, t) ??
              white70primary700,
      white20prinmary50:
          Color.lerp(white20prinmary50, other.white20prinmary50, t) ??
              white20prinmary50,
      purple100purple400:
          Color.lerp(purple100purple400, other.purple100purple400, t) ??
              purple100purple400,
      success200success700:
          Color.lerp(success200success700, other.success200success700, t) ??
              success200success700,
      others100others400:
          Color.lerp(others100others400, other.others100others400, t) ??
              others100others400,
      white20darkHeader:
          Color.lerp(white20darkHeader, other.white20darkHeader, t) ??
              white20darkHeader,
      bodyBackground:
          Color.lerp(bodyBackground, other.bodyBackground, t) ?? bodyBackground,
      bodyTextWhite:
          Color.lerp(bodyTextWhite, other.bodyTextWhite, t) ?? bodyTextWhite,
      popularJobsColor:
          Color.lerp(popularJobsColor, other.popularJobsColor, t) ??
              popularJobsColor,
      featuredCardColor:
          Color.lerp(featuredCardColor, other.featuredCardColor, t) ??
              featuredCardColor,
      governmentJobCardColor:
          Color.lerp(governmentJobCardColor, other.governmentJobCardColor, t) ??
              governmentJobCardColor,
      popularJobsBorderColor:
          Color.lerp(popularJobsBorderColor, other.popularJobsBorderColor, t) ??
              popularJobsBorderColor,
      featuredBorderColor:
          Color.lerp(featuredBorderColor, other.featuredBorderColor, t) ??
              featuredBorderColor,
      governmentJobBorderColor: Color.lerp(
              governmentJobBorderColor, other.governmentJobBorderColor, t) ??
          governmentJobBorderColor,
      lokingForJobProgrssColor: Color.lerp(
              lokingForJobProgrssColor, other.lokingForJobProgrssColor, t) ??
          lokingForJobProgrssColor,
      newProfileProgrssColor:
          Color.lerp(newProfileProgrssColor, other.newProfileProgrssColor, t) ??
              newProfileProgrssColor,
      whiteAndPlaceHolderColor: Color.lerp(
              whiteAndPlaceHolderColor, other.whiteAndPlaceHolderColor, t) ??
          whiteAndPlaceHolderColor,
      gray16Success16Color:
          Color.lerp(gray16Success16Color, other.gray16Success16Color, t) ??
              gray16Success16Color,
      gray16purple16Color:
          Color.lerp(gray16purple16Color, other.gray16purple16Color, t) ??
              gray16purple16Color,

      govJobIconColor: Color.lerp(govJobIconColor, other.govJobIconColor, t) ??
          govJobIconColor,
      featureJobIconColor:
          Color.lerp(featureJobIconColor, other.featureJobIconColor, t) ??
              featureJobIconColor,
      popularJobIconColor:
          Color.lerp(popularJobIconColor, other.popularJobIconColor, t) ??
              popularJobIconColor,

      govJobStatsColor:
          Color.lerp(govJobStatsColor, other.govJobStatsColor, t) ??
              govJobStatsColor,
      featureJobStatsColor:
          Color.lerp(featureJobStatsColor, other.featureJobStatsColor, t) ??
              featureJobStatsColor,
      popularJobStatsColor:
          Color.lerp(popularJobStatsColor, other.popularJobStatsColor, t) ??
              popularJobStatsColor,
      primary100Primary900:
          Color.lerp(primary100Primary900, other.primary100Primary900, t) ??
              primary100Primary900,
      success400And900:
          Color.lerp(success400And900, other.success400And900, t) ??
              success400And900,
      danger400And900: Color.lerp(danger400And900, other.danger400And900, t) ??
          danger400And900,
      warning400And900:
          Color.lerp(warning400And900, other.warning400And900, t) ??
              warning400And900,

      whiteBlack: Color.lerp(whiteBlack, other.whiteBlack, t) ?? whiteBlack,
      callUsBackColor: Color.lerp(callUsBackColor, other.callUsBackColor, t) ??
          callUsBackColor,
      primary200Primary900:
          Color.lerp(primary200Primary900, other.primary200Primary900, t) ??
              primary200Primary900,

      purple200purple900:
          Color.lerp(purple200purple900, other.purple200purple900, t) ??
              purple200purple900,
      other200other900:
          Color.lerp(other200other900, other.other200other900, t) ??
              other200other900,
      cardBgColor1:
          Color.lerp(cardBgColor1, other.cardBgColor1, t) ?? cardBgColor1,
      cardBgColor2:
          Color.lerp(cardBgColor2, other.cardBgColor2, t) ?? cardBgColor2,
      cardBgColor3:
          Color.lerp(cardBgColor3, other.cardBgColor3, t) ?? cardBgColor3,
      gradientFirstColor:
          Color.lerp(gradientFirstColor, other.gradientFirstColor, t) ??
              gradientFirstColor,
      gradientSecondColor:
          Color.lerp(gradientSecondColor, other.gradientSecondColor, t) ??
              gradientSecondColor,
      gradientFirst1Color:
          Color.lerp(gradientFirst1Color, other.gradientFirst1Color, t) ??
              gradientFirst1Color,
      gradientSecond1Color:
          Color.lerp(gradientSecond1Color, other.gradientSecond1Color, t) ??
              gradientSecondColor,
      gradientFirst2Color:
          Color.lerp(gradientFirst2Color, other.gradientFirst2Color, t) ??
              gradientFirst2Color,
      gradientSecond2Color:
          Color.lerp(gradientSecond2Color, other.gradientSecond2Color, t) ??
              gradientSecond2Color,
      landing1ShadowColor:
          Color.lerp(landing1ShadowColor, other.landing1ShadowColor, t) ??
              landing1ShadowColor,
      landing2ShadowColor:
          Color.lerp(landing2ShadowColor, other.landing2ShadowColor, t) ??
              landing2ShadowColor,
      landing3ShadowColor:
          Color.lerp(landing3ShadowColor, other.landing3ShadowColor, t) ??
              landing3ShadowColor,
      primary500primary300:
          Color.lerp(primary500primary300, other.primary500primary300, t) ??
              primary500primary300,
      purple500purple300:
          Color.lerp(purple500purple300, other.purple500purple300, t) ??
              purple500purple300,
      other500other300:
          Color.lerp(other500other300, other.other500other300, t) ??
              other500other300,
      primary400primary500:
          Color.lerp(primary400primary500, other.primary400primary500, t) ??
              primary400primary500,
      primary700primary300:
          Color.lerp(primary700primary300, other.primary700primary300, t) ??
              primary700primary300,
      purple400purple500:
          Color.lerp(purple400purple500, other.purple400purple500, t) ??
              purple400purple500,
      purple700purple300:
          Color.lerp(purple700purple300, other.purple700purple300, t) ??
              purple700purple300,
      other400other500:
          Color.lerp(other400other500, other.other400other500, t) ??
              other400other500,
      other700other300:
          Color.lerp(other700other300, other.other700other300, t) ??
              other700other300,
      authBackColor:
          Color.lerp(authBackColor, other.authBackColor, t) ?? authBackColor,
      refCardColor:
          Color.lerp(refCardColor, other.refCardColor, t) ?? refCardColor,
      blackWhite: Color.lerp(blackWhite, other.blackWhite, t) ?? blackWhite,

      //Gradients
      primaryGradient: primaryGradient,
      secondaryLightGradient: secondaryLightGradient,
      primaryLightGradient: primaryLightGradient,
      vacancyCardGradient: vacancyCardGradient,
      warningLightGradient: warningLightGradient,
      dangerLightGradient: dangerLightGradient,
      payoutCardGradient: payoutCardGradient,
      lightGradients: lightGradients,

      //Shadow
      boxShadow: boxShadow,
      buttonShadow: buttonShadow,
      smallShadow: smallShadow,
      mediumShadow: mediumShadow,
      largeShadow: largeShadow,
      modalShadow: modalShadow,

      //image paths
      jobdeskLogoPath: jobdeskLogoPath,
      splashAnimationPath: splashAnimationPath,
      avatarImagePath: avatarImagePath,
      profilePlaceholderPath: profilePlaceholderPath,
      profilePlaceholder2Path: profilePlaceholder2Path,
      profilePlaceholderImagePath: profilePlaceholderImagePath,
      employeeTopImagePath: employeeTopImagePath,
      detailsCoverImagePath: detailsCoverImagePath,
      landingPageBgImage: landingPageBgImage,
      landingPageCandidateImage: landingPageCandidateImage,
      landingPageCompanyImage: landingPageCompanyImage,
      landingPagerecruiterImage: landingPagerecruiterImage,
      bdlandingPageCandidateImage: bdlandingPageCandidateImage,
      bdlandingPageCompanyImage: bdlandingPageCompanyImage,
      bdlandingPagerecruiterImage: bdlandingPagerecruiterImage,
      gblandingPageCandidateImage: gblandingPageCandidateImage,
      gblandingPageCompanyImage: gblandingPageCompanyImage,
      gblandingPagerecruiterImage: gblandingPagerecruiterImage,
      mylandingPageCandidateImage: mylandingPageCandidateImage,
      mylandingPageCompanyImage: mylandingPageCompanyImage,
      mylandingPagerecruiterImage: mylandingPagerecruiterImage,

      //animation paths
      clockWorking: clockWorking,
      vacancyPublishing: vacancyPublishing,
      vacancyUnpublishing: vacancyUnpublishing,

      //Opacity value
      refferTopImageOpacity: refferTopImageOpacity,
    );
  }

  static const light = ColorExtensions(
    //Colors
    primary: AppColors.whiteColor,
    secondary: AppColors.whiteColor,
    card: AppColors.whiteColor,
    headingTextColor: AppColors.headingTextColor,
    headerColor: AppColors.whiteColor,
    navigationTextColor: AppColors.bodyTextColor,
    appbarColor: AppColors.primaryColor,
    primaryWhiteColor: AppColors.whiteColor,
    whitePrimaryColor: AppColors.primaryColor,
    bodyTextColor: AppColors.bodyTextColor,
    background: AppColors.background,
    placeholderBorderColor: AppColors.darkWhite,
    lighBlue: AppColors.lightBlue,
    prograssBackgroundColor: AppColors.bodyBgColor,
    stepperBorderColor: Color(0xFF8F8A8A),
    secondaryDividerColor: Color(0x284B465C),
    dialogBgColor: Color(0xFFF6F6F7),
    chartProgressColor: Color(0xFFF6F6F7),
    timelineColor: Color(0xFFF6F6F7),
    gray16primary24: Color(0x294B465C),
    white70primary700: Color(0xB3FFFFFF),
    white20prinmary50: Color(0x33FFFFFF),
    purple100purple400: AppColors.whiteColor,
    success200success700: AppColors.whiteColor,
    others100others400: AppColors.whiteColor,
    white20darkHeader: Color(0x33FFFFFF),
    bodyBackground: AppColors.bodyBgColor,
    bodyTextWhite: AppColors.bodyTextColor,
    popularJobsColor: Color(0x147367F0),
    featuredCardColor: AppColors.lightYellow,
    governmentJobCardColor: Color(0x1428C76F),
    popularJobsBorderColor: Color(0xFFC7C2F9),
    featuredBorderColor: Color(0xFFFFD9B4),
    governmentJobBorderColor: Color(0xFFA9E9C5),
    featureJobIconColor: Color(0x29FF9F43),
    popularJobIconColor: Color(0xFFE3E1FC),
    govJobIconColor: Color(0xFFD4F4E2),
    featureJobStatsColor: AppColors.warningColor,
    popularJobStatsColor: AppColors.purpleColor,
    govJobStatsColor: AppColors.successColor,
    lokingForJobProgrssColor: AppColors.whiteColor,
    newProfileProgrssColor: AppColors.whiteColor,
    whiteAndPlaceHolderColor: AppColors.whiteColor,
    gray16Success16Color: Color(0x294B465C),
    gray16purple16Color: Color(0x294B465C),
    primary100Primary900: Color(0xFFCFEBFF),
    success400And900: Color(0xFF53D28C),
    danger400And900: Color(0xFFEE7677),
    warning400And900: Color(0xFFFFB269),
    whiteBlack: Colors.white,
    callUsBackColor: Color(0xFFEEFBF3),
    primary200Primary900: Color(0xFF9ED6FF),
    purple200purple900: Color(0xFFC7C2F9),
    other200other900: Color(0xFFD7BDE2),
    cardBgColor1: Color(0xFFF2F9FF),
    cardBgColor2: Color(0xFFF5FBFF),
    cardBgColor3: Color(0xFFF8FCFF),
    gradientFirstColor: Color(0x80E2F4FF),
    gradientSecondColor: Color(0x80A2D7FF),
    gradientFirst1Color: Color(0x80DCEAFF),
    gradientSecond1Color: Color(0x80DDD8FF),
    gradientFirst2Color: Color(0x80F5EDFF),
    gradientSecond2Color: Color(0x80F8CCFF),
    landing1ShadowColor: Color(0x400D99FF),
    landing2ShadowColor: Color(0x407367F0),
    landing3ShadowColor: Color(0x4028C76F),
    primary500primary300: AppColors.primaryColor,
    purple500purple300: AppColors.purpleColor,
    other500other300: AppColors.otherColor,
    primary400primary500: Color(0xFF3DADFF),
    primary700primary300: Color(0xFF0B82D9),
    purple400purple500: Color(0xFF8F85F3),
    purple700purple300: Color(0xFF6258CC),
    other400other500: Color(0xFFAF7AC5),
    other700other300: Color(0xFF844C9B),
    authBackColor: AppColors.whiteColor,
    refCardColor: Color(0xFFF8F8F8),
    blackWhite: Colors.black,

    //Gradients
    primaryGradient: AppColors.primaryGradient,
    secondaryLightGradient: AppColors.secondaryLightGradient,
    primaryLightGradient: AppColors.primaryLightGradient,
    vacancyCardGradient: AppColors.primaryGradient,
    warningLightGradient: AppColors.warningLightGradient,
    dangerLightGradient: AppColors.dangerLightGradient,
    payoutCardGradient: AppColors.payoutCardGradient,
    lightGradients: AppColors.lightGradients,

    //Shadows
    boxShadow: AppColors.boxShadow,
    buttonShadow: AppColors.buttonShadow,
    smallShadow: AppColors.smallShadow,
    mediumShadow: AppColors.mediumShadow,
    largeShadow: AppColors.largeShadow,
    modalShadow: AppColors.modalShadow,

    //image paths
    jobdeskLogoPath: 'assets/images/big_jd.png',
    splashAnimationPath: "assets/animations/splash_screen_light.json",
    avatarImagePath: "assets/images/avatar.png",
    profilePlaceholderPath: "assets/images/profile_placeholder_blue.jpg",
    profilePlaceholder2Path: "assets/images/profile_placeholder2.jpg",
    profilePlaceholderImagePath: "assets/images/profile_placeholder.jpg",
    employeeTopImagePath: "assets/images/employee_top_image_light.png",
    detailsCoverImagePath: "assets/images/details_page_cover_page_light.png",
    landingPageBgImage: "assets/images/landingpage_light_bg.jpg",
    landingPageCandidateImage:
        "assets/landing_page_images/ch_candidate_light.png",
    landingPageCompanyImage: "assets/landing_page_images/ch_company_light.png",
    landingPagerecruiterImage:
        "assets/landing_page_images/ch_recruiter_light.png",
    bdlandingPageCandidateImage:
        "assets/landing_page_images/bd_candidate_light.png",
    bdlandingPageCompanyImage:
        "assets/landing_page_images/bd_company_light.png",
    bdlandingPagerecruiterImage:
        "assets/landing_page_images/bd_recruiter_light.png",
    gblandingPageCandidateImage:
        "assets/landing_page_images/gb_candidate_light.png",
    gblandingPageCompanyImage:
        "assets/landing_page_images/gb_company_light.png",
    gblandingPagerecruiterImage:
        "assets/landing_page_images/gb_recruiter_light.png",
    mylandingPageCandidateImage:
        "assets/landing_page_images/my_candidate_light.png",
    mylandingPageCompanyImage:
        "assets/landing_page_images/my_company_light.png",
    mylandingPagerecruiterImage:
        "assets/landing_page_images/my_recruiter_light.png",

    //animation paths
    clockWorking: 'assets/animations/clock_light.json',
    vacancyPublishing: 'assets/animations/vacancy_publishing.json',
    vacancyUnpublishing: 'assets/animations/vacancy_unpublishing.json',

    //Opacity value
    refferTopImageOpacity: 0.5,
  );

  static const dark = ColorExtensions(
    //Colors
    primary: AppColors.darkPrimary,
    secondary: AppColors.darkSecondary,
    card: AppColors.darkCardBackground,
    headingTextColor: AppColors.whiteColor,
    headerColor: AppColors.darkHeader,
    navigationTextColor: AppColors.placeholderTextColor,
    appbarColor: AppColors.darkHeader,
    primaryWhiteColor: AppColors.primaryColor,
    whitePrimaryColor: AppColors.whiteColor,
    bodyTextColor: AppColors.bodydark,
    background: AppColors.darkBackground,
    placeholderBorderColor: AppColors.darkHeader,
    lighBlue: AppColors.darkPrimary,
    prograssBackgroundColor: Color(0xFF5D586C),
    stepperBorderColor: AppColors.bodydark,
    secondaryDividerColor: Color(0xFF6F6B7D),
    dialogBgColor: AppColors.darkSecondary,
    chartProgressColor: Color(0xFF5D586C),
    timelineColor: AppColors.darkHeader,
    gray16primary24: Color(0x3D0D99FF),
    white70primary700: Color(0xFF0B82D9),
    white20prinmary50: Color(0x800D99FF),
    purple100purple400: Color(0xFF8F85F3),
    success200success700: Color(0xFF22A95E),
    others100others400: Color(0xFFAF7AC5),
    white20darkHeader: AppColors.darkHeader,
    bodyBackground: AppColors.darkSecondary,
    bodyTextWhite: AppColors.whiteColor,
    popularJobsColor: Color(0xFF29263D),
    featuredCardColor: Color(0x14FF9F43),
    governmentJobCardColor: Color(0xFF202F38),
    popularJobsBorderColor: Color(0xFF564DB4),
    featuredBorderColor: Color(0x52FF9F43),
    governmentJobBorderColor: Color(0xFF1E9553),
    featureJobIconColor: Color(0x29FF9F43),
    popularJobIconColor: Color(0xFF35305A),
    govJobIconColor: Color(0xFF214741),
    featureJobStatsColor: AppColors.warningColor,
    popularJobStatsColor: Color(0xFF6258CC),
    govJobStatsColor: Color(0xFF22A95E),
    lokingForJobProgrssColor: AppColors.successColor,
    newProfileProgrssColor: AppColors.purpleColor,
    whiteAndPlaceHolderColor: AppColors.placeholderTextColor,
    gray16Success16Color: Color(0x2928C76F),
    gray16purple16Color: Color(0x297367F0),
    primary100Primary900: Colors.transparent,
    success400And900: Color(0xFF1E9553),
    danger400And900: Color(0xFFAF3F40),
    warning400And900: Color(0xFFBF7732),
    whiteBlack: Colors.black,
    callUsBackColor: Color(0x1428C76F),
    primary200Primary900: Color(0xFF0A73BF),
    purple200purple900: Color(0xFF564DB4),
    other200other900: Color(0xFF744388),
    cardBgColor1: Color(0xFF3B3D4C),
    cardBgColor2: Color(0xFF3A3C4B),
    cardBgColor3: Color(0xFF363948),
    gradientFirstColor: Color(0x804A5963),
    gradientSecondColor: Color(0x8022445E),
    gradientFirst1Color: Color(0x805942B4),
    gradientSecond1Color: Color(0x80372B7D),
    gradientFirst2Color: Color(0x803B3543),
    gradientSecond2Color: Color(0x805A3960),
    landing1ShadowColor: Color(0x400B3858),
    landing2ShadowColor: Color(0x401B1747),
    landing3ShadowColor: Color(0x402F1539),
    primary500primary300: Color(0xFF6EC2FF),
    purple500purple300: Color(0xFFABA4F6),
    other500other300: Color(0xFFC39BD3),
    primary400primary500: AppColors.primaryColor,
    primary700primary300: Color(0xFF6EC2FF),
    purple400purple500: AppColors.purpleColor,
    purple700purple300: Color(0xFFABA4F6),
    other400other500: AppColors.otherColor,
    other700other300: Color(0xFFC39BD3),
    authBackColor: AppColors.darkBackground,
    refCardColor: Color(0x294B465C),
    blackWhite: AppColors.whiteColor,

    //Gradients
    primaryGradient: AppColors.onlineChartDarkGradient,
    secondaryLightGradient: AppColors.darkPrimaryGradient,
    primaryLightGradient: AppColors.darkPrimaryGradient,
    vacancyCardGradient: AppColors.vacancyCardDarkGradient,
    warningLightGradient: AppColors.darkPrimaryGradient,
    payoutCardGradient: AppColors.payoutCardDarkGradient,
    dangerLightGradient: AppColors.darkPrimaryGradient,
    lightGradients: [
      AppColors.darkPrimaryGradient,
      AppColors.darkPrimaryGradient,
      AppColors.darkPrimaryGradient,
      AppColors.darkPrimaryGradient,
      AppColors.darkPrimaryGradient,
      AppColors.darkPrimaryGradient
    ],

    //Shadows
    boxShadow: AppColors.darkBoxShadow,
    buttonShadow: AppColors.darkButtonShadow,
    smallShadow: AppColors.darkSmallShadow,
    mediumShadow: AppColors.darkMediumShadow,
    largeShadow: AppColors.darkLargeShadow,
    modalShadow: AppColors.darkModalShadow,

    //image paths
    jobdeskLogoPath: 'assets/logo_white_blue.png',
    splashAnimationPath: "assets/animations/splash_screen_dark.json",
    avatarImagePath: "assets/images/avatar_dark.jpg",
    profilePlaceholderPath: "assets/images/profile_placeholder_blue_dark.jpg",
    profilePlaceholder2Path: "assets/images/profile_placeholder2_dark.jpg",
    profilePlaceholderImagePath: "assets/images/profile_placeholder_dark.jpg",
    employeeTopImagePath: "assets/images/employee_top_image_dark.png",
    detailsCoverImagePath: "assets/images/employee_top_image_dark.png",
    landingPageBgImage: "assets/images/landingpage_dark_bg.jpg",
    landingPageCandidateImage:
        "assets/landing_page_images/ch_candidate_dark.png",
    landingPageCompanyImage: "assets/landing_page_images/ch_company_dark.png",
    landingPagerecruiterImage:
        "assets/landing_page_images/ch_recruiter_dark.png",
    bdlandingPageCandidateImage:
        "assets/landing_page_images/bd_candidate_dark.png",
    bdlandingPageCompanyImage: "assets/landing_page_images/bd_company_dark.png",
    bdlandingPagerecruiterImage:
        "assets/landing_page_images/bd_recruiter_dark.png",
    gblandingPageCandidateImage:
        "assets/landing_page_images/gb_candidate_dark.png",
    gblandingPageCompanyImage: "assets/landing_page_images/gb_company_dark.png",
    gblandingPagerecruiterImage:
        "assets/landing_page_images/gb_recruiter_dark.png",
    mylandingPageCandidateImage:
        "assets/landing_page_images/my_candidate_dark.png",
    mylandingPageCompanyImage: "assets/landing_page_images/my_company_dark.png",
    mylandingPagerecruiterImage:
        "assets/landing_page_images/my_recruiter_dark.png",

    //animation paths
    clockWorking: 'assets/animations/clock_dark.json',
    vacancyPublishing: 'assets/animations/vacancy_publishing_dark.json',
    vacancyUnpublishing: 'assets/animations/vacancy_unpublishing_dark.json',

    //Opacity value
    refferTopImageOpacity: 0.2,
  );
}
