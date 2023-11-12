class HotelModel {
  final String name;
  final int starts;
  final int price;
  final String currency;
  final String image;
  final dynamic reviewScore;
  final String review;
  final String address;

  HotelModel({
    required this.name,
    required this.starts,
    required this.price,
    required this.currency,
    required this.image,
    required this.reviewScore,
    required this.review,
    required this.address,
  });

  factory HotelModel.fromList(Map<String, dynamic> hotelMap) {
    return HotelModel(
      name: hotelMap['name'],
      starts: hotelMap['starts'],
      price: hotelMap['price'],
      currency: hotelMap['currency'],
      image: hotelMap['image'],
      reviewScore: hotelMap['review_score'],
      review: hotelMap['review'],
      address: hotelMap['address'],
    );
  }
}
