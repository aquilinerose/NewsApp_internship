import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import 'getnewsresponse.dart';

class DeskLive extends StatefulWidget {
  const DeskLive({super.key});

  @override
  State<DeskLive> createState() => _DeskLiveState();
}

class _DeskLiveState extends State<DeskLive> {
  final dio = Dio();
  Response? response;
  bool isLoading = false;
  GetNewsResponse model = GetNewsResponse();
  List<Article> newsList = [];
  void request() async {
    // The below request is the same as above.
    response = await dio.get(
      'https://gnews.io/api/v4/search?q=example&apikey=5eedaa1fe3b33570e23fe1386af5079b',
      queryParameters: {'id': 12, 'name': 'dio'},
    );
    model = GetNewsResponse.fromJson(response?.data);
    newsList.addAll(model.articles!);
    //print(response?.data.toString());
    //print("1111111");
    //print(model.articles?.first.title);
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    setState(() {
      isLoading = true;
    });
    // TODO: implement initState
    request();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(itemCount: newsList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.grey,
                            child: Image(
                                image: NetworkImage(
                                  model.articles![index].image!,
                                ),
                                fit: BoxFit.cover),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(model.articles![index].title!,
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87)),
                          ),
                          Text(
                            model.articles![index].content!,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w100,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  },
                )));
  }
}
