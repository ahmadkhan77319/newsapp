import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
List<PostsModel> getList=[];
  Future<List<PostsModel>>getpostApi()async{
   final response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts")) ;

   if(response.statusCode==200){
     var data=jsonDecode(response.body.toString());
     for(Map<String, dynamic>i in data){
      getList.add(PostsModel.fromJson(i));
     }
     return getList;
   }
   else{

     return getList;

   }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(future: getpostApi(),
             builder: (context,snapshot){

            if(!snapshot.hasData){
              return Text("loading");
            }
            else{
              return ListView.builder(
                itemCount: getList.length,
                itemBuilder: (context,index){

                  return Card(
                    child: Column(
                      children: [
                        Text("Title\n${getList[index].title.toString()}"),
                          Text(getList[index].body.toString()),

                      ],
                    ));

                });
            }
             }
            ),
          )
        ],
      ),
    );
  }
}




class PostsModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostsModel({this.userId, this.id, this.title, this.body});

  PostsModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}