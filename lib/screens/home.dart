import 'package:ecommerceapp/models/new_in.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/models/category.dart';
import 'package:ecommerceapp/models/product.dart';
import 'package:ecommerceapp/theme/app_theme.dart';
import 'package:ecommerceapp/widgets/bottom_nav_bar.dart';
import 'package:ecommerceapp/widgets/category_item.dart';
import 'package:ecommerceapp/widgets/product_card.dart';
import 'package:ecommerceapp/screens/categories.dart';
import 'package:ecommerceapp/widgets/new_in_card.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

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
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage('images/user.png'),
                    backgroundColor: AppColors.cardBorder.withValues(alpha: 0.7),
                  ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      value: 'Men',
                      isExpanded: false,
                      items: const [
                        DropdownMenuItem(value: 'Men', child: Text('Men', softWrap: false)),
                        DropdownMenuItem(value: 'Women', child: Text('Women', softWrap: false)),
                      ],
                      onChanged: (value) {},
                      dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        offset: const Offset(0, 0),
                        padding: EdgeInsets.zero,
                      ),
                      buttonStyleData: ButtonStyleData(
                        height: 36,
                        padding: EdgeInsets.zero,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.transparent,
                        ),
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 36,
                      ),
                      iconStyleData: const IconStyleData(
                        icon: Icon(Icons.keyboard_arrow_down, size: 20),
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.deepPurpleAccent,
                    child: const Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.l),

           // Search bar
           TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  size: 20,
                ),
                filled: true,
                fillColor: AppColors.searchFill,
                contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
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
                        builder: (ctx) => const CategoriesPage(),
                      ),
                    ),
                    child: Text(
                      'See All',
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.black,
                      ),
                    ),
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
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 250,
                child: ListView.separated(
                  padding: const EdgeInsets.only(top: AppSpacing.s),
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  separatorBuilder: (ctx,i) =>
                      const SizedBox(width: AppSpacing.l),
                  itemBuilder: (ctx, i) => ProductCard(product: products[i]),
                ),
              ),
              const SizedBox(height: AppSpacing.xl),

              // new in header
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New In',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                  TextButton(
                    onPressed: () {},
                    child: Text('See All',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 250,
                child: ListView.separated(
                  padding: const EdgeInsets.only(top: AppSpacing.s),
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  separatorBuilder: (ctx,i) =>
                  const SizedBox(width: AppSpacing.l),
                  itemBuilder: (ctx, i) => NewCard(new_: new_[i]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
