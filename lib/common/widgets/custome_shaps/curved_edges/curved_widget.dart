

import 'package:e_commerceapp/common/widgets/custome_shaps/curved_edges/curved_edge.dart';
import 'package:flutter/material.dart';

class ECustomeCurvedWidget extends StatelessWidget {
  const ECustomeCurvedWidget({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: ECustomeCurvedEdge(), child: child);
  }
}
