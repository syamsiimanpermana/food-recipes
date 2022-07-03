import 'package:flutter/material.dart';
import 'package:foodrecipes/model/product.dart';
import 'package:foodrecipes/constant.dart';

class DetailScreen extends StatelessWidget {
  final Product foods;
  const DetailScreen({Key? key, required this.foods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(foods.name,
            style: const TextStyle(color: orange, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
          child: Image.network(foods.image),
          ),
          ),

        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.bookmark, color: orange,),
                  Text(foods.category, style: TextStyle(color: orange, fontSize: 13),),
                  SizedBox(height: 50.0),
                ],
              ),
              
              Text(foods.description),
              SizedBox(height: 20.0),

              Text('Bahan-Bahan : ',
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: foods.ingredients.map((e) {
                return Text('- ${e}');
              }).toList(),
              ),

              SizedBox(height: 20.0),

            Text('Cara Membuat : ',
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: foods.steps.map((e) {
                return Text('- ${e}');
              }).toList(),
              ),

            ],
          ),
        ),
      ],),
      ),
    floatingActionButton: CircleAvatar(
      backgroundColor: orange,
      child: FavoriteBtn()
      ),
    );
  }
}

class FavoriteBtn extends StatefulWidget {
  const FavoriteBtn({Key? key}) : super(key: key);

  @override
  _FavoriteBtnState createState() => _FavoriteBtnState();
}

class _FavoriteBtnState extends State<FavoriteBtn> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() => isFavorite = !isFavorite);
        },
        icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border));
  }
}
