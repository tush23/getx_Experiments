import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cli/app/customs/article_view.dart';
import 'package:getx_cli/app/modules/search/controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SearchView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: "Search news"),
              onChanged: controller.getEverything,
            ),
            Obx(() => Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  color: Colors.blue,
                  child:
                      Text('Searched for==> ${controller.searchedText.value}'),
                )),
            controller.obx(
                (state) => state.articles.isEmpty
                    ? Center(child: Text('No Articles'))
                    : ListView.separated(
                        itemCount: state.articles.length,
                        shrinkWrap: true,
                        itemBuilder: (ctx, i) => articelCard(state.articles[i]),
                        separatorBuilder: (ctx, i) => Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
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
                          // FlatButton(
                          //   onPressed: controller.getNews,
                          //   child: Text('Retry'),
                          //   color: Colors.amber,
                          // )
                        ],
                      ),
                    ),
                onLoading: Center(child: CircularProgressIndicator())),
          ],
        ),
      ),
    );
  }
}
