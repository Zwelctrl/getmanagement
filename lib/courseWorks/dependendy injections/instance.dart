import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/courseWorks/Rx_obx/controller001.dart';

class InstanceTest extends StatelessWidget {
  const InstanceTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    // ConForTest conTest =
    //     Get.put(ConForTest(), tag: 'instance1', permanent: true);

    // //memory for lazyput will take place in ram only when it is initialized
    // //if fenix is true, the instance will be discarded when not used, but create again when called
    // Get.lazyPut(() => ConForTest(), tag: 'instance2', fenix: true);

    // // Here, permanent will be true by default and singleton is false
    // Get.create(() => MyController());

    // used for asyncnhronous operations
    Get.putAsync(() async => await MyController());

    return Scaffold(
      appBar: AppBar(
        title: Text("instance test"),
      ),
    );
  }
}

class ConForTest extends GetxController {
  
}
