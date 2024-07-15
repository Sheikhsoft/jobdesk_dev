import 'package:carousel_slider/carousel_slider.dart';
import 'package:dev/core/constant/app_color.dart';
import 'package:dev/core/theme/extensions.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  final List<String> sliderImages;
  const SliderWidget({super.key, required this.sliderImages});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 308,
      child: CarouselSlider(
        items: List.generate(widget.sliderImages.length, (index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  currentPage == 0
                      ? context.translate(
                          key: 'lan-head-top-candidate',
                          value: "let's make profile with jobdesk®")
                      : currentPage == 1
                          ? context.translate(
                              key: 'lan-head-top-company',
                              value:
                                  "Only We Know How To Choose The Ideal Person For The Job")
                          : context.translate(
                              key: 'lan-head-top-recruiter',
                              value:
                                  "Millions of jobs and real people profiles, from professionals"),
                  style: context.textTheme.bodyMedium!
                      .copyWith(color: AppColors.mutedTextColor),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Image.asset(
                  widget.sliderImages[index],
                ),
              ),
            ],
          );
        }),
        options: CarouselOptions(
          height: context.height * .46,
          viewportFraction: 1,
          initialPage: 0,
          padEnds: false,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          autoPlayAnimationDuration: const Duration(milliseconds: 1000),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index, reason) {
            setState(() {
              currentPage = index;
            });
          },
        ),
      ),
    );
  }
}
