import 'package:flutter/material.dart';
import 'package:latkuis/models/data.dart';

class DetailScreen extends StatelessWidget {
  final Menu menu;

  const DetailScreen({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(menu.name),
      ),
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          menu.image,
          width: 350,
          height: 300,
          fit: BoxFit.cover,
        ),

        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                menu.name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                ),

                const SizedBox(height: 5),
              
                //kategeori
                Text(
                  menu.category,
                  style: const TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 168, 175, 160),
                ),
                ),

              const SizedBox(height: 20),

              //harga
                Text(
                  menu.price,
                  style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 60, 104, 9),
                ),
                ),

              const SizedBox(height: 20),

                const Text(
                  "Deskripsi", style: TextStyle(
                    fontSize: 16, 
                    fontWeight: FontWeight.bold,
                ),
                ),

                const SizedBox(height: 5),

                Text(
                  menu.description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
            ],
          )
        )
      ],
      )
    )







      // body: Column(
      //   children: [
      //     Center(
      //       child: Image.network(menu.image)
      //     ),

      //     ElevatedButton(
      //       onPressed: (){
      //         Navigator.pop(context);
      //       }, 
      //       child: Text("Kembali ke Home")
      //     )
      //   ],
      // ),
    );
  }
}