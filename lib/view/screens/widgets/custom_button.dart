import 'package:flutter/material.dart';

class CustomButtonWidget extends StatefulWidget {
  CustomButtonWidget({
    Key? key,
    required this.title,
    this.titleStyle,
    this.width =100,
    this.borderWidth = 1,
    this.height = 44,
    this.onPressed,
    this.hasIcon = true,
    this.iconColor = Colors.white,
    this.buttonColor = Colors.black,
    this.borderColor = Colors.black,
    this.onHoverColor = Colors.white,
    this.iconData = Icons.abc,
    this.iconSize = 14,
    this.duration = const Duration(milliseconds: 200),
    this.curve = Curves.fastOutSlowIn,
    this.buttonStyle,
    this.isLoading = false,
  }) : super(key: key);

  final String title;
  final TextStyle? titleStyle;
  final IconData iconData;
  final double iconSize;
  final Color iconColor;
  final Color buttonColor;
  final Color borderColor;

  /// this is the color that shows when hovered
  final Color onHoverColor;
  final double width;
  final double borderWidth;
  final double height;
  final ButtonStyle? buttonStyle;
  final VoidCallback? onPressed;
  final Duration duration;
  final Curve curve;
  final bool hasIcon;
  final bool isLoading;

  @override
  _CustomButtonWidgetState createState() => _CustomButtonWidgetState();
}

class _CustomButtonWidgetState extends State<CustomButtonWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _textAndIconColor;
  late Animation<Offset> _offsetAnimation;
  bool _isHovering = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _textAndIconColor = ColorTween(
      begin: widget.onHoverColor,
      end: widget.buttonColor,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _offsetAnimation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0.5, 0),
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    TextStyle? style = textTheme.bodyText1?.copyWith(
      color: _textAndIconColor.value,
      fontSize: 4,
      fontWeight: FontWeight.w400, 
    );
    final ButtonStyle defaultButtonStyle = ElevatedButton.styleFrom(
      primary: widget.onHoverColor,
      onPrimary: widget.onHoverColor,
      padding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(0)),
        side: BorderSide(
          width: 1,
          color: widget.borderColor,
        ),
      ),
    );
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: Container(
        width: widget.width,
        height: widget.height,
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: widget.buttonStyle ?? defaultButtonStyle,
          child: 
          // widget.hasIcon
          //     ? Stack(
          //         children: [
          //           animatedBackground(),
          //           childWithIcon(),
          //         ],
          //       )
          //     : 
              Stack(
                  children: [
                    animatedBackground(),
                    Center(
                      child: Text(
                        'check',
                       // widget.title,
                        style: 
                        TextStyle(
                          color: Colors.green
                        )
                      //   widget.titleStyle ?? 
                      //  style,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Widget animatedBackground() {
    return Positioned(
      right: 0,
      child: AnimatedContainer(
        duration: widget.duration,
        // child: Text('sjsxss'),
        width: _isHovering ? 0 : widget.width,
        height: widget.height,
        color: widget.buttonColor,
        curve: widget.curve,
      ),
    );
  }

  Widget childWithIcon() {
    TextTheme textTheme = Theme.of(context).textTheme;
    TextStyle? style = textTheme.bodyText1?.copyWith(
      color: _textAndIconColor.value,
      fontSize: 4,
      fontWeight: FontWeight.w400,
    );
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
        'icon',  //  widget.title,
            style: widget.titleStyle ?? style,
          ),
         SizedBox(width: 8,),
          SlideTransition(
            position: _offsetAnimation,
            child: widget.isLoading? 
                CircularProgressIndicator()
                : Icon(
                    widget.iconData,
                    size: widget.iconSize,
                    color: _textAndIconColor.value,
                  ),
          )
        ],
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    if (hovering) {
      print(widget.buttonColor);
      setState(() {
        _controller.forward();
        _isHovering = hovering;
      });
    } else {
      print(widget.buttonColor);
      setState(() {
        _controller.forward();
        _isHovering = hovering;
      });
    }
  }
}
