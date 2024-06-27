
import 'package:employee/helper/dbHelper.dart';
import 'package:employee/registration/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:employee/registration/view/registrationView.dart';

class RegistrationController extends GetxController{
final TextEditingController nameController = TextEditingController();
final TextEditingController addressController = TextEditingController();
final TextEditingController ageController = TextEditingController();
final TextEditingController phoneController = TextEditingController();


addRecord()async{
  UserModel userModel = UserModel(
    name: nameController.text,
    address: addressController.text,
    age: ageController.toString(),
    phone: phoneController.toString()
  );

  DBHelper dbHelper = DBHelper();
  UserModel model = await dbHelper.insertData(userModel);
  if(model.id != null && model.id !=0){
    print('DATA INSERTED SUCCESSFULLY !!! ${model.id}');
  }else{
    print('ERROR !!!');
  }
}

//final services = UserServices();

  //get _nameController => null;

@override
void onInit() {
  super.onInit();

}
// submit(){
//   services.saveUser(name.text, address.text, int.parse(age.text), int.parse(phone.text));
//   SqfliteDisplayData();
// }


}