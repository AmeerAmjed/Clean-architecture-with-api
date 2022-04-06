import 'package:api/app/controller/home.dart';
import 'package:api/app/screen/home/components/post_card.dart';
import 'package:api/base/model/post.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Home extends GetView<HomeController> {
  String title;
  Home({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Obx(
        () => controller.busy.value
            ? const Center(child: CircularProgressIndicator())
            : ListView(
                children: controller.posts.map((post) {
                  return PostContainer(
                    post: post,
                  );
                }).toList(),
              ),
      ),
    );
  }
}
