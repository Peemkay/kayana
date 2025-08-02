import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../theme/app_colors.dart';
import '../constants/app_constants.dart';

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;
  final VoidCallback? onTap;
  final VoidCallback? onWishlistTap;
  final VoidCallback? onAddToCart;

  const ProductCard({
    super.key,
    required this.product,
    this.onTap,
    this.onWishlistTap,
    this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    final bool isWishlisted = product['isWishlisted'] ?? false;
    final double price = product['price']?.toDouble() ?? 0.0;
    final double? originalPrice = product['originalPrice']?.toDouble();
    final double rating = product['rating']?.toDouble() ?? 0.0;
    final int reviews = product['reviews'] ?? 0;
    final String imageUrl = product['image'] ?? '';
    final String name = product['name'] ?? '';

    final bool hasDiscount = originalPrice != null && originalPrice > price;
    final double discountPercentage = hasDiscount 
        ? ((originalPrice - price) / originalPrice * 100) 
        : 0.0;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadow,
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              Expanded(
                flex: 3,
                child: Stack(
                  children: [
                    // Main image
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      child: CachedNetworkImage(
                        imageUrl: imageUrl,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Container(
                          color: AppColors.grey100,
                          child: const Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.primary,
                              ),
                            ),
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          color: AppColors.grey100,
                          child: const Center(
                            child: Icon(
                              Icons.image_not_supported,
                              color: AppColors.grey400,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    
                    // Discount badge
                    if (hasDiscount)
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.secondary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            '-${discountPercentage.round()}%',
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    
                    // Wishlist button
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Material(
                        color: AppColors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          onTap: onWishlistTap,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              isWishlisted 
                                  ? Icons.favorite 
                                  : Icons.favorite_border,
                              color: isWishlisted 
                                  ? AppColors.secondary 
                                  : AppColors.textSecondary,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              // Product Details
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product name
                      Text(
                        name,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      
                      const SizedBox(height: 4),
                      
                      // Rating and reviews
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.rating,
                            size: 14,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            rating.toStringAsFixed(1),
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '($reviews)',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: AppColors.textTertiary,
                            ),
                          ),
                        ],
                      ),
                      
                      const Spacer(),
                      
                      // Price and add to cart
                      Row(
                        children: [
                          // Price
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${AppConstants.currencySymbol}${price.toStringAsFixed(2)}',
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.price,
                                  ),
                                ),
                                if (hasDiscount)
                                  Text(
                                    '${AppConstants.currencySymbol}${originalPrice.toStringAsFixed(2)}',
                                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: AppColors.textTertiary,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          
                          // Add to cart button
                          Material(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(8),
                            child: InkWell(
                              onTap: onAddToCart,
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Icon(
                                  Icons.add_shopping_cart,
                                  color: AppColors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
