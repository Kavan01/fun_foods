class PlaceData {
  PlaceData({
    String? name,
    num? price,
    String? image,}){
    _name = name;
    _price = price;
    _image = image;
  }

  PlaceData.fromJson(dynamic json) {
    _name = json['name'];
    _price = json['price'];
    _image = json['image'];
  }
  String? _name;
  num? _price;
  String? _image;
  PlaceData copyWith({  String? name,
    num? price,
    String? image,
  }) => PlaceData(  name: name ?? _name,
    price: price ?? _price,
    image: image ?? _image,
  );
  String? get name => _name;
  num? get price => _price;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['price'] = _price;
    map['image'] = _image;
    return map;
  }

}
