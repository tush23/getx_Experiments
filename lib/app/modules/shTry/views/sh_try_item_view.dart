import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_cli/app/modules/shTry/controllers/sh_try_controller.dart';


class ShTryItemView extends StatelessWidget {
  // final RxList<List<String>> dataFromShTryController;
  ShTryController _mainCtr=Get.find();

  // ShTryItemView(this.dataFromShTryController);
  //
  // ShTryItemView(this.shCtrList);

  TextEditingController ctrName=TextEditingController();
  TextEditingController ctrEmail=TextEditingController();
  TextEditingController ctrPhone=TextEditingController();
  final int i;
  ShTryItemView(this.i);


  @override
  Widget build(BuildContext context) {
    ctrName.text=_mainCtr.name[i];
    ctrEmail.text=_mainCtr.email[i];
    ctrPhone.text=_mainCtr.phone[i];
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black)
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: ctrName,
            onChanged: (e){
              print(e);
              _mainCtr.name[i]=e;
            },
            decoration: InputDecoration(hintText: "Name"),
          ),
          TextFormField(
            controller: ctrEmail,
            onChanged: (e){
              print(e);
              _mainCtr.email[i]=e;
            },
            decoration: InputDecoration(hintText: "Email"),
          ),
          TextFormField(
            controller: ctrPhone,
            onChanged: (e){
              print(e);
              _mainCtr.phone[i]=e;
            },
            onSaved: (e){
              // data.add(e);
              // print(data);
              print(ctrPhone.text);

            },
            decoration: InputDecoration(hintText: "Phone"),
          ),


        ],
      ),
    );
  }
}
