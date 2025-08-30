import 'package:flutter/material.dart';

class CircularCategoriesWidget extends StatelessWidget {
  final List<String> categories;
  final IconData icon;

  const CircularCategoriesWidget({
    super.key,
    required this.categories,
    this.icon = Icons.category,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor:
                      Colors.primaries[index % Colors.primaries.length],
                  child: Icon(icon, color: Colors.white),
                ),
                Text(
                  categories[index],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
