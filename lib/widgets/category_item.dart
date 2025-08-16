import 'package:flutter/material.dart';
import '../models/category.dart';
import '../theme/app_theme.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSpacing.l),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(category.image),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(height: AppSpacing.s),
          Text(
            category.name,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
