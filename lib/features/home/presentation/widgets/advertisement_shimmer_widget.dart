import 'package:flutter/cupertino.dart';
import '../../../../core/utils/awarebox_colors.dart';
import 'shimmer_widget.dart';

class AdvertiseMentShimmerWidget extends StatelessWidget {
  const AdvertiseMentShimmerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShimmerWidget(
      child: Container(
        color: AwareboxColors.whiteBG,
      ),
    );
  }
}
