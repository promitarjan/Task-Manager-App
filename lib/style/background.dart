import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager_new/utility/asset_path.dart';

class Background extends StatefulWidget {
  const Background({super.key, required this.child});
  final Widget child;

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          AssetsPath.backgroundSvg,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        MediaQuery.removeViewInsets(
          context: context,
          removeBottom: true, // Prevents resizing due to keyboard
          child: SafeArea(child: widget.child),
        ),
      ],
    );
  }
}
//               "Create a new password to access your account",