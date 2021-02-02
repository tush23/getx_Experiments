import 'package:flutter/material.dart';
import 'package:getx_cli/app/modules/models/with_json_serialized/articles.dart';

Widget articelCard(Articles articles) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // FadeInImage(
      //   placeholder: NetworkImage(
      //       'https://reactnativecode.com/wp-content/uploads/2018/02/Default_Image_Thumbnail.png'),
      //   image: NetworkImage(articles.urlToImage),
      // ),
      Image.network(articles.urlToImage ?? '',
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
