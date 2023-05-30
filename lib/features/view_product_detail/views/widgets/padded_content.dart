import 'package:flutter/material.dart';

class PaddedContent extends StatelessWidget {
  final Widget child;

  const PaddedContent(this.child, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: child,
    );
  }
}
