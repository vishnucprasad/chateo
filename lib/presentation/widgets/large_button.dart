import 'package:chateo/presentation/core/colors.dart';
import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final TextStyle? titleLarge = Theme.of(context).textTheme.titleLarge;

    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 40,
      ),
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        child: Text(
          text,
          style: titleLarge?.copyWith(
            color: lightColor,
          ),
        ),
      ),
    );
  }
}
