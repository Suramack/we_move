import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:we_move/core/model/intro/state_model/intro_state_model.dart';
import 'package:we_move/design_system/label/label.dart';
import 'package:we_move/src/feature/intro/data/service/widget/intro_thumbnail_widget.dart';
import 'package:we_move/util/assets/assets.dart';

final introProvider = StateNotifierProvider<IntroNotifierProvider, IntroState>(
    (ref) => IntroNotifierProvider(ref));

class IntroNotifierProvider extends StateNotifier<IntroState> {
  IntroNotifierProvider(this.ref) : super(const IntroState());

  final Ref ref;

  int get carouselCurrentIndex => state.carouselCurrentIndex;

  String get introButtonTitle =>
      state.carouselCurrentIndex == 2 ? Strings.getStarted : Strings.next;

  List<IntroThumbnailWidget> introThumbnailList = [
    IntroThumbnailWidget(
        image: Assets.travelingImage,
        title: Strings.exploreOptions,
        subTite: Strings.exploreOptionsDesc),
    IntroThumbnailWidget(
        image: Assets.locationImge,
        title: Strings.seamlessBookings,
        subTite: Strings.seamlessBookingsDesc),
    IntroThumbnailWidget(
        image: Assets.locationImge,
        title: Strings.readyToStart,
        subTite: Strings.readyToStartDesc),
  ];

  void updateCarouselIndex(int index) =>
      state = state.copyWith(carouselCurrentIndex: index);

  int nextOnTap() {
    int index = state.carouselCurrentIndex;
    if (index < 2) {
      index += 1;
      updateCarouselIndex(index);
    }
    return state.carouselCurrentIndex;
  }
}
