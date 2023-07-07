// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:valorant_api/const.dart';
import 'package:valorant_api/models/sprays_model.dart';

class SprayWidget extends StatelessWidget {
  const SprayWidget({
    Key? key,
    required this.spray,
  }) : super(key: key);
  final SpraysModel spray;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: spray.displayIcon,
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              const CupertinoActivityIndicator(color: Colorss.mainColor01),
          errorWidget: (context, url, error) =>
              Align(alignment: Alignment.centerLeft, child: Image.asset("lib/assets/noPhoto.png")),
        ),
      ),
      const SizedBox(height: 8),
      Text(spray.displayName, style: Styles.smallTextStyle.copyWith(fontSize: 10))
    ]);
  }
}
