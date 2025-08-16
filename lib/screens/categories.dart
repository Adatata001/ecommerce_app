import 'package:flutter/material.dart';
import '../models/category.dart';
import '../theme/app_theme.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shop by Categories')),
      body: ListView.separated(
        padding: const EdgeInsets.all(AppSpacing.l),
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.m),
        itemBuilder: (_, i) {
          final c = categories[i];
          return Card(
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.l, vertical: AppSpacing.m),
              leading: Image.asset(c.image, height: 40, width: 40),
              title: Text(c.name),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
