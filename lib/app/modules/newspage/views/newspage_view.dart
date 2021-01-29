import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      body: SingleChildScrollView(
        child: controller.obx(
            (state) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List<Widget>.generate(
                      state.articles.length, (index) => articelCard(index)),
                ),
            onError: (error) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Somthing went wrong $error'),
                      FlatButton(
                        onPressed: controller.getNews,
                        child: Text('Retry'),
                        color: Colors.amber,
                      )
                    ],
                  ),
                ),
            onLoading: Center(child: CircularProgressIndicator())),
        // child: Obx(() => Text(
        //       _newController.data.value.articles[0].author.toString(),
        //       style: TextStyle(fontSize: 20),
        //     )),
      ),
    );
  }

  Widget articelCard(int i) {
    return Column(
      children: [
        Image.network(controller.value.articles[i].urlToImage ??
            'https://image.shutterstock.com/image-vector/default-ui-image-placeholder-wireframes-260nw-1037719192.jpg'),
        Text(controller.value.articles[i].title ?? '',
            style: TextStyle(fontSize: 20)),
        Text(
          controller.value.articles[i].description ?? '',
          style: TextStyle(fontSize: 17),
        ),
        Text(controller.value.articles[i].author ?? '',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 5,
        ),
        // Text(controller.value.articles[i].source ?? '',
        //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        // SizedBox(
        //   height: 5,
        // )
      ],
    );
  }
}
