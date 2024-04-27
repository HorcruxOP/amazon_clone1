import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  HomePageBody({super.key});
  final List<String> imagesUrl = [
    "https://images-eu.ssl-images-amazon.com/images/G/31/img24/Consumables/GW/Unrec/Baby-PC_GW_Hero_3000x1200_01._CB578900765_.jpg",
    "https://images-eu.ssl-images-amazon.com/images/G/31/img22/march/brands/GW/Under_1499_Tallhero_3000x1200._CB561212093_.jpg",
    "https://images-eu.ssl-images-amazon.com/images/G/31/img23/Beauty/GW/revised/final/Skincare-PClp._CB559660552_.jpg",
    "https://images-eu.ssl-images-amazon.com/images/G/31/OHL/24/BAU/feb/PC_hero_1_2x_1._CB582889946_.jpg",
    "https://images-eu.ssl-images-amazon.com/images/G/31/img21/OHL/Budget/Unrec/GW/BS_2X_PC_1._CB580097921_.jpg",
    "https://images-eu.ssl-images-amazon.com/images/G/31/img23/Softlines_JWL_SH_GW_Assets/2024/Apr/Shoes/Unrec/Canara/Alls/3000pc._CB558905583_.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.teal.shade200,
          padding: const EdgeInsets.all(10),
          child: const Row(
            children: [
              Icon(Icons.location_on_outlined),
              Text("Deliver to Bhupender - New Delhi 110084"),
              Icon(Icons.arrow_drop_down)
            ],
          ),
        ),
        Container(
          height: 200,
          width: 600,
          child: ListView.builder(
            itemCount: imagesUrl.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Image.network(
                imagesUrl[index],
                fit: BoxFit.cover,
              );
            },
          ),
        )
      ],
    );
  }
}
