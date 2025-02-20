// ignore_for_file: must_be_immutable

import 'package:sample_flutter/core/export.dart';
import 'package:sample_flutter/service/color.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    super.key,
    required this.title,
    required this.function,
    required this.isDisable,
    this.padding = 14.0,
  });
  Function()? function;
  String title;
  int isDisable;
  double padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isDisable == 1 ? null : function,
      child: Container(
        width: 100.w,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: isDisable == 1 ? duskBlue50 : redTech500,
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.dp,
            fontWeight: FontWeight.bold,
            color: isDisable == 1 ? duskBlue150 : Colors.white,
          ),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  SecondaryButton({
    super.key,
    required this.title,
    required this.function,
    required this.isDisable,
  });
  Function()? function;
  String title;
  int isDisable;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isDisable == 1 ? null : function,
      child: Container(
        width: 100.w,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: isDisable == 1 ? duskBlue50 : duskBlue500,
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.dp,
              fontWeight: FontWeight.bold,
              color: isDisable == 1 ? duskBlue150 : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class TertiaryButton extends StatelessWidget {
  TertiaryButton({
    super.key,
    required this.title,
    required this.function,
    this.isDisable = 0,
  });
  Function()? function;
  String title;
  int isDisable;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isDisable == 1 ? null : function,
      child: Container(
        width: 100.w,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: isDisable == 1 ? pearlGrey : Colors.white,
            border:
                Border.all(color: isDisable == 1 ? dustBlue150 : redTech500)),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.dp,
              fontWeight: FontWeight.bold,
              color: isDisable == 1 ? dustBlue150 : redTech500,
            ),
          ),
        ),
      ),
    );
  }
}
