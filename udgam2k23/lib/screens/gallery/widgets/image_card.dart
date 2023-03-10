import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:udgam2k23/constants.dart';

class ImageCard extends StatelessWidget {
  final int crossAxisCellCount;
  final int mainAxisCellCount;
  final String imagePath;
  const ImageCard({
    super.key,
    required this.imagePath,
    required this.crossAxisCellCount,
    required this.mainAxisCellCount,
  });

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      crossAxisCellCount: crossAxisCellCount,
      mainAxisCellCount: mainAxisCellCount,
      child: InkWell(
        splashColor: splashColor,
        onTap: () {
          showImageViewer(
            context,
            Image.asset(imagePath).image,
            swipeDismissible: false,
          );
        },
        child: Image.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
