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
          onError: (error) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(error.toString()),
                    FlatButton(
                      onPressed: controller.getNews,
                      child: Text('Retry'),
                      color: Colors.amber,
                    )
                  ],
                ),
              ),
          onLoading: Center(child: CircularProgressIndicator())),
    );
  }

  Widget articelCard(Articles articles) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // FadeInImage(
        //   placeholder: NetworkImage(
        //       'https://reactnativecode.com/wp-content/uploads/2018/02/Default_Image_Thumbnail.png'),
        //   image: NetworkImage(articles.urlToImage),
        // ),
        Image.network(articles.urlToImage,
            errorBuilder: (context, ob, stacktrece) => Container(
                  height: 200,
                  width: double.infinity,
                  child: Center(
                    child: Icon(Icons.error),
                  ),
                ),
            width: double.infinity,
            height: 200,
            repeat: ImageRepeat.repeat,
            fit: BoxFit.fill,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent loadingProgress) {
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
        Text(articles.title ?? '',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text(
          articles.description ?? '',
          style: TextStyle(fontSize: 16),
        ),
        Text(articles.author ?? '',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        // SizedBox(
        //   height: 5,
        // ),
        Text(articles.source.name ?? '',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
