import 'package:flutter/material.dart';
import 'package:hola_mundo/src/utils/app_colors.dart';

class CategoryChipsWidget extends StatefulWidget {
  final List<String> categories;
  final Function(int)? onCategorySelected;
  final int selectedIndex;

  const CategoryChipsWidget({
    super.key,
    required this.categories,
    this.onCategorySelected,
    this.selectedIndex = 0,
  });

  @override
  State<CategoryChipsWidget> createState() => _CategoryChipsWidgetState();
}

class _CategoryChipsWidgetState extends State<CategoryChipsWidget> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: widget.categories.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: ChoiceChip(
              label: Text(widget.categories[index]),
              selected: index == _selectedIndex,
              onSelected: (selected) {
                if (selected) {
                  setState(() {
                    _selectedIndex = index;
                  });
                  widget.onCategorySelected?.call(index);
                }
              },
              selectedColor: AppColors.primary,
              backgroundColor: AppColors.grey.withOpacity(0.2),
              labelStyle: TextStyle(
                color: index == _selectedIndex ? Colors.white : Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          );
        },
      ),
    );
  }
}
