import 'package:flutter/material.dart';
import 'package:flutterweb/presentation/core/page_wrapper/page_template.dart';

class EcoPage extends StatelessWidget {
  static const String ecoPagePath = '/ecosystem';
  const EcoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageTemplate(
        child: Placeholder(
      color: Colors.blue,
    ));
  }
}
