import 'package:flutter/material.dart';

class Product {
  String name;
  String category;
  String image;
  String description;
  List<String> steps;
  List<String> ingredients;

  Product({
    required this.name,
    required this.category,
    required this.image,
    required this.description,
    required this.steps,
    required this.ingredients,
  });
}

var productList = [
  Product(
      name: "Bumbu ayam kecap",
      category: "makanan",
      image:
          "https://i0.wp.com/resepkoki.id/wp-content/uploads/2017/01/Resep-Ayam-Goreng-Kecap.jpg?fit=1920%2C1865&ssl=1",
      description:
          "bumbu ayam kecap adalah makanan yang berbahan dasar ayam yang kemudian di olah dengan kecap",
      steps: [
        "Tumis bawang merah, bawang putih, jahe, daun jeruk, cabai iris, dan cabai yang dihaluskan hingga harum dan tercampur rata.",
        "Tambahkan kecap manis, kecaphttps://cookingwithmamamiyuki.files.wordpress.com/2012/10/pa060452-e1351656947711.jpg asin, saus tomat, saus sambal, dan cabai halus, aduk rata.",
        "Tambahkan pala, lada, dan air lemon.",
        "Masukkan ayam, aduk rata.",
        "Tambahkan air secukupnya, aduk lagi hingga airnya mengental menyusut (kentalnya sesuaikan dengan selera). Koreksi rasa. Tambahkan garam jika kurang.",
        "Tambahkan daun bawang dan bawang bombay, aduk rata, matikan api kompor.",
      ],
      ingredients: [
        "3 siung bawang putih, cincang halus",
        "5 siung bawang merah, cincang halus",
        "2 cm jahe, iris",
        "1/2 siung bawang bombay, iris",
        "1/2 batang daun bawang, potong",
        "3 buah cabai merah, iris serong",
        "3 lembar daun jeruk",
        "1/2 sdt lada bubuk",
        " 1/2 sdt pala bubuk",
        "8 sdm kecap",
      ]),
  Product(
      name: "Bumbu semur daging Betawi",
      category: "makanan",
      image:
          "https://www.topwisata.info/wp-content/uploads/2021/08/Resep-semur-daging-sapi.webp",
      description:
          "makanan khas betawi ini terbuat dari daging dan rasanya pasti bikin kamu ketagihan",
      steps: [
        "Tumis bumbu halus bersama bahan B sampai harum matang dan tidak langu.",
        "Masukkan daging lalu aduk hingga daging berubah warna. Masukkan bahan A lalu aduk rata, masak hingga daging empuk."
      ],
      ingredients: [
        "15 sdm kecap manis",
        "2 sdm gula aren (sisir)",
        "1 sdm kecap ikan atau kecap asin",
        "1 liter air",
        "2 sdm bawang goreng (sebagai bumbu)",
        "Garam, gula pasir dan kaldu bubuk secukupnya",
      ]),
  Product(
      name: "semur daging saus tiram",
      category: "makanan",
      image:
          "https://selerasa.com/wp-content/uploads/2015/05/images_daging_tumis-daging-saus-tiram.jpg",
      description:
          "semur yang satu ini tidak kalah enak juga dengan semur lainnya terbuat dari bahan yang mudah di dapatkan juga pastinya",
      steps: [
        "Dalam wajan, panaskan margarin lalu tumis bumbu halus dan bawang bombay hingga wangi, kemudian masukkan daging cincang. Aduk rata hingga daging berubah warna kemudian beri air.",
        "Tambahkan saus tiram, saus tomat dan kecap manis, gula, garam, merica, kaldu jamur, dan kaldu ayam bubuk. Aduk hingga merata lalu masukkan bawang merah goreng. Biarkan air menyusut."
      ],
      ingredients: [
        "1/2 buah bawang bombay",
        "1 sdm saus tiram",
        "2 sdm saus tomat",
        "3 sdm kecap manis",
        "Garam",
        "Gula",
        "Kaldu jamur bubuk",
        "Kaldu ayam bubuk",
        "Merica bubuk",
        "1 sdm margarin untuk menumis",
        "Air secukupnya",
        "2 sdm bawang merah goreng",
      ]),
  Product(
      name: "Oreo Frappucino",
      category: "minuman",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQye4adqKxIS_OUc4Rt11AnT72x6XeaI5kOgQ&usqp=CAU",
      description:
          "minuman ini pas banget buat di minum pas cuaca lagi panas panasnya",
      steps: [
        "Masukkan semua bahan ke blender.",
        " Blender sampai es batu halus.",
        " Tambahkan Oreo sesuai selera.",
        " Setelah halus, pindahkan ke gelas. Kamu bisa menambahkan topping cookies Oreo dan cream.",
      ],
      ingredients: [
        "Gula 4 sdm yang dicairkan",
        "Susu plain atau original",
        "Es batu",
        "2 cookies Oreo",
      ]),
  Product(
      name: "es jeruk",
      category: "minuman",
      image:
          "https://cookingwithmamamiyuki.files.wordpress.com/2012/10/pa060452-e1351656947711.jpg",
      description:
          "berbahan dasar jeruk dan pastinya pas banget nih buat kamu yang lagi merasakan dingin nya cuaca dingin",
      steps: [
        "Peras semua jeruk.",
        "Campurkan dengan air gula, aduk rata.",
        "Tuang air es secukupnya.",
        "Tambahkan es batu sesuai selera",
      ],
      ingredients: [
        "5 buah jeruk peras",
        "es batu secukupnya",
        "5 sdm gula pasir, larutkan dengan air panas secukupnya",
        "air es secukupnya",
      ]),
  Product(
      name: "Es Semangka Yakult",
      category: "minuman",
      image:
          "https://img-global.cpcdn.com/recipes/7fa09fda45bcc855/680x482cq70/es-semangka-yakult-foto-resep-utama.jpg",
      description:
          "buat kamu yang lagi bosen makan semangka cobain nih makanan olahan semangka yang satu ini cara pembuatannya pun cukup  mudah nih sob",
      steps: [
        "Tata dalam gelas saji: es batu, syirup cocopandan, potongan semangka, jely, dan boba, tambahkan sedikit air matang, siram dengan yakult, sajikan"
      ],
      ingredients: [
        "Sepotong semangka, potong kotak kecil",
        "1 buah yakult",
        "Secukupnya jely/ nutrijel rasa apa saja(potong kotak kecil2",
        "2 sdm syrup cocopandan",
        "3 sdm boba siap pakai",
        "Secukupnya es batu",
        "secukupnya Air matang",
      ]),
];
