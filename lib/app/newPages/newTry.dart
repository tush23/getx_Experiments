import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NewTry extends StatefulWidget {
  @override
  _NewTryState createState() => _NewTryState();
}

String value = 'Nothing';

class _NewTryState extends State<NewTry> {
  sendData() async {
    Map<String, String> requestHeaders = {
      'Accept': 'application/json',
      'Authorization':
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZTMyMTA0YmVjYWI3MjQ3ZmE5YTQwMzVhMmNjNDQ2YmQwNzZhZTBlYTE3YTgyM2RiZjY3N2M5NDAxMTgxYzdiMGQxZTgyYTBjNGEzNTNkZDkiLCJpYXQiOjE2MTQ1ODI0NzUsIm5iZiI6MTYxNDU4MjQ3NSwiZXhwIjoxNjQ2MTE4NDc1LCJzdWIiOiIyNzIiLCJzY29wZXMiOltdfQ.hhODngxRa1z6Y3nRPsV17rkF7d_V3r7nHt2LKeNvji5xL9A3zV6UbZ3SlP8aFmslVyEEL6RnVrAPRwZ3EfoOXLOCmaxphxw7p0dR6fu2YM4Wzd_Xi8m-Th4bBNunwRksr3i1qDHmWGEEeH7nojD9XgLOqLnOzIyaay-2JLdEwncWUF1DDKOtp4JqwrPlKHrBwe2ZPtWcv7hgIjGkeLgDjIChcaVKCU3L4V9786jyX_Bhtip_wnSuHS02jRCY8g9TcmH2Xjk4LZlwPwlAqTj1ZLtBD2hDJofh1RB6v6ihhs3MuArPERNzjf5FRaVX_IHAGLeoAvMhbaBVLUwEPcYM_L7Vrj-51PivOWSrizAUlYxRguxGQWlgJ9DBqKHrBWCPsBAtd4-pXlTCLVV3Q8BZt2-2H-tkZjzyQu1hLDyel0LFGAYpbadc9ucOU_vL37-W2glGp5sTCFtERWJ50hvqouRmrYNzUJaAHVd58bFqx_T68MBH3ocI-VcGHXBPANOvU56MiqMDW9s-bSgytIFoMO42GedbwbUt-X6knbCuJvWY8FIPcaytVWAxyZOHVpHul9hnYtjWqe3WtwvXzlhDk1fIJmhEzmFeJebko1OWotDzIVcaRyVsFmLW-FdRzE0BMibBmkuW69Vzdi90CFLbhzadr_mHU02cbZMzqvIaO90"
    };
    List<String> data = ['1', '2'];
    Map<String, String> map={
      'restaurant_id':'14',
      'menu_id':'229',
      'variant_id':'1',
      'add_on_id':json.encode(data.toList()),
      'action_type':'1'
    };
    print('-------------$map');
    http.Response request =await http
        .post(
      'https://fimihub.com/api/user/addToCart',
      headers: requestHeaders,
      body:map,
    )
        .catchError((onError) {
      print('##################################');
      print(onError);
    });
    print('############request.request###################### ${request.request}');
    print('############request.body###################### ${request.body}');
    print('############request.statusCode###################### ${request.statusCode}');
    print('############request.reasonPhrase###################### ${request.reasonPhrase}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          color: Colors.yellow,
          onPressed: () {
            sendData();
          },
          child: Text('Press Me'),
        ),
        Text(value)
      ],
        ),
      ),
    );
  }
}
