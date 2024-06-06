import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsWidget extends StatefulWidget {
  final String text;
  final SvgPicture image;
  final Widget? widget;
  final VoidCallback? onTap;

  const SettingsWidget(
      {super.key,
      required this.text,
      required this.image,
      this.widget,
      this.onTap});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.image,
        const SizedBox(width: 10),
        Text(
          widget.text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        const Spacer(),
        widget.widget ??
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
              ),
            )
      ],
    );
  }
}
