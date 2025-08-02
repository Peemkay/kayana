import 'package:flutter/material.dart';

class AppColors {
  // Primary Brand Colors
  static const Color primary = Color(0xFF2C3E50);
  static const Color primaryLight = Color(0xFF34495E);
  static const Color primaryDark = Color(0xFF1A252F);
  
  // Secondary Colors
  static const Color secondary = Color(0xFFE74C3C);
  static const Color secondaryLight = Color(0xFFEC7063);
  static const Color secondaryDark = Color(0xFFCB4335);
  
  // Accent Colors
  static const Color accent = Color(0xFFF39C12);
  static const Color accentLight = Color(0xFFF7DC6F);
  static const Color accentDark = Color(0xFFD68910);
  
  // Neutral Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey50 = Color(0xFFFAFAFA);
  static const Color grey100 = Color(0xFFF5F5F5);
  static const Color grey200 = Color(0xFFEEEEEE);
  static const Color grey300 = Color(0xFFE0E0E0);
  static const Color grey400 = Color(0xFFBDBDBD);
  static const Color grey500 = Color(0xFF9E9E9E);
  static const Color grey600 = Color(0xFF757575);
  static const Color grey700 = Color(0xFF616161);
  static const Color grey800 = Color(0xFF424242);
  static const Color grey900 = Color(0xFF212121);
  
  // Status Colors
  static const Color success = Color(0xFF27AE60);
  static const Color warning = Color(0xFFF39C12);
  static const Color error = Color(0xFFE74C3C);
  static const Color info = Color(0xFF3498DB);
  
  // Background Colors
  static const Color background = Color(0xFFFAFAFA);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF5F5F5);
  
  // Text Colors
  static const Color textPrimary = Color(0xFF2C3E50);
  static const Color textSecondary = Color(0xFF7F8C8D);
  static const Color textTertiary = Color(0xFFBDC3C7);
  static const Color textOnPrimary = Color(0xFFFFFFFF);
  static const Color textOnSecondary = Color(0xFFFFFFFF);
  
  // Border Colors
  static const Color border = Color(0xFFE0E0E0);
  static const Color borderLight = Color(0xFFF0F0F0);
  static const Color borderDark = Color(0xFFBDBDBD);
  
  // Shadow Colors
  static const Color shadow = Color(0x1A000000);
  static const Color shadowLight = Color(0x0D000000);
  static const Color shadowDark = Color(0x26000000);
  
  // Gradient Colors
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, primaryDark],
  );
  
  static const LinearGradient secondaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [secondary, secondaryDark],
  );
  
  static const LinearGradient accentGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accent, accentDark],
  );
  
  // Shopping specific colors
  static const Color price = Color(0xFFE74C3C);
  static const Color discount = Color(0xFF27AE60);
  static const Color outOfStock = Color(0xFF95A5A6);
  static const Color inStock = Color(0xFF27AE60);
  static const Color rating = Color(0xFFF39C12);
  
  // Category colors
  static const List<Color> categoryColors = [
    Color(0xFF3498DB),
    Color(0xFF9B59B6),
    Color(0xFFE67E22),
    Color(0xFF1ABC9C),
    Color(0xFFE74C3C),
    Color(0xFFF39C12),
    Color(0xFF2ECC71),
    Color(0xFF34495E),
  ];
}
