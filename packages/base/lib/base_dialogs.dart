part of base;

noLocationDialog({Function onOkPress, String desc}) => Get.defaultDialog(
    title: 'Location Required!',
    radius: 8,
    barrierDismissible: false,
    confirm: Container(
      // padding: const EdgeInsets.symmetric(horizontal: 16),
      width: 100,
      height: 30,
      // padding: EdgeInsets.symmetric(horizontal: 32),
      child: ElevatedButton(
        // disabledColor: Colors.grey,
        //   enableFeedback: true,
        //   color: Colors.black12,
          onPressed: onOkPress??Get.back,

          child: Text(
            'Okay',
            style: Get.textTheme.button.copyWith(color: Colors.white),
          )),
    ),
    middleText:
    desc ?? 'Please enable location permission\nfor better results ');
exceptionDialogs({Function onOkPress, String e}) => Get.defaultDialog(
    title: 'Something went wrong!',
    radius: 8,
    barrierDismissible: false,
    confirm: Container(
      // padding: const EdgeInsets.symmetric(horizontal: 16),
      width: 100,
      height: 30,
      // padding: EdgeInsets.symmetric(horizontal: 32),
      child: ElevatedButton(
        // disabledColor: Colors.grey,
        //   enableFeedback: true,
        //   color: Colors.black12,
          onPressed: onOkPress??Get.back,

          child: Text(
            'Okay',
            style: Get.textTheme.button.copyWith(color: Colors.white),
          )),
    ),
    middleText:
    e ?? 'Come back ofter some time\nWe are fixing the issue');
