// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:learn/pages/onboarding_page.dart';

class SinglePage extends StatelessWidget {
  const SinglePage({
    Key? key,
    required this.item,
  }) : super(key: key);
  final OnboardingItem item;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(item.image),
        const SizedBox(height: 14),
        Text(
          item.headline,
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 14),
        // some small description
        Text(
          item.subTitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}
