import 'package:flutter/material.dart';
import 'package:project/pages/MainFunc.dart';
import 'package:webfeed/webfeed.dart';
import 'package:project/common/fetch_http_news.dart';
import 'dart:io' as io;


MainFunc main_func = new MainFunc();


class BackgroundNews extends StatelessWidget {
  const BackgroundNews({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return main_func.BackGround(News());
  }
}

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);
  @override
  State<News> createState() => _News();
}

class _News extends State<News> {
  List newsList = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: FutureBuilder(
          future: _getHttpNews(),
          builder: (context, AsyncSnapshot snapshot){
            if(!snapshot.hasData){
              return Center(
                child: CircularProgressIndicator(),
              );
            }else{
              return Container(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                    itemCount: newsList.length,
                    itemBuilder: (BuildContext context, int index){
                    return Card(
                      child: Container(
                        child: Column(
                          children: [
                            Text('${newsList[index].title}')
                          ],
                        ),
                      ),
                    );
                    }),
              );
            }
          },
        ),
      ),
    );
  }
  _getHttpNews() async{
    var response = await fetch();
    var chanel = RssFeed.parse(response.body);
    chanel.items.forEach((element) {
      newsList.add(element);
    });

    return newsList;
  
  }
}
