import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, this.onPressed, required this.title});

  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 45,
        width: double.infinity,
        child: ElevatedButton(onPressed: onPressed, child: Text(title)));
  }
}
//onpress ra text lai hamle thau anushar farak dinxam so we have to use it as param
//diffn class ma use garna sakxam with the help of param - data lyauna and data dina ko lagi
