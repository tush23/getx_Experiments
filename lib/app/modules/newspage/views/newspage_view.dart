import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cli/app/modules/newspage/controllers/newpagecon_with_api_provider.dart';
import 'package:getx_cli/app/modules/newspage/model/news_model.dart';

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
                  children: List<Widget>.generate(state.articles.length,
                      (index) => articelCard(state.articles[index])),
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

  Widget articelCard(Articles articles) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(articles.urlToImage,
            width: double.infinity,
            height: 200,
          
            fit: BoxFit.fill, loadingBuilder: (BuildContext context,
                Widget child, ImageChunkEvent loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            height: 200,
            width: double.infinity,
            child: Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes
                    : null,
              ),
            ),
          );
        }),
        Text(articles.title ?? '', style: TextStyle(fontSize: 20)),
        Text(
          articles.description ?? '',
          style: TextStyle(fontSize: 17),
        ),
        Text(articles.author ?? '',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 5,
        ),
        Text(articles.source.name ?? '',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
