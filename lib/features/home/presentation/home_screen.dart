import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart' as carousel;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/widgets/custom_search_bar.dart';
import '../../../core/widgets/category_card.dart';
import '../../../core/widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentBannerIndex = 0;
  final carousel.CarouselController _carouselController =
      carousel.CarouselController();

  // Sample data - will be replaced with actual data from API
  final List<String> _bannerImages = [
    'https://images.unsplash.com/photo-1441986300917-64674bd600d8?w=800',
    'https://images.unsplash.com/photo-1472851294608-062f824d29cc?w=800',
    'https://images.unsplash.com/photo-1560472354-b33ff0c44a43?w=800',
  ];

  final List<Map<String, dynamic>> _categories = [
    {
      'name': 'Electronics',
      'icon': Icons.phone_android,
      'color': AppColors.categoryColors[0],
    },
    {
      'name': 'Fashion',
      'icon': Icons.checkroom,
      'color': AppColors.categoryColors[1],
    },
    {'name': 'Home', 'icon': Icons.home, 'color': AppColors.categoryColors[2]},
    {
      'name': 'Sports',
      'icon': Icons.sports_soccer,
      'color': AppColors.categoryColors[3],
    },
    {
      'name': 'Books',
      'icon': Icons.menu_book,
      'color': AppColors.categoryColors[4],
    },
    {
      'name': 'Beauty',
      'icon': Icons.face,
      'color': AppColors.categoryColors[5],
    },
    {'name': 'Toys', 'icon': Icons.toys, 'color': AppColors.categoryColors[6]},
    {
      'name': 'Auto',
      'icon': Icons.directions_car,
      'color': AppColors.categoryColors[7],
    },
  ];

  final List<Map<String, dynamic>> _featuredProducts = [
    {
      'id': '1',
      'name': 'Premium Wireless Headphones',
      'price': 299.99,
      'originalPrice': 399.99,
      'image':
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400',
      'rating': 4.8,
      'reviews': 1250,
      'isWishlisted': false,
    },
    {
      'id': '2',
      'name': 'Smart Watch Series 8',
      'price': 449.99,
      'originalPrice': 499.99,
      'image':
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400',
      'rating': 4.9,
      'reviews': 890,
      'isWishlisted': true,
    },
    {
      'id': '3',
      'name': 'Designer Leather Jacket',
      'price': 199.99,
      'originalPrice': 299.99,
      'image':
          'https://images.unsplash.com/photo-1551028719-00167b16eac5?w=400',
      'rating': 4.7,
      'reviews': 456,
      'isWishlisted': false,
    },
    {
      'id': '4',
      'name': 'Professional Camera',
      'price': 1299.99,
      'originalPrice': 1499.99,
      'image':
          'https://images.unsplash.com/photo-1502920917128-1aa500764cbd?w=400',
      'rating': 4.9,
      'reviews': 234,
      'isWishlisted': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // Custom App Bar
            SliverAppBar(
              floating: true,
              pinned: false,
              snap: true,
              backgroundColor: AppColors.white,
              elevation: 0,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(AppConstants.defaultPadding),
                child: Row(
                  children: [
                    // Logo
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          'K',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    // Welcome text
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome to',
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: AppColors.textSecondary),
                          ),
                          Text(
                            AppConstants.appName,
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    // Notification icon
                    IconButton(
                      onPressed: () {
                        // TODO: Navigate to notifications
                      },
                      icon: Stack(
                        children: [
                          const Icon(
                            Icons.notifications_outlined,
                            color: AppColors.textPrimary,
                            size: 24,
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                color: AppColors.secondary,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Cart icon
                    IconButton(
                      onPressed: () {
                        // TODO: Navigate to cart
                      },
                      icon: Stack(
                        children: [
                          const Icon(
                            Icons.shopping_bag_outlined,
                            color: AppColors.textPrimary,
                            size: 24,
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              width: 16,
                              height: 16,
                              decoration: const BoxDecoration(
                                color: AppColors.secondary,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  '3',
                                  style: Theme.of(context).textTheme.labelSmall
                                      ?.copyWith(
                                        color: AppColors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Search Bar
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.defaultPadding,
                ),
                child: CustomSearchBar(
                  hintText: 'Search products...',
                  onChanged: (value) {
                    // TODO: Implement search
                  },
                  onFilterTap: () {
                    // TODO: Show filter bottom sheet
                  },
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 20)),

            // Banner Carousel
            SliverToBoxAdapter(
              child: Column(
                children: [
                  carousel.CarouselSlider(
                    carouselController: _carouselController,
                    options: carousel.CarouselOptions(
                      height: 180,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 4),
                      enlargeCenterPage: true,
                      viewportFraction: 0.9,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentBannerIndex = index;
                        });
                      },
                    ),
                    items: _bannerImages.map((imageUrl) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.shadow,
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.network(
                                imageUrl,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: AppColors.grey200,
                                    child: const Center(
                                      child: Icon(
                                        Icons.image_not_supported,
                                        color: AppColors.grey500,
                                        size: 50,
                                      ),
                                    ),
                                  );
                                },
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      AppColors.black.withOpacity(0.3),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                left: 20,
                                right: 20,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Special Offer',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            color: AppColors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      'Up to 50% off on selected items',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            color: AppColors.white.withOpacity(
                                              0.9,
                                            ),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 16),

                  // Banner indicators
                  AnimatedSmoothIndicator(
                    activeIndex: _currentBannerIndex,
                    count: _bannerImages.length,
                    effect: const WormEffect(
                      dotColor: AppColors.grey300,
                      activeDotColor: AppColors.primary,
                      dotHeight: 8,
                      dotWidth: 8,
                      spacing: 8,
                    ),
                  ),
                ],
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 30)),

            // Categories Section
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.defaultPadding,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        // TODO: Navigate to all categories
                      },
                      child: const Text('See All'),
                    ),
                  ],
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 16)),

            // Categories Grid
            SliverToBoxAdapter(
              child: SizedBox(
                height: 200,
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppConstants.defaultPadding,
                  ),
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemCount: _categories.length,
                  itemBuilder: (context, index) {
                    final category = _categories[index];
                    return CategoryCard(
                      name: category['name'],
                      icon: category['icon'],
                      color: category['color'],
                      onTap: () {
                        // TODO: Navigate to category products
                      },
                    );
                  },
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 30)),

            // Featured Products Section
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.defaultPadding,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Featured Products',
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        // TODO: Navigate to all products
                      },
                      child: const Text('See All'),
                    ),
                  ],
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 16)),

            // Featured Products Grid
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.defaultPadding,
              ),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                delegate: SliverChildBuilderDelegate((context, index) {
                  final product = _featuredProducts[index];
                  return ProductCard(
                    product: product,
                    onTap: () {
                      // TODO: Navigate to product details
                    },
                    onWishlistTap: () {
                      // TODO: Toggle wishlist
                    },
                    onAddToCart: () {
                      // TODO: Add to cart
                    },
                  );
                }, childCount: _featuredProducts.length),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 100)),
          ],
        ),
      ),
    );
  }
}
