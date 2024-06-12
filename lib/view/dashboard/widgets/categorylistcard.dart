import 'package:cnevent/model/category.dart';
import 'package:flutter/material.dart';

class CategoryListCard extends StatelessWidget {
  final Category category;
  final VoidCallback onPressed;

  const CategoryListCard(this.category, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            child: Stack(
              children: [
                Image.network(
                  category.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.black54,
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        category.name,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
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
