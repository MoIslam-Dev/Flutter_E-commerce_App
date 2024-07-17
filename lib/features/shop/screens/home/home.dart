import 'package:e_commerceapp/common/widgets/custome_shaps/custome_containers/primary_header_container.dart';
import 'package:e_commerceapp/features/shop/screens/home/widgets/home_appbar.dart';


import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EPrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppbar()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
