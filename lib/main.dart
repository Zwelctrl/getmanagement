import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:learn_getx/courseWorks/GetView/get_view.dart';
import 'package:learn_getx/courseWorks/Rx_obx/getBuilder.dart';
import 'package:learn_getx/courseWorks/Rx_obx/getput_getfind.dart';
import 'package:learn_getx/courseWorks/Rx_obx/test_001.dart';
import 'package:learn_getx/courseWorks/binding/bindbuilderview.dart';
import 'package:learn_getx/courseWorks/binding/bindcodes.dart';
import 'package:learn_getx/courseWorks/binding/presentation.dart';
import 'package:learn_getx/courseWorks/binding/presentation2.dart';
import 'package:learn_getx/courseWorks/bottomSheet.dart';
import 'package:learn_getx/courseWorks/dependendy%20injections/instance.dart';
import 'package:learn_getx/courseWorks/dialog.dart';
import 'package:learn_getx/courseWorks/get_lifecircle/ui_view.dart';
import 'package:learn_getx/courseWorks/get_storage/get_storage_exp.dart';
import 'package:learn_getx/courseWorks/getx_services/getxservice_con.dart';
import 'package:learn_getx/courseWorks/getx_services/view_service.dart';
import 'package:learn_getx/courseWorks/internationalization/messages.dart';
import 'package:learn_getx/courseWorks/internationalization/viewUI.dart';
import 'package:learn_getx/courseWorks/navigations/namedRoutes/first_page.dart';
import 'package:learn_getx/courseWorks/navigations/namedRoutes/out.dart';
import 'package:learn_getx/courseWorks/navigations/namedRoutes/second_page.dart';
import 'package:learn_getx/courseWorks/navigations/namedRoutes/third_page.dart';
import 'package:learn_getx/courseWorks/navigations/namedRoutes/unknown_route.dart';
import 'package:learn_getx/courseWorks/navigations/page_one.dart';

import 'package:learn_getx/courseWorks/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:learn_getx/courseWorks/test01.dart';
import 'package:learn_getx/courseWorks/uniqueID/view.dart';
import 'package:learn_getx/courseWorks/workers/worker_view.dart';

Future<void> main() async {
  await initService();
  await GetStorage.init();

  // triggers the instances of the classes in class BindCodes
  BindCodes().dependencies();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double blurNotBlur = 0;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: BindCodes(),
      //for internationalization
      translations: MessageData(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),

      unknownRoute: GetPage(name: "/notFound", page: () => unKnownRouteExp()),
      initialRoute: "/getview",
      getPages: [
        GetPage(name: "/", page: () => FirstPageExp()),
        GetPage(name: "/notFound", page: () => unKnownRouteExp()),
        GetPage(name: "/Second", page: () => SecondPageExp()),
        GetPage(name: "/Test01", page: () => Text01()),
        GetPage(
            name: "/Third",
            page: () => ThirdPageExp(),
            transition: Transition.downToUp),

        // parameters in which u can carry datas
        GetPage(name: "/out/:someValueToShow", page: () => outPage()),
        // GetPage(name: name, page: page),
        GetPage(name: "/Rx_obx/seperate", page: () => PresentationExp()),
        GetPage(name: "/getput_getfind", page: () => GetPut()),
        GetPage(name: "/GetBuider", page: () => GetBuilderExp()),
        GetPage(name: "/LifeCycle", page: () => LifeCycleExp()),
        GetPage(name: "/viewUni", page: () => viewExp()),
        GetPage(name: "/workers", page: () => WorkersView()),
        GetPage(name: "/inter", page: () => InternationalizationUI()),
        GetPage(name: "/instanceTest", page: () => InstanceTest()),
        GetPage(name: "/getXservice", page: () => GetXServices()),
        GetPage(name: "/getStorage", page: ()=> GetStorageExp()),
        GetPage(name: "/getview", page: ()=>GetViewExp()),

        //binding applied at route level
        GetPage(
          name: "/binding",
          page: () => BindindCodes(),
          // binding: BindCodes()
        ),

        //binding builders
        GetPage(
            name: "/bindHome",
            page: () => BindBuildersView(),
            binding: BindingsBuilder(
                () => {Get.lazyPut<BindBuildCon>(() => BindBuildCon())}))
      ],

      debugShowCheckedModeBanner: false,
      // home: snackBarGetX(),
      home: FirstPageExp(),
    );
  }
}
