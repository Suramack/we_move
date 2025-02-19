import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:we_move/design_system/widget/brand_button.dart';
import 'package:we_move/design_system/widget/brand_intro_base_layout.dart';
import 'package:we_move/src/feature/intro/data/service/provider/intro_provider.dart';
import 'package:we_move/src/feature/intro/data/service/widget/intro_thumbnail_widget.dart';
import 'package:we_move/src/theme/colors.dart';

class IntroScreen extends ConsumerStatefulWidget {
  const IntroScreen({super.key});

  @override
  ConsumerState<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends ConsumerState<IntroScreen> {
  late IntroNotifierProvider provider;

  final CarouselSliderController carouselSliderController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    ref.watch(introProvider);
    provider = ref.read(introProvider.notifier);
    return BrandIntroBaseLayout(
      child: Column(
        children: [
          CarouselSlider.builder(
            carouselController: carouselSliderController,
            itemCount: provider.introThumbnailList.length,
            itemBuilder: (context, index, valIndex) {
              return IntroThumbnailWidget(
                image: provider.introThumbnailList[index].image,
                title: provider.introThumbnailList[index].title,
                subTite: provider.introThumbnailList[index].subTite,
              );
            },
            options: CarouselOptions(
                autoPlay: false,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                height: MediaQuery.sizeOf(context).height * 0.5,
                initialPage: provider.carouselCurrentIndex,
                onPageChanged: (index, value) {
                  provider.updateCarouselIndex(index);
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: provider.introThumbnailList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => carouselSliderController.animateToPage(entry.key),
                child: AnimatedContainer(
                  duration: const Duration(microseconds: 350),
                  width: provider.carouselCurrentIndex == entry.key ? 32 : 16.0,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: (provider.carouselCurrentIndex == entry.key
                        ? AppColor.secondary
                        : AppColor.greyDC),
                  ),
                ),
              );
            }).toList(),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 16),
            child: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 100,
                height: 48,
                child: BrandButton.primary(
                  title: provider.introButtonTitle,
                  onTap: () {
                    var index = provider.nextOnTap();
                    if(index<=2){
                      carouselSliderController.nextPage();
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
