import 'package:flutter/material.dart';
import 'package:latkuis/models/data.dart';
import 'package:latkuis/screens/detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menus.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(menu: menus[index])),
            );
          },
          title: Text(menus[index].name),
          subtitle: Text(" ${menus[index].price}"),
          leading: Image.network(menus[index].image),
          trailing: Icon(Icons.arrow_forward_ios),
        );
      },
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("HomeScreen"),
    //   ),
    //   body: ListView.builder(
    //     itemCount: products.length,
    //     itemBuilder: (context, index){
    //       return ListTile(
    //         onTap: (){
    //           Navigator.push(context, MaterialPageRoute(
    //             builder: (context) => DetailScreen(product: products[index])),);
    //         },

    //         title: Text(products[index].name),
    //         subtitle: Text("Rp ${products[index].price}"),
    //         leading: Image.network(products[index].image),
    //         trailing: Icon(Icons.arrow_forward_ios),
    //       );
    //     },
    //   ),
    // );
  }
}
