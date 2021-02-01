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
        body: controller.obx(
          (state) => state.articles.isEmpty
              ? Center(child: Text('No Articles'))
              : ListView.separated(
                  itemCount: state.articles.length,
                  shrinkWrap: true,
                  itemBuilder: (ctx, i) => articelCard(state.articles[i]),
                  separatorBuilder: (ctx, i) => Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Divider(
                      color: Colors.black,
                      height: 2,
                      thickness: 2,
                    ),
                  ),
                ),
          // onError: (error) => Center(
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Text(error.toString()),
          //           FlatButton(
          //             onPressed: controller.getNews,
          //             child: Text('Retry'),
          //             color: Colors.amber,
          //           )
          //         ],
          //       ),
          //     ),
          // onLoading: Center(child: CircularProgressIndicator())),
        ));
  }
}
