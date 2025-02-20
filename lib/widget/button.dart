// ignore_for_file: must_be_immutable

import 'package:sample_flutter/core/export.dart';
import 'package:sample_flutter/service/color.dart';

class PrimaryButton extends StatelessWidget {
  String title;
  Function() onPressed;
  bool isLoading;
  PrimaryButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isLoading ? accentColor : primaryColor,
        ),
        child: Text(
          isLoading ? 'Loading...' : title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
