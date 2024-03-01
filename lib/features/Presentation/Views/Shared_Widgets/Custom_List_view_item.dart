import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Custom_List_view_item extends StatelessWidget {
  final String NetImage;
  const Custom_List_view_item({
    super.key,
    required this.NetImage
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
          image: DecorationImage(
              fit:BoxFit.fill,
              image: NetworkImage(NetImage)),
        ),

        height:MediaQuery.of(context).size.height * .25 ,


      ),
    );
  }
}
class AspectRaio_Image_Widget extends StatelessWidget {

  final String NetImage;
  const AspectRaio_Image_Widget({
    super.key,
    required this.NetImage
  });
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7 /4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: NetImage,
          errorWidget:(context, url, error) => Icon(Icons.error) ,
        ),
      ),
    );
  }
}