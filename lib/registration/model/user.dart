
class UserModel{
  int? id = 0;
  String name = '';
  String address = '';
  String age = '';
  String phone = '';
  UserModel({  this.id, required this.name, required this.address, required this.age, required this.phone});
  UserModel.fromMap(Map<String, dynamic> json){
        //id = json["id"];
        name = json["name"];
        address = json["address"];
        age = json["age"].toString();
        phone = json["phone"].toString();
      }

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
   // data['id'] = id;
    data['name'] = name;
    data['address'] = address;
    data['age'] = age;
    data['phone'] = phone;
    return data;
  }
}