import 'package:dev/app_router.dart';
import 'package:dev/core/constant/app_color.dart';
import 'package:dev/core/constant/app_const.dart';
import 'package:dev/core/theme/extensions.dart';
import 'package:dev/core/theme/jobdesk_icons.dart';
import 'package:dev/ui/screen/landing/widget/next_button_widget.dart';
import 'package:dev/ui/screen/landing/widget/slider_widget.dart';
import 'package:dev/ui/widget/custom_scaffold_widget.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Landing Screen"),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < AppConst.mobileMaxWidth) {
              return const CustomScaffoldWidget(
                body: BodyWidget(),
              );
            } else if (constraints.maxWidth < AppConst.desktopMaxWidth) {
              return const CustomScaffoldWidget(
                body: BodyWidget(),
              );
            } else {
              return const CustomScaffoldWidget(
                body: BodyWidget(),
              );
            }
          },
        ));
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: context.width,
          child: Image.asset(
            context.appColors.landingPageBgImage,
            fit: BoxFit.cover,
            width: context.width,
            height: context.height,
          ),
        ),
        SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 100,
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                    Expanded(
                      child: Image.asset(
                        context.appColors.jobdeskLogoPath,
                        width: context.width * .55,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const SliderWidget(
                sliderImages: [],
              ),
              const SizedBox(height: 24),
              Expanded(
                flex: 212,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: NextButtonWidget(
                          onTap: () {},
                          splashColor: AppColors.primaryColor.withOpacity(0.12),
                          highlightColor:
                              AppColors.primaryColor.withOpacity(0.08),
                          cardBgColor: context.appColors.cardBgColor1,
                          bgImageUrl: "add_vacancy".toPngImagesPath,
                          boxShadowColor: context.appColors.landing1ShadowColor,
                          cardBorderColor:
                              context.appColors.primary200Primary900,
                          smallText: context.translate(
                              key: 'lan-i-am-a', value: 'I am a'),
                          bigText: context.translate(
                              key: 'lan-professional-upper',
                              value: 'PROFESSIONAL'),
                          leftGradientFirstColor:
                              context.appColors.gradientFirstColor,
                          leftGradientSecondColor:
                              context.appColors.gradientSecondColor,
                          icon: JobdeskIcons.profile_user,
                          iconColor: context.appColors.primary500primary300,
                          smallTextColor:
                              context.appColors.primary400primary500,
                          bigTextColor: context.appColors.primary700primary300,
                          arrowIconColor:
                              context.appColors.primary500primary300,
                          arrowBorderColor:
                              context.appColors.primary500primary300,
                        ),
                      ),
                      const SizedBox(height: 18),
                      Expanded(
                        child: NextButtonWidget(
                          onTap: () {},
                          splashColor: AppColors.purpleColor.withOpacity(0.12),
                          highlightColor:
                              AppColors.purpleColor.withOpacity(0.08),
                          cardBgColor: context.appColors.cardBgColor2,
                          bgImageUrl: "wavy_1".toPngImagesPath,
                          boxShadowColor: context.appColors.landing2ShadowColor,
                          cardBorderColor: context.appColors.purple200purple900,
                          smallText: context.translate(
                              key: 'lan-we-are-a', value: 'We are a'),
                          bigText: context.translate(
                              key: 'lan-hiring-company-upper',
                              value: 'HIRING COMPANY'),
                          leftGradientFirstColor:
                              context.appColors.gradientFirst1Color,
                          leftGradientSecondColor:
                              context.appColors.gradientSecond1Color,
                          icon: JobdeskIcons.building_1,
                          iconColor: context.appColors.purple500purple300,
                          smallTextColor: context.appColors.purple400purple500,
                          bigTextColor: context.appColors.purple700purple300,
                          arrowIconColor: context.appColors.purple500purple300,
                          arrowBorderColor:
                              context.appColors.purple500purple300,
                        ),
                      ),
                      const SizedBox(height: 18),
                      Expanded(
                        child: NextButtonWidget(
                          onTap: () {},
                          splashColor: AppColors.otherColor.withOpacity(0.12),
                          highlightColor:
                              AppColors.otherColor.withOpacity(0.08),
                          cardBgColor: context.appColors.cardBgColor3,
                          bgImageUrl: "wavy_2".toPngImagesPath,
                          boxShadowColor: context.appColors.landing3ShadowColor,
                          cardBorderColor: context.appColors.other200other900,
                          smallText: context.translate(
                              key: 'lan-we-are-a', value: 'We are a'),
                          bigText: context.translate(
                              key: 'lan-recruiting-agency-upper',
                              value: 'RECRUITING AGENCY'),
                          leftGradientFirstColor:
                              context.appColors.gradientFirst2Color,
                          leftGradientSecondColor:
                              context.appColors.gradientSecond2Color,
                          icon: JobdeskIcons.recruitment,
                          iconColor: context.appColors.other500other300,
                          smallTextColor: context.appColors.other400other500,
                          bigTextColor: context.appColors.other700other300,
                          arrowIconColor: context.appColors.other500other300,
                          arrowBorderColor: context.appColors.other500other300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                flex: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              fixedSize: const Size.fromHeight(50.0),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 26,
                              )),
                          onPressed: () async {},
                          child: Text(
                            context.translate(key: 'lan-skip', value: "Skip"),
                            style: context.textTheme.headlineSmall!
                                .copyWith(color: AppColors.mutedTextColor),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            fixedSize: const Size.fromHeight(50.0),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                            )),
                        onPressed: () {
                          AppRouter.router.pushReplacement('/signIn');
                        },
                        child: Text(
                          context.translate(
                              key: 'lan-sign-in', value: "Sign-In"),
                          style: context.textTheme.headlineMedium!
                              .copyWith(color: AppColors.primaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}
