import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api2 extends StatefulWidget {
  const Api2({super.key});

  @override
  State<Api2> createState() => _Api1State();
}

class _Api1State extends State<Api2> {
  List<dynamic> posts = [];
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catalogues',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisSpacing: 50,
            crossAxisSpacing: 20,
          ),
          itemCount: posts.length,
          itemBuilder: (context, index) {
            final post = posts[index];
            final title = post['title'];
            final imageUrl = post['url'];
        
            return Container(
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2))],
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                   
                 Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  Flexible(
                    child: Image.network(
                      imageUrl,
                      height: 200, 
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getProduct();
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
  ),
    );
  }

  void getProduct() async {
    const url = 'https://jsonplaceholder.typicode.com/photos?_start=0&_limit=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);

    setState(() {
      posts = json;
});
}
}