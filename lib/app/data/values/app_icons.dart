import 'package:flutter/material.dart';

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
      case 'shopping':
        return iconType == IconType.outlined
            ? Icons.shopping_cart_outlined
            : Icons.shopping_cart;
      case 'cafe':
        return iconType == IconType.outlined
            ? Icons.coffee_outlined
            : Icons.coffee;
      case 'public transport' || 'transport':
        return iconType == IconType.outlined
            ? Icons.directions_car_filled_outlined
            : Icons.directions_car_filled;
      case 'petrol':
        return iconType == IconType.outlined
            ? Icons.wallet_outlined
            : Icons.wallet;
      case 'health':
        return iconType == IconType.outlined
            ? Icons.local_hospital_outlined
            : Icons.local_hospital;
      case 'family':
        return iconType == IconType.outlined
            ? Icons.people_outlined
            : Icons.people;
      case 'crypto':
        return iconType == IconType.outlined
            ? Icons.currency_exchange_outlined
            : Icons.currency_exchange;
      case 'gifts' || 'gift':
        return iconType == IconType.outlined
            ? Icons.card_giftcard_outlined
            : Icons.card_giftcard;
      case 'education':
        return iconType == IconType.outlined
            ? Icons.menu_book_outlined
            : Icons.menu_book;
      case 'sport':
        return iconType == IconType.outlined
            ? Icons.sports_outlined
            : Icons.sports;
      case 'traveling':
        return iconType == IconType.outlined
            ? Icons.location_on_outlined
            : Icons.location_on;
      case 'pets':
        return iconType == IconType.outlined ? Icons.pets_outlined : Icons.pets;
      case 'baby':
        return iconType == IconType.outlined
            ? Icons.emoji_emotions_outlined
            : Icons.emoji_emotions;
      case 'leisure':
        return iconType == IconType.outlined
            ? Icons.sports_esports_outlined
            : Icons.sports_esports;
      case 'spotify':
        return iconType == IconType.outlined
            ? Icons.music_note_outlined
            : Icons.music_note;
      case 'removal':
        return iconType == IconType.outlined
            ? Icons.remove_outlined
            : Icons.remove;
      default:
        return Icons.shopping_bag;
    }
  }
}
