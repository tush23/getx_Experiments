part of base;

noLocationDialog({Function onOkPress, String desc}) => AlertDialog(

    title: Text('Location Required!',textAlign: TextAlign.center,),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    actionsOverflowDirection: VerticalDirection.up,

    actions:[
      Container(
        // padding: const EdgeInsets.symmetric(horizontal: 16),
        width: 300,
        height: 30,
        padding: EdgeInsets.symmetric(horizontal: 100),
        child: ElevatedButton(
          // disabledColor: Colors.grey,
          //   enableFeedback: true,
          //   color: Colors.black12,
            onPressed: onOkPress,

            child: Text(
              'Okay',
              // style: Get.textTheme.button.copyWith(color: Colors.white),
            )),
      ),
    ] ,
    content:Text(desc ?? 'Please enable location permission\nfor better results',textAlign: TextAlign.center)
    );
exceptionDialogs({Function onOkPress, String e}) =>AlertDialog(

    title: Text('Something went wrong!',textAlign: TextAlign.center,),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    actionsOverflowDirection: VerticalDirection.up,

    actions:[
      Container(
        // padding: const EdgeInsets.symmetric(horizontal: 16),
        width: 300,
        height: 30,
        padding: EdgeInsets.symmetric(horizontal: 100),
        child: ElevatedButton(
          // disabledColor: Colors.grey,
          //   enableFeedback: true,
          //   color: Colors.black12,
            onPressed: onOkPress,

            child: Text(
              'Okay',
              // style: Get.textTheme.button.copyWith(color: Colors.white),
            )),
      ),
    ] ,
    content:Text(e ?? 'Come back ofter some time\nWe are fixing the issue',textAlign: TextAlign.center)
);
