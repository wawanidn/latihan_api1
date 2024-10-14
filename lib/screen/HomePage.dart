import 'package:flutter/material.dart';
import 'package:latihan_api2/screen/api2.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Wann Market',
          style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Api2();
                }));
              }, 
              child: const Text('Tekan Tombol'),
                ),
                const SizedBox(
                  height: 20,
                ),
          ],
        ),
      ),
    );
  }
}