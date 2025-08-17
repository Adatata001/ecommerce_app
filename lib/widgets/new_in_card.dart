import 'package:flutter/material.dart';
import 'package:ecommerceapp/models/new_in.dart';
import 'package:ecommerceapp/theme/app_theme.dart';

class NewCard extends StatelessWidget {
  final New new_;
  const NewCard({super.key, required this.new_});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.radius),
        ),
        elevation: 0,
        color: AppColors.cardBorder.withValues(alpha: 0.9),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(AppSpacing.radius),
                    ),
                    child: Image.asset(
                      new_.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 6,
                  right: 6,
                  child: Icon(Icons.favorite_border, size: 18, color: Colors.black),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.s),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      new_.name,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                      maxLines: 1,
                      overflow: TextOverflow.visible,
                      softWrap: false,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '\$${new_.price.toStringAsFixed(2)}',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
