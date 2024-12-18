import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/resources/resources.dart';
import 'package:everlook_mobile/source/custom_painters.dart';
import 'package:everlook_mobile/ui_kit/buttons/app_button.dart';
import 'package:everlook_mobile/ui_kit/buttons/custom_button.dart';
import 'package:everlook_mobile/ui_kit/text_field/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/features/home/presentation/screens/home/home_wm.dart';

/// {@template home_screen.class}
/// HomeScreen.
/// {@endtemplate}
class HomeScreen extends ElementaryWidget<IHomeWM> {
  /// {@macro home_screen.class}
  const HomeScreen({
    super.key,
    WidgetModelFactory wmFactory = defaultHomeWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IHomeWM wm) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppButton(
            title: 'title',
            leftIcon: AssetIcons.offerIcon,
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          AppTextField(
            textController: TextEditingController(),
            hintText: 'Hint text',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomIcons.buttonArrow(),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'title',
            height: 44,
            width: 181,
            textColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'title',
            height: 44,
            width: 181,
            textColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'title',
            height: 44,
            width: 181,
            textColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'title',
            height: 44,
            width: 181,
            textColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'title',
            height: 44,
            width: 181,
            textColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'title',
            height: 44,
            width: 181,
            textColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'title',
            height: 44,
            width: 181,
            textColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'title',
            height: 44,
            width: 181,
            textColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'title',
            height: 44,
            width: 181,
            textColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'title',
            height: 44,
            width: 181,
            textColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'title',
            height: 44,
            width: 181,
            textColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'title',
            height: 44,
            width: 181,
            textColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'title',
            height: 44,
            width: 181,
            textColor: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
