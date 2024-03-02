import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Custom_List_view_item extends StatelessWidget {
  final String imageUrl;
  Custom_List_view_item({required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
          ),
        ),
      ),
    );
  }
}
// class AspectRaio_Image_Widget extends StatelessWidget {
//
//   final String NetImage;
//   const AspectRaio_Image_Widget({
//     super.key,
//     required this.NetImage
//   });
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(16),
//       child: AspectRatio(
//         aspectRatio: 2.7 /4,
//         child: CachedNetworkImage(
//           fit: BoxFit.fill,
//           imageUrl: NetImage,
//           errorWidget:(context, url, error) => Icon(Icons.error) ,
//         ),
//       ),
//     );
//   }
// }