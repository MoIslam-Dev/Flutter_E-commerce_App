

import 'package:e_commerceapp/common/widgets/custome_shaps/custome_containers/circulaire_container.dart';
import 'package:e_commerceapp/common/widgets/custome_shaps/curved_edges/curved_widget.dart';
import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EPrimaryHeaderContainer extends StatelessWidget {
  const EPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ECustomeCurvedWidget(
      child: Container(
        color: EColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: CirculaireContainer(
                  color: EColors.textWhite.withOpacity(0.1),
                )),
            Positioned(
                top: 100,
                right: -300,
                child: CirculaireContainer(
                  color: EColors.textWhite.withOpacity(0.1),
                )
                
                ),
                child
          ],
          
        ),
      ),
    );
  }
}
