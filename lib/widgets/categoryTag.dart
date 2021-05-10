import 'package:flutter/material.dart';

class CategoryTagWidget extends StatefulWidget {
  final List<Color> gradientColor;
  final String textButton;
  final String buttonUrl;
  final Color textColor;
  final String height;
  final String width;
  final double borderRadius;

  const CategoryTagWidget(
      {Key key,
      this.gradientColor,
      this.textButton,
      this.buttonUrl,
      this.textColor,
      this.height,
      this.width,
      this.borderRadius})
      : super(key: key);

  @override
  _CategoryTagWidgetState createState() => _CategoryTagWidgetState();
}

class _CategoryTagWidgetState extends State<CategoryTagWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      // margin: EdgeInsets.only(top: 20, bottom: 20, right: 10),
      height: 50.0,
      child: ElevatedButton(
        onPressed: () => {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                widget.borderRadius != null ? widget.borderRadius : 20.0),
          ),
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: widget.gradientColor != null
                  ? widget.gradientColor
                  : [Colors.amber[800], Colors.amber[900]],
            ),
            borderRadius: BorderRadius.circular(
                widget.borderRadius != null ? widget.borderRadius : 20.0),
          ),
          child: Container(
            width: 180,
            height: 300,
            alignment: Alignment.center,
            child: Text(
              "${widget.textButton != null ? widget.textButton : 'Button'}",
              style: TextStyle(
                  fontSize: 16,
                  color: widget.textColor != null
                      ? widget.textColor
                      : Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
