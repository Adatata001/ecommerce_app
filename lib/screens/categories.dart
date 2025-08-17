import 'package:flutter/material.dart';
import 'package:ecommerceapp/models/category.dart';
import 'package:ecommerceapp/theme/app_theme.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.l),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.cardBorder.withValues(alpha: 0.7),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new, size: 18),
                color: AppColors.textPrimary,
                onPressed: () => Navigator.pop(context),
              ),
            ),
            const SizedBox(height: AppSpacing.m),

            Text(
              'Shop by Category',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: AppSpacing.l),

            // Category List
            Expanded(
              child: ListView.separated(
                itemCount: categories.length,
                separatorBuilder: (ctx, i) =>
                    const SizedBox(height: AppSpacing.m),
                itemBuilder: (ctx, i) {
                  final c = categories[i];
                  return Card( 
                    color: AppColors.cardBorder.withValues(alpha: 0.7),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.l,
                        vertical: AppSpacing.m,
                      ),
                      leading: Image.asset(c.image, height: 40, width: 40),
                      title: Text(
                        c.name,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      onTap: () {},
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
