library custom_switch;
import 'package:flutter/material.dart';
import 'SizeConfig.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;

  const CustomSwitch({Key key, this.value, this.onChanged, this.activeColor})
      : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  Animation _circleAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Container(
            width: SizeConfig.blockWidth * 21,
            height: SizeConfig.blockWidth * 7,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(SizeConfig.blockWidth * 4.5),
                color: _circleAnimation.value == Alignment.centerLeft
                    ? Colors.grey
                    : widget.activeColor),
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.blockWidth),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _circleAnimation.value == Alignment.centerRight
                      ? Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.blockWidth * 4,
                              right: SizeConfig.blockWidth * 2),
                          child: Text(
                            'Açık',
                            style: TextStyle(
                                fontFamily: "Champagne-Limousines-Bold",
                                color: Colors.white70,
                                fontSize: SizeConfig.blockWidth * 3.5),
                          ),
                        )
                      : Container(),
                  Align(
                    alignment: _circleAnimation.value,
                    child: Container(
                      width: SizeConfig.blockWidth * 6,
                      height: SizeConfig.blockWidth * 6,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                  _circleAnimation.value == Alignment.centerLeft
                      ? Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.blockWidth * 1,
                              right: SizeConfig.blockWidth * 2),
                          child: Text(
                            'Kapalı',
                            style: TextStyle(
                              fontFamily: "Champagne-Limousines-Bold",
                              color: Colors.white70,
                              fontSize: SizeConfig.blockWidth * 3.5,
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
