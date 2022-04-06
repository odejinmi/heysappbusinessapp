//
class CategoryData {
  var name;
  var icon;
  var id;

  CategoryData({this.name, this.id, this.icon});

  factory CategoryData.fromJson(Map<String, dynamic> json) {
    return CategoryData(
        name: json["name"], icon: json["icon"], id: json["_id"]);
  }
}

List<CategoryData> parseCategoryData(jsonData) {
  final parsed = jsonData.cast<Map<String, dynamic>>();

  return parsed
      .map<CategoryData>((json) => CategoryData.fromJson(json))
      .toList();
}

//
class ProductsData {
  var name;
  var id;
  var images;
  var price;
  var location;
  var sale_start_date;
  var sale_end_date;
  var offer_start_date;
  var offer_end_date;
  var store_abitid;
  var store_name;
  var initialbid;
  var category;
  var description;
  var type;
  var categoryDetails;

  ProductsData({
    this.name,
    this.id,
    this.images,
    this.price,
    this.location,
    this.sale_start_date,
    this.sale_end_date,
    this.offer_start_date,
    this.offer_end_date,
    this.store_abitid,
    this.store_name,
    this.initialbid,
    this.category,
    this.description,
    this.type,
    this.categoryDetails,
  });

  factory ProductsData.fromJson(Map<String, dynamic> json) {
    return ProductsData(
      name: json["name"],
      id: json["_id"],
      images: json["images"],
      price: json["price"],
      location: json["location"],
      sale_start_date: json["sale_start_date"],
      sale_end_date: json["sale_end_date"],
      offer_start_date: json["offer_start_date"],
      offer_end_date: json["offer_end_date"],
      initialbid: json["initialbid"],
      category: json["category"],
      type: json["type"],
      description: json["description"],
      store_abitid: json["myStore"][0]["abitid"],
      store_name: json["myStore"][0]["name"],
      categoryDetails: json["myCategory"],
    );
  }
}

List<ProductsData> parseProductsData(jsonData) {
  final parsed = jsonData.cast<Map<String, dynamic>>();

  return parsed
      .map<ProductsData>((json) => ProductsData.fromJson(json))
      .toList();
}

//
class CartData {
  var name;
  var id;
  var quantity;
  var discount;
  var product_id;
  var images;
  var price;
  var location;
  var sale_start_date;
  var sale_end_date;
  var offer_start_date;
  var offer_end_date;
  var model;
  var store_abitid;
  var store_name;

  CartData({
    this.name,
    this.id,
    this.quantity,
    this.discount,
    this.product_id,
    this.images,
    this.price,
    this.location,
    this.sale_start_date,
    this.sale_end_date,
    this.offer_start_date,
    this.offer_end_date,
    this.model,
    this.store_abitid,
    this.store_name,
  });

  factory CartData.fromJson(Map<String, dynamic> json) {
    return CartData(
      id: json["_id"],
      quantity: json["quantity"],
      discount: json["discount"],
      name: json["productDetail"][0]["name"],
      product_id: json["productDetail"][0]["_id"],
      images: json["productDetail"][0]["images"],
      price: json["productDetail"][0]["price"],
      location: json["productDetail"][0]["location"],
      sale_start_date: json["productDetail"][0]["sale_start_date"],
      sale_end_date: json["productDetail"][0]["sale_end_date"],
      model: json["productDetail"][0]["model"],
      offer_start_date: json["productDetail"][0]["offer_start_date"],
      offer_end_date: json["productDetail"][0]["offer_end_date"],
      store_abitid: json["productDetail"][0]["myStore"][0]["abitid"],
      store_name: json["productDetail"][0]["myStore"][0]["name"],
    );
  }
}

List<CartData> parseCartData(jsonData) {
  final parsed = jsonData.cast<Map<String, dynamic>>();

  return parsed.map<CartData>((json) => CartData.fromJson(json)).toList();
}

//
class DeliveryMethodData {
  var name;
  var id;
  var deliveryDate;
  var description;
  var price;

  DeliveryMethodData({
    this.name,
    this.id,
    this.price,
    this.description,
    this.deliveryDate,
  });

  factory DeliveryMethodData.fromJson(Map<String, dynamic> json) {
    return DeliveryMethodData(
      id: json["_id"],
      name: json["name"],
      price: json["price"],
      description: json["description"],
      deliveryDate: json["deliveryDate"],
    );
  }
}

List<DeliveryMethodData> parseDeliveryMethodData(jsonData) {
  final parsed = jsonData.cast<Map<String, dynamic>>();

  return parsed
      .map<DeliveryMethodData>((json) => DeliveryMethodData.fromJson(json))
      .toList();
}

//
class PaymentMethodData {
  var name;
  var id;
  var discount;
  var description;

  PaymentMethodData({this.name, this.id, this.discount, this.description});

  factory PaymentMethodData.fromJson(Map<String, dynamic> json) {
    return PaymentMethodData(
      id: json["_id"],
      name: json["name"],
      discount: json["discount"],
      description: json["description"],
    );
  }
}

List<PaymentMethodData> parsePaymentMethodData(jsonData) {
  final parsed = jsonData.cast<Map<String, dynamic>>();

  return parsed
      .map<PaymentMethodData>((json) => PaymentMethodData.fromJson(json))
      .toList();
}

