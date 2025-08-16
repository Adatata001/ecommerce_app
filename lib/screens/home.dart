import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/product.dart';
import '../theme/app_theme.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/category_item.dart';
import '../widgets/product_card.dart';
import 'categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.l),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // top row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                  DropdownButton<String>(
                    value: 'Men',
                    elevation: 0,
                    underline: const SizedBox.shrink(),
                    items: const [
                      DropdownMenuItem(value: 'Men', child: Text('Men')),
                      DropdownMenuItem(value: 'Women', child: Text('Women')),
                    ],
                    onChanged: (_) {},
                  ),
                  const Icon(Icons.notifications_none),
                ],
              ),
              const SizedBox(height: AppSpacing.l),

              // search
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
              const SizedBox(height: AppSpacing.xl),

              // categories header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories',
                      style: Theme.of(context).textTheme.titleLarge),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CategoriesPage(),
                      ),
                    ),
                    child: Text('See All',
                        style: Theme.of(context).textTheme.labelSmall),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: AppSpacing.s),
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (ctx, i) => CategoryItem(category: categories[i]),
                ),
              ),
              const SizedBox(height: AppSpacing.xl),

              // top selling header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Selling',
                      style: Theme.of(context).textTheme.titleLarge),
                  TextButton(
                    onPressed: () {},
                    child: Text('See All',
                        style: Theme.of(context).textTheme.labelSmall),
                  ),
                ],
              ),
              SizedBox(
                height: 250,
                child: ListView.separated(
                  padding: const EdgeInsets.only(top: AppSpacing.s),
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: AppSpacing.l),
                  itemBuilder: (_, i) => ProductCard(product: products[i]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
