import 'package:flutter/material.dart';
import 'package:flutterweb/presentation/core/page_wrapper/centered_constraint_wrapper.dart';
import 'package:flutterweb/presentation/core/page_wrapper/page_template.dart';
import 'package:flutterweb/presentation/widgets/developer_experience.dart';
import 'package:flutterweb/presentation/widgets/multi_platform.dart';

class HomePage extends StatelessWidget {
  static const String homePagePath = "/home";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> partblocks = [
      const CenteredConstrainedWrapper(child: MultiPlattform()),
      const CenteredConstrainedWrapper(child: DeveloperExperience())
    ];

    return PageTemplate(
        child: ListView.builder(
            itemCount: partblocks.length,
            itemBuilder: (context, index) {
              return partblocks[index];
            }));
  }
}
