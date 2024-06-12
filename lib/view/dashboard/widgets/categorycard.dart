import 'package:cnevent/model/category.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget{
  final Category category;
  final VoidCallback onPressed;

  const CategoryCard(this.category,this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        height: 100,
        margin: const EdgeInsets.only(left: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            height: 100,
            width: 150,
            child: Stack(
              children: [
                Image.network(
                  category.image,
                  fit: BoxFit.cover,
                  height: 100,
                  width: 150,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 30,
                    width: 150,
                    color: Colors.black54,
                  ),
                ),
                Positioned(
                  bottom: 3,
                    width: 150,
                    child: Center(
                      child: Text(
                        category.name,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 18),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}