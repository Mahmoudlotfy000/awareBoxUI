import 'dart:io';
import 'package:awareboxui/features/home/presentation/widgets/shimmer_widget.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/asset_icons.dart';
import '../../../../core/utils/awarebox_colors.dart';
import '../../../../core/utils/strings.dart';
import 'awarebox_svg_loader.dart';

class AppImageLoader extends StatelessWidget {
  String imageUrl;
  final String imageType;
  final bool showCircleImage;
  final bool roundCorners;
  final BoxFit? boxFit;
  final isProfileImage;

  AppImageLoader.withImage(
      {Key? key,
      required this.imageUrl,
      required this.imageType,
      required this.showCircleImage,
      this.boxFit,
      required this.roundCorners,
      this.isProfileImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imgURL;

//    imageUrl =
//        "http://46.101.104.226/awarebox/uploads/users/410/product/cf6375ca828be11e049a06a0a4f86a97.png";
//    print("Image url -> $imageUrl");

    if (imageUrl.isEmpty) {
      return _buildNoImageView(context);
    } else if (imageUrl.contains('${Strings.serverLink}/')) {
      imgURL = imageUrl.replaceFirst('${Strings.serverLink}/', '');
      if (imgURL == null || imgURL.isEmpty || imgURL == '0') {
        return _buildNoImageView(context);
      }
    } else {
      if (imageUrl.isEmpty) {
        return _buildNoImageView(context);
      }
    }

    switch (imageType) {
      case ImageType.ASSET:
        return loadAssetImage(context);
      case ImageType.NETWORK:
        return loadNetworkImage(context);
      case ImageType.FILE:
        return loadFromFile(context);
      default:
        return loadNetworkImage(context);
    }
  }

  Widget loadAssetImage(BuildContext context) {
    return ExtendedImage.asset(
      imageUrl,
      fit: boxFit ?? BoxFit.cover,
      borderRadius: roundCorners
          ? BorderRadius.circular(4)
          : BorderRadius.circular(0),
      shape: showCircleImage
          ? BoxShape.circle
          : BoxShape.rectangle,
      enableMemoryCache: true,
      clearMemoryCacheIfFailed: true,
      loadStateChanged: (ExtendedImageState state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            {
              return _buildLoadingImageView(context);
            }
          case LoadState.completed:
            {
              return ExtendedRawImage(
                fit: boxFit ?? boxFit ?? BoxFit.cover,
                image: state.extendedImageInfo?.image,
              );
            }
          case LoadState.failed:
            {
              return _buildNoAssetImageView(context);
            }
          default:
            {
              return _buildNoAssetImageView(context);
            }
        }
      },
    );
  }

  Widget _buildNoImageView(BuildContext context) {
    return AwareboxSVGLoader(
      svgSize: isProfileImage != null && isProfileImage
          ? const Size(80, 80)
          : const Size(100, 100),
      urlImage: isProfileImage != null && isProfileImage
          ? AssetIcons.profile_placeholder
          : AssetIcons.photo_placeholder,
//      child: Icon(
//        isProfileImage != null && isProfileImage
//            ? Icons.account_circle
//            : Icons.image,
//        color: AwareboxColors.backgroundGray,
//        size: isProfileImage != null && isProfileImage
//            ? 80
//            : 100,
//    ),
    );
  }

  Widget _buildNoAssetImageView(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: showCircleImage ? BoxShape.circle : BoxShape.rectangle,
          color: Colors.transparent),
    );
  }

  Widget loadFromFile(BuildContext context) {
    if (imageUrl.isEmpty) {
      return _buildNoImageView(context);
    }
    return ExtendedImage.file(
      File(imageUrl),
      fit: boxFit ?? BoxFit.cover,
      borderRadius: roundCorners
          ? BorderRadius.circular(4)
          : BorderRadius.circular(0),
      shape: showCircleImage
          ? BoxShape.circle
          : BoxShape.rectangle,
      enableMemoryCache: true,
      clearMemoryCacheIfFailed: true,
      loadStateChanged: (ExtendedImageState state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            {
              return _buildLoadingImageView(context);
            }
          case LoadState.completed:
            {
              return ExtendedRawImage(
                fit: boxFit ?? boxFit ?? BoxFit.cover,
                image: state.extendedImageInfo?.image,
              );
            }
          case LoadState.failed:
            {
              return _buildNoImageView(context);
            }
          default:
            {
              return _buildNoImageView(context);
            }
        }
      },
    );
  }

  Widget loadNetworkImage(BuildContext context) {
    return ExtendedImage.network(
      imageUrl,
      fit: boxFit ?? (boxFit ?? BoxFit.cover),
      borderRadius: roundCorners
          ? BorderRadius.circular(4)
          : BorderRadius.circular(0),
      shape: BoxShape.rectangle,
      cache: true,
      loadStateChanged: (ExtendedImageState state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            {
              return _buildLoadingImageView(context);
            }
          case LoadState.completed:
            {
              return ExtendedRawImage(
                fit: boxFit ?? boxFit ?? BoxFit.cover,
                image: state.extendedImageInfo?.image,
              );
            }
          case LoadState.failed:
            {
              return _buildNoImageView(context);
            }
          default:
            {
              return _buildNoImageView(context);
            }
        }
      },
    );
  }

  Widget _buildLoadingImageView(BuildContext context) {
    return ShimmerWidget(
      child: Container(
        color: AwareboxColors.whiteBG,
      ),
    );
  }
}

class ImageType {
  static const String ASSET = "ASSET";
  static const String NETWORK = "NETWORK";
  static const String FILE = "FILE";
}
