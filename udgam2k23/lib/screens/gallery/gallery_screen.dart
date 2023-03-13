import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:udgam2k23/constants.dart';
import 'package:udgam2k23/screens/gallery/widgets/image_card.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // ignore: sized_box_for_whitespace
      body: Container(
        height: size.height * 0.91,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.04,
              right: size.width * 0.04,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Container(
                  height: size.height * 0.065,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "gallery",
                          style: TextStyle(
                            fontFamily: 'Samarkan',
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                StaggeredGrid.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                  children: const [
                    ImageCard(
                      imagePath: "assets/gallery/i1.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i2.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i3.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i4.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i5.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i6.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i7.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i8.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i9.jpg",
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 3,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i10.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i11.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i12.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i13.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i15.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i14.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i15.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i16.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i17.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i18.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i19.jpg",
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i20.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i21.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i22.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i23.jpg",
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i24.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i25.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i26.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i27.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i28.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i29.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i30.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i31.jpg",
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i32.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i33.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i34.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i35.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i36.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i37.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i38.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i39.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i40.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i41.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i42.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i43.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i44.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i45.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i46.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i47.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i48.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i49.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i50.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i51.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i52.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i53.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i54.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i55.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i56.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i57.jpg",
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i58.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                    ImageCard(
                      imagePath: "assets/gallery/i59.jpg",
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
