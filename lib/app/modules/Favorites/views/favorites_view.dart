import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/app/widget/bottom_nav.dart';

// import '../../../routes/app_pages.dart';
import '../controllers/favorites_controller.dart';

class FavoritesView extends GetView<FavoritesController> {
  const FavoritesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FavoritesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FavoritesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        index: 4,
        onItemTapped: (index) {},
      ),
    );
  }
}
