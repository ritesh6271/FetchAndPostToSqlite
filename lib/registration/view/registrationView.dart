import 'package:employee/registration/regController/registrationController.dart';
import 'package:employee/registration/view/view_record_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
//import 'package:employee/registration/regController/registrationController.dart';

class RegistrationPage extends StatelessWidget{
  RegistrationController loginController = Get.put(RegistrationController());
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];
    var child = Scaffold(
      //backgroundColor: colorPrimary,
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 150,),
            child: Column(

              children: [
                TextFormField(
                  controller: loginController.nameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Enter applicant name",
                    prefixIcon: Icon(
                      Icons.home,
                      color: Colors.grey,
                    ),
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 13,
                        color: Colors.grey),
                    enabledBorder: new OutlineInputBorder(
                      borderSide: new BorderSide(
                          color: Colors.black, width: 3),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderSide: new BorderSide(
                          color: Colors.black, width: 3),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: loginController.addressController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Enter address",
                    prefixIcon: Icon(
                      Icons.home,
                      color: Colors.grey,
                    ),
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 13,
                        color: Colors.grey),
                    enabledBorder: new OutlineInputBorder(
                      borderSide: new BorderSide(
                          color: Colors.black, width: 3),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderSide: new BorderSide(
                          color: Colors.black, width: 3),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: loginController.ageController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Enter age",
                    prefixIcon: Icon(
                      Icons.home,
                      color: Colors.grey,
                    ),
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 13,
                        color: Colors.grey),
                    enabledBorder: new OutlineInputBorder(
                      borderSide: new BorderSide(
                          color: Colors.black, width: 3),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderSide: new BorderSide(
                          color: Colors.black, width: 3),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: loginController.phoneController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Enter phone number",
                    prefixIcon: Icon(
                      Icons.home,
                      color: Colors.grey,
                    ),
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 13,
                        color: Colors.grey),
                    enabledBorder: new OutlineInputBorder(
                      borderSide: new BorderSide(
                          color: Colors.black, width: 3),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderSide: new BorderSide(
                          color: Colors.black, width: 3),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () async {
                    //await loginController.submit();
                    loginController.addRecord();
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(
                          width: 2, color: Colors.black),
                    ),
                    foregroundColor:
                    MaterialStateProperty.all(
                        Colors.black),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                            vertical: 2, horizontal: 30)),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () async {
                    //await loginController.submit();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ViewRecordScreen()));
                  },
                  child: Text(
                    'ViewData',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(
                          width: 2, color: Colors.black),
                    ),
                    foregroundColor:
                    MaterialStateProperty.all(
                        Colors.black),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                            vertical: 2, horizontal: 30)),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    widgetList.add(child);

    return Stack(children: widgetList);
  }


}