//
class RatingsData {
  var review;
  var stars;
  var id;
  var abitid;
  var name;

  RatingsData({this.id, this.review, this.stars, this.abitid, this.name});

  factory RatingsData.fromJson(Map<String, dynamic> json) {
    return RatingsData(
        review: json["review"],
        stars: json["stars"],
        id: json["_id"],
        abitid: json["abitid"],
        name: json["name"]);
  }
}

List<RatingsData> parseRatingsData(jsonData) {
  final parsed = jsonData.cast<Map<String, dynamic>>();

  return parsed.map<RatingsData>((json) => RatingsData.fromJson(json)).toList();
}

//
class SwapRequestData {
  var product;
  var sWith;
  var amount;
  var deal;
  var id;
  var abitid;
  var phone;
  var status;

  SwapRequestData(
      {this.id,
      this.product,
      this.sWith,
      this.amount,
      this.deal,
      this.abitid,
      this.phone,
      this.status});

  factory SwapRequestData.fromJson(Map<String, dynamic> json) {
    return SwapRequestData(
        product: json["product"],
        sWith: json["with"],
        deal: json["deal"],
        amount: json["amount"],
        id: json["_id"],
        abitid: json["abitid"],
        phone: json["phone"],
        status: json["status"]);
  }
}

List<SwapRequestData> parseSwapRequestData(jsonData) {
  final parsed = jsonData.cast<Map<String, dynamic>>();

  return parsed
      .map<SwapRequestData>((json) => SwapRequestData.fromJson(json))
      .toList();
}

//
class GiveawayRequestData {
  var product;
  var id;
  var abitid;
  var status;

  GiveawayRequestData({this.id, this.product, this.abitid, this.status});

  factory GiveawayRequestData.fromJson(Map<String, dynamic> json) {
    return GiveawayRequestData(
        product: json["product"],
        id: json["_id"],
        abitid: json["abitid"],
        status: json["status"]);
  }
}

List<GiveawayRequestData> parseGiveawayRequestData(jsonData) {
  final parsed = jsonData.cast<Map<String, dynamic>>();

  return parsed
      .map<GiveawayRequestData>((json) => GiveawayRequestData.fromJson(json))
      .toList();
}

//
class ChatsData {
  var id;
  var senderid;
  var receiverid;
  var message;
  var mid;
  var image;
  var status;
  var createdAt;

  ChatsData(
      {this.id,
      this.senderid,
      this.receiverid,
      this.message,
      this.mid,
      this.image,
      this.status,
      this.createdAt});

  factory ChatsData.fromJson(Map<String, dynamic> json) {
    return ChatsData(
        id: json["_id"],
        senderid: json["senderid"],
        receiverid: json["receiverid"],
        message: json["message"],
        mid: json["mid"],
        image: json["image"],
        createdAt: json["createdAt"],
        status: json["status"]);
  }
}

List<ChatsData> parseChatsData(jsonData) {
  final parsed = jsonData.cast<Map<String, dynamic>>();

  return parsed.map<ChatsData>((json) => ChatsData.fromJson(json)).toList();
}

//
class OrdersData {
  var id;
  var abitid;
  var totalItem;
  var shippingFee;
  var total;
  var deliveryMethod;
  var paymentMethod;
  var orderid;
  var status;
  var createdAt;

  OrdersData(
      {this.id,
      this.abitid,
      this.totalItem,
      this.shippingFee,
      this.total,
      this.deliveryMethod,
      this.paymentMethod,
      this.orderid,
      this.status,
      this.createdAt});

  factory OrdersData.fromJson(Map<String, dynamic> json) {
    return OrdersData(
        id: json["_id"],
        abitid: json["abitid"],
        totalItem: json["totalItem"],
        shippingFee: json["shippingFee"],
        total: json["total"],
        deliveryMethod: json["deliveryMethod"],
        paymentMethod: json["paymentMethod"],
        orderid: json["orderid"],
        status: json["status"],
        createdAt: json["createdAt"]);
  }
}

List<OrdersData> parseOrdersData(jsonData) {
  final parsed = jsonData.cast<Map<String, dynamic>>();

  return parsed.map<OrdersData>((json) => OrdersData.fromJson(json)).toList();
}

//
class TagsData {
  var name;
  var id;

  TagsData({this.name, this.id});

  factory TagsData.fromJson(Map<String, dynamic> json) {
    return TagsData(name: json["name"], id: json["_id"]);
  }
}

List<TagsData> parseTagsData(jsonData) {
  final parsed = jsonData.cast<Map<String, dynamic>>();

  return parsed.map<TagsData>((json) => TagsData.fromJson(json)).toList();
}

//
class AllRequestData {
  var name;
  var image;
  var id;
  var desc;
  var type;
  var status;

  AllRequestData(
      {this.name, this.id, this.desc, this.type, this.image, this.status});

  factory AllRequestData.fromJson(Map<String, dynamic> json) {
    return AllRequestData(
        name: json["name"],
        type: json["type"],
        id: json["_id"],
        desc: json["desc"],
        image: json["image"],
        status: json["status"]);
  }
}

List<AllRequestData> parseAllRequestData(jsonData) {
  final parsed = jsonData.cast<Map<String, dynamic>>();

  return parsed
      .map<AllRequestData>((json) => AllRequestData.fromJson(json))
      .toList();
}
