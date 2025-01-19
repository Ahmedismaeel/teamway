import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/src/global/helper/loading.dart';
import 'package:core/src/global/extensions/device_utils.dart';
import 'package:flutter/material.dart';

class CacheImage extends StatelessWidget {
  final double height;
  final double width;
  final String image;
  final double radius;
  final BoxFit? fit;
  const CacheImage(
      {super.key,
      required this.height,
      required this.width,
      required this.image,
      required this.radius,
      this.fit});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
          height: Device.height(scale: height, context: context),
          width: Device.width(scale: width, context: context),
          fit: fit ?? BoxFit.cover,
          imageUrl: image,
          fadeOutDuration: const Duration(seconds: 0),
          fadeInDuration: const Duration(seconds: 0),
          placeholder: (context, url) => LoadingShimmer(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(radius),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
                            offset: Offset(10, 7),
                            blurRadius: 24)
                      ],
                    ),
                    height: Device.height(scale: height, context: context),
                    width: Device.width(scale: width, context: context)),
              ),
          errorWidget: (context, url, error) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                color: const Color.fromARGB(255, 255, 245, 245),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
                      offset: Offset(10, 7),
                      blurRadius: 24)
                ],
              ),
              height: Device.height(scale: height, context: context),
              width: Device.width(scale: width, context: context),
              child: Image.asset("assets/images/place_holder.png"))),
    );
  }
}
