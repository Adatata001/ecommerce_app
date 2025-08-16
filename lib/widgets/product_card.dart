import 'package:flutter/material.dart';
import '../models/product.dart';
import '../theme/app_theme.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSpacing.radius),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(product.image, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: AppSpacing.s),
          // name
          Text(
            product.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 4),
          // pricing
          Row(
            children: [
              Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              if (product.oldPrice != null) ...[
                const SizedBox(width: 6),
                Text(
                  '\$${product.oldPrice!.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
