import 'package:flutter/material.dart';
import 'package:foodrecipes/model/product.dart';
import 'package:foodrecipes/constant.dart';
import 'package:foodrecipes/screens/detail_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: gap, vertical: 10),
          child: Text(
            'Resep Populer',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Categories(),
        Products(),
      ],
    );
  }
}

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: productList.map((data) {
        return InkWell(
          onTap: () =>
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailScreen(
              foods: data,
            );
          })),
          child: Container(
            height: 200,
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, 2))
            ]),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Image.network(
                      data.image,
                      fit: BoxFit.cover,
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text(
                            data.name,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange[500]),
                            textAlign: TextAlign.start,
                          ),
                          Row(
                            children: [
                              SizedBox(height: 50,),
                              Icon(Icons.bookmark, color: Colors.grey[600],),
                              Text(data.category, style: TextStyle(color: Colors.grey[600], fontSize: 13),)
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            data.description,
                            maxLines: 3,
                            style: TextStyle(
                                color: Colors.black, height: 1.5),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        );
      }).toList(),
    );
    
  }
}

// category
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["semua", "makanan", "minuman"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: gap),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: ((context, index) {
            return categoryItem(index);
          }),
        ),
      ),
    );
  }

  Widget categoryItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: gap),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? textColor : Colors.grey,
              ),
            ),
            Container(
              width: 30,
              height: 2,
              color: selectedIndex == index ? orange : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
