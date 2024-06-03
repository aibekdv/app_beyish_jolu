import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsWidget extends StatefulWidget {
  final String text;
  final SvgPicture image;
  final IconData? icon;
  final VoidCallback? onTap;

  const SettingsWidget(
      {super.key,
      required this.text,
      required this.image,
      this.icon,
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
        widget.icon != null
            ? IconButton(
                onPressed: widget.onTap,
                icon: Icon(
                  widget.icon,
                  size: 18,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
