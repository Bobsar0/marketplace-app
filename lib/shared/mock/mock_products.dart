import '../models/product.dart';
import '../styles/assets.dart';

class MockProducts {
  static final productCollection = <Product>[
    Product(
        id: 0,
        category: 'Shirt',
        title: "Essentials Men's Short-Sleeve Crewneck T-Shirt",
        imagePath: Assets.shirt1,
        price: 12.00,
        rating: 4.9,
        votes: 2356,
        description: [
          'Long-sleeve dress shirt in classic fit featuring button-down collar',
          'Patch Pocket on Left Chest',
          'Durable Combination Cotton Fabric',
          'Comfortable and quality dress shirt',
          'Go To Classic button down shirt for all special occasions'
        ],
        recommendedProductIds: [
          1,
          2
        ]),
    Product(
        id: 1,
        category: 'Shirt',
        title: "Essentials Men's Short-Sleeve Crewneck T-Shirt",
        imagePath: Assets.shirt2,
        price: 12.00,
        rating: 4.9,
        votes: 2356,
        description: [
          'Long-sleeve dress shirt in classic fit featuring button-down collar',
          'Patch Pocket on Left Chest',
          'Durable Combination Cotton Fabric',
          'Comfortable and quality dress shirt',
          'Go To Classic button down shirt for all special occasions'
        ],
        thumbnailPaths: [
          Assets.shirt2Back,
          Assets.shirt2Sleeve,
          Assets.shirt2Btn,
          Assets.shirt2Pocket
        ],
        recommendedProductIds: [
          2,
          3
        ]),
    Product(
      id: 2,
      category: 'Shirt',
      title: "Essentials Men's Short-Sleeve Crewneck T-Shirt",
      imagePath: Assets.shirt3,
      price: 12.00,
      rating: 4.9,
      votes: 2356,
      description: [
        'Short-sleeve dress shirt in classic fit featuring button-down collar',
        'Patch Pocket on Left Chest',
        'Durable Combination Cotton Fabric',
        'Comfortable and quality dress shirt',
        'Go To Classic button down shirt for all special occasions'
      ],
      recommendedProductIds: [1, 3],
    ),
    Product(
      id: 3,
      category: 'Shirt',
      title: "Essentials Men's Regular-Fit Long-Sleeve Oxford T-Shirt",
      imagePath: Assets.shirt4,
      price: 12.00,
      rating: 4.9,
      votes: 2356,
      description: [
        'Long-sleeve dress shirt in classic fit featuring button-down collar',
        'Patch Pocket on Left Chest',
        'Durable Combination Cotton Fabric',
        'Comfortable and quality dress shirt',
        'Go To Classic button down shirt for all special occasions'
      ],
      recommendedProductIds: [2, 4],
    ),
    Product(
      id: 4,
      category: 'Shirt',
      title: "Essentials Men's Short-Sleeve Crewneck T-Shirt",
      imagePath: Assets.polo,
      price: 12.00,
      rating: 4.9,
      votes: 2356,
      description: [
        'Short-sleeve dress shirt in classic fit featuring button-down collar',
        'Patch Pocket on Left Chest',
        'Durable Combination Cotton Fabric',
        'Comfortable and quality dress shirt',
        'Go To Classic button down shirt for all special occasions'
      ],
      recommendedProductIds: [2, 3],
    ),
    Product(
      id: 5,
      category: 'Hoddie',
      title: "Essentials Men's Short-Sleeve Crewneck T-Shirt",
      imagePath: Assets.hoodie,
      price: 35.00,
      rating: 4.9,
      votes: 2356,
      description: [
        'Short-sleeve Hoodie in classic fit',
        'Durable Combination Cotton Fabric',
        'Comfortable and quality dress shirt',
        'Go To Classic button down shirt for all special occasions'
      ],
      recommendedProductIds: [2, 3],
    ),
    Product(
      id: 6,
      category: 'Shirt',
      title: "Essentials Men's Short-Sleeve Crewneck T-Shirt",
      imagePath: Assets.shirt7,
      price: 12.00,
      rating: 4.9,
      votes: 2356,
      description: [
        'Short-sleeve dress shirt in classic fit featuring button-down collar',
        'Patch Pocket on Left Chest',
        'Durable Combination Cotton Fabric',
        'Comfortable and quality dress shirt',
        'Go To Classic button down shirt for all special occasions'
      ],
      recommendedProductIds: [2, 3],
    ),
    Product(
      id: 7,
      category: 'Shirt',
      title: "Essentials Men's Short-Sleeve Crewneck T-Shirt",
      imagePath: Assets.shirt8,
      price: 24.00,
      rating: 4.9,
      votes: 2356,
      description: [
        'Short-sleeve dress shirt in classic fit featuring button-down collar',
        'Patch Pocket on Left Chest',
        'Durable Combination Cotton Fabric',
        'Comfortable and quality dress shirt',
        'Go To Classic button down shirt for all special occasions'
      ],
      recommendedProductIds: [2, 3],
    ),
    Product(
      id: 8,
      category: 'Bag',
      title: "Nike Brasilia Medium Training Backpack with...",
      imagePath: Assets.bag,
      price: 25.00,
      rating: 4.9,
      votes: 2356,
      description: [
        'Medium Training Backpack featuring several compartments',
        'Durable Combination Cotton Fabric',
        'Comfortable and quality back pack'
      ],
      recommendedProductIds: [2, 3],
    ),
    Product(
      id: 9,
      category: 'Shirt',
      title: "Essentials Men's Regular-Fit Long-Sleeve Oxford T-Shirt",
      imagePath: Assets.shirt9,
      price: 24.00,
      rating: 4.9,
      votes: 2356,
      description: [
        'Long-sleeve dress shirt in classic fit featuring button-down collar',
        'Patch Pocket on Left Chest',
        'Durable Combination Cotton Fabric',
        'Comfortable and quality dress shirt',
        'Go To Classic button down shirt for all special occasions'
      ],
      recommendedProductIds: [2, 3],
    ),
  ];
}
