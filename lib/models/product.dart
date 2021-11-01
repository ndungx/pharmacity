class ProductModel {
  static final List<Product> productsList = [
    Product(
      id: 1,
      img: [
        'https://pharmacity-ecm-core-dev.s3.amazonaws.com/__sized__/products/P10341_1_l-thumbnail-255x255.webp',
      ],
      isPharmacity: true,
      isDiscount: true,
      title: 'Băng cá nhân màu da Pharmacity (100 cái/hộp)',
      discountPrice: 60000,
      discountPercent: 8.3,
      price: 55000,
      productType: 'Hộp',
      extraCarePoint: 3300,
    ),
    Product(
      id: 2,
      img: [
        'https://pharmacity-ecm-core-dev.s3.amazonaws.com/__sized__/products/P10637_1_l-thumbnail-255x255.webp',
        'https://data-service.pharmacity.io/pmc-upload-media/productionvn/pmc-ecm-core/products/P10637_2_l.webp',
      ],
      isDiscount: true,
      title: 'Băng cá nhân trẻ em (10 miếng/hộp)',
      discountPrice: 9000,
      discountPercent: 11,
      price: 8000,
      productType: 'Hộp',
      extraCarePoint: 540,
    ),
    Product(
      id: 3,
      img: [
        'https://pharmacity-ecm-core-dev.s3.amazonaws.com/__sized__/products/P10638_1_l-thumbnail-255x255.webp',
      ],
      isDiscount: true,
      title: 'Băng keo y tế (1.25cm x 5m)',
      discountPrice: 12500,
      discountPercent: 20.0,
      price: 10000,
      productType: 'Cái',
      extraCarePoint: 750,
    ),
    Product(
      id: 4,
      img: [
        'https://pharmacity-ecm-core-dev.s3.amazonaws.com/__sized__/products/P10339_1_l-thumbnail-255x255.webp',
      ],
      isPharmacity: true,
      title: 'Bông tẩy trang cao cấp Pharmacity (80 miếng/hộp)',
      price: 30000,
      productType: 'Cái',
      extraCarePoint: 750,
    )
  ];

  Product getProductById(int id) {
    return Product(
      id: id,
      img: productsList[id].img,
      isPharmacity: productsList[id].isPharmacity,
      isDiscount: productsList[id].isDiscount,
      title: productsList[id].title,
      discountPrice: productsList[id].discountPrice,
      discountPercent: productsList[id].discountPercent,
      price: productsList[id].price,
      productType: productsList[id].productType,
      category: productsList[id].category,
      extraCarePoint: productsList[id].extraCarePoint,
    );
  }

  Product getProductByPosition(int position) {
    return getProductById(position);
  }
}

class Product {
  final int id;
  final List<String> img;
  final bool? isPharmacity;
  final bool? isDiscount;
  final String title;
  final int? discountPrice;
  final num? discountPercent;
  final int price;
  final String productType;
  final String? category;
  final int extraCarePoint;

  Product({
    required this.id,
    required this.img,
    this.isPharmacity,
    this.isDiscount,
    required this.title,
    this.discountPrice,
    this.discountPercent,
    required this.price,
    required this.productType,
    this.category,
    required this.extraCarePoint,
  });
}
