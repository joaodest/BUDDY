import 'package:buddy_app/core/ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class BuddyLoader extends StatelessWidget {
  const BuddyLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.fallingDot(
          color: Constants.buttonColor, size: 60),
    );
  }
}
