
import 'package:employee/registration/regController/view_record_screen_controller.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get_core/src/get_main.dart';

class ViewRecordScreen extends StatelessWidget{
  ViewRecordScreenController controller = Get.put(ViewRecordScreenController());
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];
    var child = Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(controller.screenName),
      ),
      //backgroundColor: colorPrimary,
      body:
      Obx(() => controller.userRecordModelList.isNotEmpty?
      ListView.builder(
          itemCount: controller.userRecordModelList.length,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              leading: CircleAvatar(),
              title: Text(controller.userRecordModelList[index].name),
              subtitle: Text(controller.userRecordModelList[index].address),

            );
          },
      ):Center(child: CircularProgressIndicator()),
      )
    );
    widgetList.add(child);

    return Stack(children: widgetList);
  }

}