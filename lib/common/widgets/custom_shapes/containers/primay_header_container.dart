// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:retroreviveapp/common/widgets/curved_edges/curved_edges_widget.dart';
import 'package:retroreviveapp/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TcurvedEdgeWidget(
      child: Container(
        color: TColors.primaryColor,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              child,
            ],
          ),
        ),
      ),
    );
  }
}
