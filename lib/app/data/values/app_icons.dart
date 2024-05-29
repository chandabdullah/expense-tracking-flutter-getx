import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

enum IconType {
  outlined,
  solid,
}

class AppIcons {
  static IconData getCategoryIcon(
    String category, [
    IconType iconType = IconType.solid,
  ]) {
    switch (category.trim().toLowerCase()) {
      case 'salary':
        return iconType == IconType.outlined
            ? Bootstrap.currency_dollar
            : Bootstrap.currency_dollar;
      case 'shopping':
        return iconType == IconType.outlined
            ? Bootstrap.cart
            : Bootstrap.cart_fill;
      case 'cafe':
        return iconType == IconType.outlined
            ? Bootstrap.cup_hot
            : Bootstrap.cup_hot_fill;
      case 'public transport' || 'transport':
        return iconType == IconType.outlined
            ? Bootstrap.bus_front
            : Bootstrap.bus_front_fill;
      case 'petrol':
        return iconType == IconType.outlined
            ? Bootstrap.fuel_pump
            : Bootstrap.fuel_pump_fill;
      case 'health':
        return iconType == IconType.outlined
            ? Bootstrap.hospital
            : Bootstrap.hospital_fill;
      case 'family':
        return iconType == IconType.outlined
            ? Bootstrap.people
            : Bootstrap.people_fill;
      case 'crypto':
        return iconType == IconType.outlined
            ? Bootstrap.currency_bitcoin
            : Bootstrap.currency_bitcoin;
      case 'gifts' || 'gift':
        return iconType == IconType.outlined
            ? Bootstrap.gift
            : Bootstrap.gift_fill;
      case 'education':
        return iconType == IconType.outlined
            ? Bootstrap.book
            : Bootstrap.book_half;
      case 'sport':
        return iconType == IconType.outlined
            ? Bootstrap.trophy
            : Bootstrap.trophy_fill;
      case 'traveling':
        return iconType == IconType.outlined
            ? Bootstrap.pin_map
            : Bootstrap.pin_map_fill;
      case 'leisure':
        return iconType == IconType.outlined
            ? Bootstrap.dpad
            : Bootstrap.dpad_fill;
      case 'spotify':
        return iconType == IconType.outlined
            ? Bootstrap.spotify
            : Bootstrap.spotify;
      case 'removal':
        return iconType == IconType.outlined
            ? Bootstrap.trash
            : Bootstrap.trash_fill;
      default:
        return Icons.shopping_bag;
    }
  }
}
