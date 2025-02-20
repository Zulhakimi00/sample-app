// ignore_for_file: must_be_immutable

import 'package:sample_flutter/core/export.dart';

class HeightPrimarySpacer extends StatelessWidget {
  const HeightPrimarySpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2.h,
    );
  }
}

class HeightSecondarySpacer extends StatelessWidget {
  const HeightSecondarySpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.h,
    );
  }
}

class HeightCustomerSpacer extends StatelessWidget {
  HeightCustomerSpacer({super.key, required this.size});
  double size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
    );
  }
}

class WidthPrimarySpacer extends StatelessWidget {
  const WidthPrimarySpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 2.h,
    );
  }
}

class WidthSecondarySpacer extends StatelessWidget {
  const WidthSecondarySpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.h,
    );
  }
}

class WidthCustomerSpacer extends StatelessWidget {
  WidthCustomerSpacer({super.key, required this.size});
  double size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
    );
  }
}
