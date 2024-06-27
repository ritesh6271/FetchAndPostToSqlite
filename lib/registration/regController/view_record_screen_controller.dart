
import 'package:employee/helper/dbHelper.dart';
import 'package:employee/registration/model/user.dart';
import 'package:get/get.dart';

class ViewRecordScreenController extends GetxController{
  String screenName = 'VIEW RECORD SCREEN';
  RxList<UserModel> userRecordModelList = RxList<UserModel>();
  @override
  void onInit() {
    fetchRecord();

    super.onInit();
  }

  void fetchRecord() async{
    DBHelper dbHelper = DBHelper();
    userRecordModelList.value= await dbHelper.fetchRecord();

  }
}