import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class QuoteGenerator extends StatefulWidget {
  const QuoteGenerator({super.key});

  @override
  State<QuoteGenerator> createState() => _QuoteGeneratorState();
}

class _QuoteGeneratorState extends State<QuoteGenerator> {
  final String quoteURL = "https://api.adviceslip.com/advice";
  String quote='Random Quote';
  Future<void> generateQuote() async{
  var res=await http.get(Uri.parse(quoteURL));
  var result=jsonDecode(res.body);
  print(result["slip"]["advice"]);
  setState(() {
    quote=result["slip"]["advice"];
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 142, 103, 246),
        title: Text("Random Quote",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(quote,
              style:TextStyle(
               fontSize: 20, 
               color: Colors.white
               
              ),),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
             generateQuote();
            },
             child: Text('Generate'))
          ],
        ),
      ),
    );
  }
}