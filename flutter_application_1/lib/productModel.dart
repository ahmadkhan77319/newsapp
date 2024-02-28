class ProductModel {
  ProductModel({
    required this.success,
    required this.message,
    required this.data,
  });
  late final bool success;
  late final String message;
  late final List<Data> data;
  
  ProductModel.fromJson(Map<String, dynamic> json){
    success = json['success'];
    message = json['message'];
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['message'] = message;
    _data['data'] = data.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this. id,
    required this.onSale,
    required this.salePercent,
    required this.sold,
    required this.sliderNew,
    required this.sliderRecent,
    required this.sliderSold,
    required this.date,
    required this.title,
    required this.categories,
    required this.subcat,
    required this.shop,
    required this.price,
    required this.saleTitle,
    required this.salePrice,
    required this.description,
    required this.color,
    required this.size,
    required this.inWishlist,
    required this.images,
  });
  late final String id;
  late final bool onSale;
  late final int salePercent;
  late final int sold;
  late final bool sliderNew;
  late final bool sliderRecent;
  late final bool sliderSold;
  late final String date;
  late final String title;
  late final Categories categories;
  late final Subcat subcat;
  late final Shop shop;
  late final String price;
  late final String saleTitle;
  late final String salePrice;
  late final String description;
  late final String color;
  late final String size;
  late final bool inWishlist;
  late final List<Images> images;
  
  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    onSale = json['on_sale'];
    salePercent = json['sale_percent'];
    sold = json['sold'];
    sliderNew = json['slider_new'];
    sliderRecent = json['slider_recent'];
    sliderSold = json['slider_sold'];
    date = json['date'];
    title = json['title'];
    categories = Categories.fromJson(json['categories']);
    subcat = Subcat.fromJson(json['subcat']);
    shop = Shop.fromJson(json['shop']);
    price = json['price'];
    saleTitle = json['sale_title'];
    salePrice = json['sale_price'];
    description = json['description'];
    color = json['color'];
    size = json['size'];
    inWishlist = json['in_wishlist'];
    images = List.from(json['images']).map((e)=>Images.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['on_sale'] = onSale;
    _data['sale_percent'] = salePercent;
    _data['sold'] = sold;
    _data['slider_new'] = sliderNew;
    _data['slider_recent'] = sliderRecent;
    _data['slider_sold'] = sliderSold;
    _data['date'] = date;
    _data['title'] = title;
    _data['categories'] = categories.toJson();
    _data['subcat'] = subcat.toJson();
    _data['shop'] = shop.toJson();
    _data['price'] = price;
    _data['sale_title'] = saleTitle;
    _data['sale_price'] = salePrice;
    _data['description'] = description;
    _data['color'] = color;
    _data['size'] = size;
    _data['in_wishlist'] = inWishlist;
    _data['images'] = images.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Categories {
  Categories({
    required this.id,
    required this.type,
    required this.salePercent,
    required this.date,
    required this.name,
    required this.image,
  });
  late final String id;
  late final String type;
  late final int salePercent;
  late final String date;
  late final String name;
  late final String image;
  
  Categories.fromJson(Map<String, dynamic> json){
    id = json['id'];
    type = json['type'];
    salePercent = json['sale_percent'];
    date = json['date'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['type'] = type;
    _data['sale_percent'] = salePercent;
    _data['date'] = date;
    _data['name'] = name;
    _data['image'] = image;
    return _data;
  }
}

class Subcat {
  Subcat({
    required this.id,
    required this.type,
    required this.salePercent,
    required this.date,
    required this.name,
  });
  late final String id;
  late final String type;
  late final int salePercent;
  late final String date;
  late final String name;
  
  Subcat.fromJson(Map<String, dynamic> json){
    id = json['id'];
    type = json['type'];
    salePercent = json['sale_percent'];
    date = json['date'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['type'] = type;
    _data['sale_percent'] = salePercent;
    _data['date'] = date;
    _data['name'] = name;
    return _data;
  }
}

class Shop {
  Shop({
    required this.id,
    required this.isActive,
    required this.createdAt,
    required this.name,
    required this.description,
    required this.shopemail,
    required this.shopaddress,
    required this.shopcity,
    required this.userid,
    required this.image,
  });
  late final String id;
  late final bool isActive;
  late final String createdAt;
  late final String name;
  late final String description;
  late final String shopemail;
  late final String shopaddress;
  late final String shopcity;
  late final String userid;
  late final String image;
  
  Shop.fromJson(Map<String, dynamic> json){
    id = json['id'];
    isActive = json['is_active'];
    createdAt = json['created_At'];
    name = json['name'];
    description = json['description'];
    shopemail = json['shopemail'];
    shopaddress = json['shopaddress'];
    shopcity = json['shopcity'];
    userid = json['userid'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['is_active'] = isActive;
    _data['created_At'] = createdAt;
    _data['name'] = name;
    _data['description'] = description;
    _data['shopemail'] = shopemail;
    _data['shopaddress'] = shopaddress;
    _data['shopcity'] = shopcity;
    _data['userid'] = userid;
    _data['image'] = image;
    return _data;
  }
}

class Images {
  Images({
    required this.id,
    required this.url,
  });
  late final String id;
  late final String url;
  
  Images.fromJson(Map<String, dynamic> json){
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['url'] = url;
    return _data;
  }
}