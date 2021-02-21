import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cli/app/customs/article_view.dart';

import 'package:getx_cli/app/modules/newspage/controllers/newpagecon_with_api_provider.dart';

class NewsPageView extends GetView<NewsControllerWithApiProviders> {
  @override
  Widget build(BuildContext context) {
    // controller.getNews();
    // controller.;
    return Scaffold(
        appBar: AppBar(
          title: Text('News'),
          centerTitle: true,
        ),
        // body: Column(
        //   children: [
        //     Obx(()=>Text(controller.apiProvider.connectionStatus)),
        //     // FlatButton(onPressed: controller.initConnectivity, child: Text('Hit me'))
        //   ],
        // ),
        body: controller.obx(
            (state) => state.articles.isEmpty
                ? Center(child: Text('No Articles'))
                : ListView.separated(
                    itemCount: state.articles.length,
                    shrinkWrap: true,
                    itemBuilder: (ctx, i) => articelCard(state.articles[i]),
                    separatorBuilder: (ctx, i) => Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Divider(
                        color: Colors.black,
                        height: 2,
                        thickness: 2,
                      ),
                    ),
                  ),
            // onError: (error) => Handler()
            //     .error(errorString: error, retryPressed: controller.onReady),
            // onLoading: Handler().loading()
            // onLoading: Center(child: CircularProgressIndicator())),
            )
    );
  }
}
