import 'package:dev/core/theme/extensions.dart';
import 'package:dev/ui/widget/landing_custom_int_splash.dart';
import 'package:flutter/material.dart';

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget(
      {super.key,
      required this.cardBgColor,
      required this.boxShadowColor,
      required this.cardBorderColor,
      required this.smallText,
      required this.bigText,
      required this.leftGradientFirstColor,
      required this.leftGradientSecondColor,
      required this.icon,
      required this.iconColor,
      required this.smallTextColor,
      required this.bigTextColor,
      required this.arrowIconColor,
      required this.arrowBorderColor,
      required this.splashColor,
      required this.highlightColor,
      required this.bgImageUrl,
      required this.onTap});
  final Color cardBgColor;
  final Color boxShadowColor;
  final Color cardBorderColor;
  final String smallText;
  final String bigText;
  final Color leftGradientFirstColor;
  final Color leftGradientSecondColor;
  final IconData icon;
  final Color iconColor;
  final Color smallTextColor;
  final Color bigTextColor;
  final Color arrowIconColor;
  final Color arrowBorderColor;
  final Color highlightColor;
  final Color splashColor;
  final String bgImageUrl;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          //  color: cardBgColor,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(bgImageUrl),
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: boxShadowColor,
          //     offset: const Offset(1, 1),
          //     blurRadius: 4,
          //   )
          // ],
          border: Border.all(width: 1, color: cardBorderColor)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(35),
          onTap: onTap,
          splashFactory: LandingCustomSplash.splashFactory,
          splashColor: splashColor,
          highlightColor: highlightColor,
          child: Row(
            children: [
              Container(
                width: 90,
                height: context.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      leftGradientSecondColor,
                      leftGradientFirstColor,
                    ],
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35),
                    bottomLeft: Radius.circular(35),
                  ),
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 32,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          smallText,
                          style: context.textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: smallTextColor,
                              fontSize: 16),
                        ),
                        Text(
                          bigText,
                          style: context.textTheme.headlineSmall!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: bigTextColor,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              // Container(
              //   padding: const EdgeInsets.all(8),
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     color: cardBgColor,
              //     border: Border.all(width: 1, color: arrowBorderColor),
              //     boxShadow: const [
              //       BoxShadow(
              //         color: Color(0x4D141954),
              //         offset: Offset(1, 1),
              //         blurRadius: 4,
              //       )
              //     ],
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 3.0),
              //     child: Icon(
              //       JobdeskIcons.larrow_right,
              //       size: 17,
              //       shadows: const [
              //         BoxShadow(
              //           color: Color(0x4D141954),
              //           offset: Offset(1, 1),
              //           blurRadius: 4,
              //         )
              //       ],
              //       color: arrowIconColor,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
