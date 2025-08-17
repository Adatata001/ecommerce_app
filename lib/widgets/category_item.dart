import 'package:flutter/material.dart';
import 'package:ecommerceapp/models/category.dart';
import 'package:ecommerceapp/theme/app_theme.dart';

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
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.cardBorder.withValues(alpha: 0.7), // grey background
              image: DecorationImage(
                image: AssetImage(category.image),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.s),
          Text(
            category.name,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.black,
                ),
          ),
        ],
      ),
    );
  }
}

