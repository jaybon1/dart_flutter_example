import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PostTableShimmerWidget extends StatelessWidget  {
  const PostTableShimmerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black),
        ),
        child: Column(
          children: [
            Container(
              width:  200,
              height: 20,
              color: Colors.white,
            ),
            Divider(),
            Container(
              width: 100,
              height: 20,
              color: Colors.white,
            ),
            Divider(),
            Container(
              width: double.infinity,
              height: 20,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
