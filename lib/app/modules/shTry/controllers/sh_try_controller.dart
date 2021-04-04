import 'package:get/get.dart';

class ShTryController extends GetxController {
  //TODO: Implement ShTryController

  RxList<String> name=RxList<String>();
  RxList<String> email=RxList<String>();
  RxList<String> phone=RxList<String>();

  RxList<List<String>> data= RxList<List<String>>();
  // ShTryController _shTryController=Get.find();

  // ShTryItemController _shTryItemController=ShTryItemController();
  var count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    increment();
  }
  @override
  void onClose() {}
  void increment() {
    name.add('');
    email.add('');
    phone.add('');
    data.add(List<String>());
    count.value++;
  }


  getAllItemsList(){

  }
  onAddPress(){
    // _shTryItemController.addItem();
    print('data added in item ctr-->');
    for (int i=0;i<count.value;i++){
      data[i].add(name[i]);
      data[i].add(email[i]);
      data[i].add(phone[i]);
    }

    // data.add([ctrName.text,ctrPhone.text,ctrEmail.text]);
    // print('data added in item ctr-->');
    print(data);
  }

  void decrement() {
    data.removeLast();
    count.value--;

  }
}
