

import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.headingText,
    required this.buttonText,  this.showTextButton =true, this.onPressed, this.textColor,
  });

  final String headingText;

  final String buttonText;
  final bool showTextButton;
  final void Function () ?onPressed;
  final Color ? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          headingText,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
   if(showTextButton)     TextButton(onPressed: onPressed, child: Text(buttonText))
      ],
    );
  }
}
