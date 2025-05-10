import 'package:flutter/material.dart';

class ButtonAboutPlace extends StatefulWidget {
  final String images;
  final String placeName;
  final double alignment;

  const ButtonAboutPlace({
    super.key,
    required this.images,
    required this.placeName,
    required this.alignment,
  });

  @override
  State<ButtonAboutPlace> createState() => _ButtonAboutPlaceState();
}

class _ButtonAboutPlaceState extends State<ButtonAboutPlace> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 75,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 0.5,

            alignment: Alignment(0, widget.alignment),
            image: AssetImage(widget.images),
          ),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        margin: EdgeInsets.only(top: 19),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(widget.placeName)],
          ),
        ),
      ),
    );
  }
}
