import 'package:flutter/material.dart';
import 'package:meyrick/components/grid_card.dart';
import 'package:meyrick/screens/login.dart';
import 'package:meyrick/screens/products.dart';
import 'package:meyrick/utils/firestore.dart';

import '../components/loader.dart';
import '../models/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final data = ["1","2"];
  Future<List<Product>>? products;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    products = FireStoreUtil.getProducts([]);
  }
  @override
  Widget build(BuildContext context) {
    onCardPress(Product product){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductScreen(product: product,)));

    }
    return FutureBuilder(
        future: products,
        builder:(context,AsyncSnapshot<List<Product>>snapshot){
          if(snapshot.hasData && snapshot.data!=null){
            return GridView.builder(
                itemCount: snapshot.data?.length,
                padding: EdgeInsets.symmetric(vertical: 30),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 30,),
                itemBuilder: (BuildContext context, int index){
                  return GridCard(
                    product:snapshot.data![index],
                      index: 0,
                      onPress:() {
                    onCardPress(snapshot.data![index]);
                  });

                });
          }
          else{
            return  Center(child: const Loader());
    }
        });
  }
}
