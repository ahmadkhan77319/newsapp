// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// import 'productModel.dart';

// class ProductHome extends StatefulWidget {
//   const ProductHome({Key? key}) : super(key: key);

//   @override
//   State<ProductHome> createState() => _ProductHomeState();
// }

// class _ProductHomeState extends State<ProductHome> {
//   List<ProductModel> productList = [];

//   Future<ProductModel> getPostApi() async {
//     final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
//       final data = jsonDecode(response.body.toString());
    
//     if (response.statusCode == 200) {
    

     
//       //productList = responseData.map((json) => ProductModel.fromJson(json)).toList();
//     }

//     return ProductModel.fromJson(data);

//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: FutureBuilder(
//               future: getPostApi(),
//               builder: (context,  snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return Center(child: CircularProgressIndicator());
//                 } else if (snapshot.hasError) {
//                   return Center(child: Text("Error: ${snapshot.error}"));
//                 } else if (!snapshot.hasData) {
//                   return Center(child: Text("No data available"));
//                 } else {
//                   return ListView.builder(
//                     itemCount: snapshot.data!.data!.length,
//                     itemBuilder: (context, index) {
//                       return Card(
//                         child: ListTile(
//                           title: Text(snapshot.data!.data[index].shop),
//                           subtitle: Text(snapshot.data![index].body ?? ''),
//                         ),
//                       );
//                     },
//                   );
//                 }
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // class ProductModel {
// //   int? userId;
// //   int? id;
// //   String? title;
// //   String? body;

// //   ProductModel({this.userId, this.id, this.title, this.body});

// //   factory ProductModel.fromJson(Map<String, dynamic> json) {
// //     return ProductModel(
// //       userId: json['userId'],
// //       id: json['id'],
// //       title: json['title'],
// //       body: json['body'],
// //     );
// //   }
// // }

// }