class AppConstants {
  // App Info
  static const String appName = 'KAYANA';
  static const String appVersion = '1.0.0';
  static const String appDescription = 'Beautiful Modern Ecommerce Store';
  
  // API Constants
  static const String baseUrl = 'https://api.kayana.com';
  static const String apiVersion = 'v1';
  static const Duration connectionTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  
  // Storage Keys
  static const String userTokenKey = 'user_token';
  static const String userDataKey = 'user_data';
  static const String cartDataKey = 'cart_data';
  static const String wishlistDataKey = 'wishlist_data';
  static const String recentSearchesKey = 'recent_searches';
  static const String onboardingCompletedKey = 'onboarding_completed';
  static const String themeKey = 'theme_mode';
  static const String languageKey = 'language';
  
  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 50;
  
  // Image Constants
  static const String placeholderImage = 'assets/images/placeholder.png';
  static const String logoImage = 'assets/images/logo.png';
  static const String logoWhiteImage = 'assets/images/logo_white.png';
  static const String splashImage = 'assets/images/splash.png';
  static const String emptyCartImage = 'assets/images/empty_cart.png';
  static const String emptyWishlistImage = 'assets/images/empty_wishlist.png';
  static const String noInternetImage = 'assets/images/no_internet.png';
  static const String errorImage = 'assets/images/error.png';
  
  // Animation Constants
  static const Duration shortAnimationDuration = Duration(milliseconds: 200);
  static const Duration mediumAnimationDuration = Duration(milliseconds: 400);
  static const Duration longAnimationDuration = Duration(milliseconds: 600);
  static const Duration splashDuration = Duration(seconds: 3);
  
  // UI Constants
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  static const double largePadding = 24.0;
  static const double extraLargePadding = 32.0;
  
  static const double defaultRadius = 12.0;
  static const double smallRadius = 8.0;
  static const double largeRadius = 16.0;
  static const double extraLargeRadius = 24.0;
  
  static const double defaultElevation = 2.0;
  static const double mediumElevation = 4.0;
  static const double highElevation = 8.0;
  
  // Product Constants
  static const int maxProductImages = 10;
  static const int maxReviewLength = 500;
  static const double minRating = 1.0;
  static const double maxRating = 5.0;
  
  // Cart Constants
  static const int maxCartItems = 99;
  static const int minQuantity = 1;
  static const int maxQuantity = 10;
  
  // Search Constants
  static const int maxRecentSearches = 10;
  static const int minSearchLength = 2;
  static const Duration searchDebounceTime = Duration(milliseconds: 500);
  
  // Validation Constants
  static const int minPasswordLength = 8;
  static const int maxPasswordLength = 50;
  static const int minNameLength = 2;
  static const int maxNameLength = 50;
  
  // Currency
  static const String defaultCurrency = 'USD';
  static const String currencySymbol = '\$';
  
  // Date Formats
  static const String dateFormat = 'MMM dd, yyyy';
  static const String timeFormat = 'hh:mm a';
  static const String dateTimeFormat = 'MMM dd, yyyy hh:mm a';
  
  // Error Messages
  static const String genericErrorMessage = 'Something went wrong. Please try again.';
  static const String networkErrorMessage = 'Please check your internet connection.';
  static const String timeoutErrorMessage = 'Request timeout. Please try again.';
  static const String unauthorizedErrorMessage = 'Please login to continue.';
  static const String notFoundErrorMessage = 'Requested resource not found.';
  
  // Success Messages
  static const String loginSuccessMessage = 'Welcome back!';
  static const String signupSuccessMessage = 'Account created successfully!';
  static const String logoutSuccessMessage = 'Logged out successfully!';
  static const String addToCartSuccessMessage = 'Added to cart!';
  static const String removeFromCartSuccessMessage = 'Removed from cart!';
  static const String addToWishlistSuccessMessage = 'Added to wishlist!';
  static const String removeFromWishlistSuccessMessage = 'Removed from wishlist!';
  
  // Categories
  static const List<String> defaultCategories = [
    'Electronics',
    'Fashion',
    'Home & Garden',
    'Sports & Outdoors',
    'Books',
    'Beauty & Health',
    'Toys & Games',
    'Automotive',
  ];
  
  // Social Media
  static const String facebookUrl = 'https://facebook.com/kayana';
  static const String twitterUrl = 'https://twitter.com/kayana';
  static const String instagramUrl = 'https://instagram.com/kayana';
  static const String linkedinUrl = 'https://linkedin.com/company/kayana';
  
  // Contact
  static const String supportEmail = 'support@kayana.com';
  static const String supportPhone = '+1-800-KAYANA';
  static const String websiteUrl = 'https://kayana.com';
  
  // Legal
  static const String privacyPolicyUrl = 'https://kayana.com/privacy';
  static const String termsOfServiceUrl = 'https://kayana.com/terms';
  static const String refundPolicyUrl = 'https://kayana.com/refund';
  
  // Firebase Collections
  static const String usersCollection = 'users';
  static const String productsCollection = 'products';
  static const String categoriesCollection = 'categories';
  static const String ordersCollection = 'orders';
  static const String reviewsCollection = 'reviews';
  static const String cartCollection = 'cart';
  static const String wishlistCollection = 'wishlist';
  
  // Admin Constants
  static const String adminRole = 'admin';
  static const String userRole = 'user';
  static const String moderatorRole = 'moderator';
  
  // Order Status
  static const String orderPending = 'pending';
  static const String orderConfirmed = 'confirmed';
  static const String orderProcessing = 'processing';
  static const String orderShipped = 'shipped';
  static const String orderDelivered = 'delivered';
  static const String orderCancelled = 'cancelled';
  static const String orderReturned = 'returned';
  
  // Payment Status
  static const String paymentPending = 'pending';
  static const String paymentCompleted = 'completed';
  static const String paymentFailed = 'failed';
  static const String paymentRefunded = 'refunded';
}
