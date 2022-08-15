import 'package:flutter/material.dart'hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';


class EmButton extends StatefulWidget {
  const EmButton({Key? key}) : super(key: key);

  @override
  State<EmButton> createState() => _EmButtonState();
}

class _EmButtonState extends State<EmButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    Offset distance = isPressed ? const Offset(1.25, 1.25) : const Offset(2.5, 2.5);
    double blur = isPressed ? 2.5 : 5.0;
    return Listener(
        onPointerUp: (_)=> setState(() {
          isPressed =false;
        }),
        onPointerDown: (_)=> setState(() {
          isPressed = true;
        }),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 45),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow:  [
                /*BoxShadow(
                  blurRadius:blur,
                  offset: -distance,
                  color: Colors.white,
                  inset: isPressed,
                ),*/
                BoxShadow(
                  blurRadius:blur,
                  offset: distance,
                  color: const Color(0xFFA7A9AF),
                  inset:isPressed,
                )
              ],
              borderRadius: BorderRadius.circular(20)
          ),
          child: const SizedBox(height: 85,width: 85,
          ),
        ),
      );
    }

}
