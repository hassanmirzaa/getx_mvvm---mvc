import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key,  this.Loading = false, required this.title, required this.height, required this.width, required this.onPress, required this.textColor, required this.buttonColor});

  final bool Loading;
  final String title;
  final double height, width;
  final VoidCallback onPress;
  final Color textColor,buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Center(
        child: Loading ? CircularProgressIndicator(color: textColor,) : Text(title,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),),
      ),
    );
  }
}