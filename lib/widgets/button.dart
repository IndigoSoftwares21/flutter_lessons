import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.backgroundColor,
    required this.borderColor,
    required this.label,
    required this.labelColor,
  });

  final Color backgroundColor;
  final Color borderColor;
  final String label;
  final Color labelColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          label,
          style: TextStyle(color: labelColor),
        ),
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            backgroundColor,
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: borderColor)),
          ),
        ),
      ),
    );
  }
}
