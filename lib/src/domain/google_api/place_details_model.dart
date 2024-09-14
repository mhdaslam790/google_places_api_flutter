import 'dart:convert';

import 'package:flutter/foundation.dart';

class PlaceDetailsModel {
  final List<dynamic>? html_attributions;
  final Result result;
  final String status;
  PlaceDetailsModel({
    this.html_attributions,
    required this.result,
    required this.status,
  });

  PlaceDetailsModel copyWith({
    ValueGetter<List<dynamic>?>? html_attributions,
    Result? result,
    String? status,
  }) {
    return PlaceDetailsModel(
      html_attributions: html_attributions != null
          ? html_attributions()
          : this.html_attributions,
      result: result ?? this.result,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'html_attributions': html_attributions,
      'result': result.toMap(),
      'status': status,
    };
  }

  factory PlaceDetailsModel.fromMap(Map<String, dynamic> map) {
    return PlaceDetailsModel(
      html_attributions: List<dynamic>.from(map['html_attributions']),
      result: Result.fromMap(map['result']),
      status: map['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PlaceDetailsModel.fromJson(String source) =>
      PlaceDetailsModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'PlaceDetailsModel(html_attributions: $html_attributions, result: $result, status: $status)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PlaceDetailsModel &&
        listEquals(other.html_attributions, html_attributions) &&
        other.result == result &&
        other.status == status;
  }

  @override
  int get hashCode =>
      html_attributions.hashCode ^ result.hashCode ^ status.hashCode;
}

class Result {
  final List<Address_component>? address_components;
  final String? adr_address;
  final String? business_status;
  final String? formatted_address;
  final String? formatted_phone_number;
  final Geometry? geometry;
  final String? icon;
  final String? icon_background_color;
  final String? icon_mask_base_uri;
  final String? international_phone_number;
  final String? name;
  final List<Photo>? photos;
  final String? place_id;
  final Plus_code? plus_code;
  final double? rating;
  final String? reference;
  final List<Review>? reviews;
  final List<String>? types;
  final String? url;
  final int? user_ratings_total;
  final int? utc_offset;
  final String? vicinity;
  final String? website;
  final bool? wheelchair_accessible_entrance;
  Result({
    this.address_components,
    this.adr_address,
    this.business_status,
    this.formatted_address,
    this.formatted_phone_number,
    this.geometry,
    this.icon,
    this.icon_background_color,
    this.icon_mask_base_uri,
    this.international_phone_number,
    this.name,
    this.photos,
    this.place_id,
    this.plus_code,
    this.rating,
    this.reference,
    this.reviews,
    this.types,
    this.url,
    this.user_ratings_total,
    this.utc_offset,
    this.vicinity,
    this.website,
    this.wheelchair_accessible_entrance,
  });

  Result copyWith({
    ValueGetter<List<Address_component>?>? address_components,
    ValueGetter<String?>? adr_address,
    ValueGetter<String?>? business_status,
    ValueGetter<String?>? formatted_address,
    ValueGetter<String?>? formatted_phone_number,
    ValueGetter<Geometry?>? geometry,
    ValueGetter<String?>? icon,
    ValueGetter<String?>? icon_background_color,
    ValueGetter<String?>? icon_mask_base_uri,
    ValueGetter<String?>? international_phone_number,
    ValueGetter<String?>? name,
    ValueGetter<List<Photo>?>? photos,
    ValueGetter<String?>? place_id,
    ValueGetter<Plus_code?>? plus_code,
    ValueGetter<double?>? rating,
    ValueGetter<String?>? reference,
    ValueGetter<List<Review>?>? reviews,
    ValueGetter<List<String>?>? types,
    ValueGetter<String?>? url,
    ValueGetter<int?>? user_ratings_total,
    ValueGetter<int?>? utc_offset,
    ValueGetter<String?>? vicinity,
    ValueGetter<String?>? website,
    ValueGetter<bool?>? wheelchair_accessible_entrance,
  }) {
    return Result(
      address_components: address_components != null
          ? address_components()
          : this.address_components,
      adr_address: adr_address != null ? adr_address() : this.adr_address,
      business_status:
          business_status != null ? business_status() : this.business_status,
      formatted_address: formatted_address != null
          ? formatted_address()
          : this.formatted_address,
      formatted_phone_number: formatted_phone_number != null
          ? formatted_phone_number()
          : this.formatted_phone_number,
      geometry: geometry != null ? geometry() : this.geometry,
      icon: icon != null ? icon() : this.icon,
      icon_background_color: icon_background_color != null
          ? icon_background_color()
          : this.icon_background_color,
      icon_mask_base_uri: icon_mask_base_uri != null
          ? icon_mask_base_uri()
          : this.icon_mask_base_uri,
      international_phone_number: international_phone_number != null
          ? international_phone_number()
          : this.international_phone_number,
      name: name != null ? name() : this.name,
      photos: photos != null ? photos() : this.photos,
      place_id: place_id != null ? place_id() : this.place_id,
      plus_code: plus_code != null ? plus_code() : this.plus_code,
      rating: rating != null ? rating() : this.rating,
      reference: reference != null ? reference() : this.reference,
      reviews: reviews != null ? reviews() : this.reviews,
      types: types != null ? types() : this.types,
      url: url != null ? url() : this.url,
      user_ratings_total: user_ratings_total != null
          ? user_ratings_total()
          : this.user_ratings_total,
      utc_offset: utc_offset != null ? utc_offset() : this.utc_offset,
      vicinity: vicinity != null ? vicinity() : this.vicinity,
      website: website != null ? website() : this.website,
      wheelchair_accessible_entrance: wheelchair_accessible_entrance != null
          ? wheelchair_accessible_entrance()
          : this.wheelchair_accessible_entrance,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'address_components': address_components?.map((x) => x.toMap()).toList(),
      'adr_address': adr_address,
      'business_status': business_status,
      'formatted_address': formatted_address,
      'formatted_phone_number': formatted_phone_number,
      'geometry': geometry?.toMap(),
      'icon': icon,
      'icon_background_color': icon_background_color,
      'icon_mask_base_uri': icon_mask_base_uri,
      'international_phone_number': international_phone_number,
      'name': name,
      'photos': photos?.map((x) => x.toMap()).toList(),
      'place_id': place_id,
      'plus_code': plus_code?.toMap(),
      'rating': rating,
      'reference': reference,
      'reviews': reviews?.map((x) => x.toMap()).toList(),
      'types': types,
      'url': url,
      'user_ratings_total': user_ratings_total,
      'utc_offset': utc_offset,
      'vicinity': vicinity,
      'website': website,
      'wheelchair_accessible_entrance': wheelchair_accessible_entrance,
    };
  }

  factory Result.fromMap(Map<String, dynamic> map) {
    return Result(
      address_components: map['address_components'] != null
          ? List<Address_component>.from(map['address_components']
              ?.map((x) => Address_component.fromMap(x)))
          : null,
      adr_address: map['adr_address'],
      business_status: map['business_status'],
      formatted_address: map['formatted_address'],
      formatted_phone_number: map['formatted_phone_number'],
      geometry:
          map['geometry'] != null ? Geometry.fromMap(map['geometry']) : null,
      icon: map['icon'],
      icon_background_color: map['icon_background_color'],
      icon_mask_base_uri: map['icon_mask_base_uri'],
      international_phone_number: map['international_phone_number'],
      name: map['name'],
      photos: map['photos'] != null
          ? List<Photo>.from(map['photos']?.map((x) => Photo.fromMap(x)))
          : null,
      place_id: map['place_id'],
      plus_code:
          map['plus_code'] != null ? Plus_code.fromMap(map['plus_code']) : null,
      rating: map['rating']?.toDouble(),
      reference: map['reference'],
      reviews: map['reviews'] != null
          ? List<Review>.from(map['reviews']?.map((x) => Review.fromMap(x)))
          : null,
      types: List<String>.from(map['types']),
      url: map['url'],
      user_ratings_total: map['user_ratings_total']?.toInt(),
      utc_offset: map['utc_offset']?.toInt(),
      vicinity: map['vicinity'],
      website: map['website'],
      wheelchair_accessible_entrance: map['wheelchair_accessible_entrance'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Result.fromJson(String source) => Result.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Result(address_components: $address_components, adr_address: $adr_address, business_status: $business_status, formatted_address: $formatted_address, formatted_phone_number: $formatted_phone_number, geometry: $geometry, icon: $icon, icon_background_color: $icon_background_color, icon_mask_base_uri: $icon_mask_base_uri, international_phone_number: $international_phone_number, name: $name, photos: $photos, place_id: $place_id, plus_code: $plus_code, rating: $rating, reference: $reference, reviews: $reviews, types: $types, url: $url, user_ratings_total: $user_ratings_total, utc_offset: $utc_offset, vicinity: $vicinity, website: $website, wheelchair_accessible_entrance: $wheelchair_accessible_entrance)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Result &&
        listEquals(other.address_components, address_components) &&
        other.adr_address == adr_address &&
        other.business_status == business_status &&
        other.formatted_address == formatted_address &&
        other.formatted_phone_number == formatted_phone_number &&
        other.geometry == geometry &&
        other.icon == icon &&
        other.icon_background_color == icon_background_color &&
        other.icon_mask_base_uri == icon_mask_base_uri &&
        other.international_phone_number == international_phone_number &&
        other.name == name &&
        listEquals(other.photos, photos) &&
        other.place_id == place_id &&
        other.plus_code == plus_code &&
        other.rating == rating &&
        other.reference == reference &&
        listEquals(other.reviews, reviews) &&
        listEquals(other.types, types) &&
        other.url == url &&
        other.user_ratings_total == user_ratings_total &&
        other.utc_offset == utc_offset &&
        other.vicinity == vicinity &&
        other.website == website &&
        other.wheelchair_accessible_entrance == wheelchair_accessible_entrance;
  }

  @override
  int get hashCode {
    return address_components.hashCode ^
        adr_address.hashCode ^
        business_status.hashCode ^
        formatted_address.hashCode ^
        formatted_phone_number.hashCode ^
        geometry.hashCode ^
        icon.hashCode ^
        icon_background_color.hashCode ^
        icon_mask_base_uri.hashCode ^
        international_phone_number.hashCode ^
        name.hashCode ^
        photos.hashCode ^
        place_id.hashCode ^
        plus_code.hashCode ^
        rating.hashCode ^
        reference.hashCode ^
        reviews.hashCode ^
        types.hashCode ^
        url.hashCode ^
        user_ratings_total.hashCode ^
        utc_offset.hashCode ^
        vicinity.hashCode ^
        website.hashCode ^
        wheelchair_accessible_entrance.hashCode;
  }
}

class Address_component {
  final String long_name;
  final String short_name;
  final List<String>? types;
  Address_component({
    required this.long_name,
    required this.short_name,
    this.types,
  });

  Address_component copyWith({
    String? long_name,
    String? short_name,
    ValueGetter<List<String>?>? types,
  }) {
    return Address_component(
      long_name: long_name ?? this.long_name,
      short_name: short_name ?? this.short_name,
      types: types != null ? types() : this.types,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'long_name': long_name,
      'short_name': short_name,
      'types': types,
    };
  }

  factory Address_component.fromMap(Map<String, dynamic> map) {
    return Address_component(
      long_name: map['long_name'] ?? '',
      short_name: map['short_name'] ?? '',
      types: List<String>.from(map['types']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Address_component.fromJson(String source) =>
      Address_component.fromMap(json.decode(source));

  @override
  String toString() =>
      'Address_component(long_name: $long_name, short_name: $short_name, types: $types)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Address_component &&
        other.long_name == long_name &&
        other.short_name == short_name &&
        listEquals(other.types, types);
  }

  @override
  int get hashCode => long_name.hashCode ^ short_name.hashCode ^ types.hashCode;
}

class Geometry {
  final Location location;
  final Viewport viewport;
  Geometry({
    required this.location,
    required this.viewport,
  });

  Geometry copyWith({
    Location? location,
    Viewport? viewport,
  }) {
    return Geometry(
      location: location ?? this.location,
      viewport: viewport ?? this.viewport,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'location': location.toMap(),
      'viewport': viewport.toMap(),
    };
  }

  factory Geometry.fromMap(Map<String, dynamic> map) {
    return Geometry(
      location: Location.fromMap(map['location']),
      viewport: Viewport.fromMap(map['viewport']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Geometry.fromJson(String source) =>
      Geometry.fromMap(json.decode(source));

  @override
  String toString() => 'Geometry(location: $location, viewport: $viewport)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Geometry &&
        other.location == location &&
        other.viewport == viewport;
  }

  @override
  int get hashCode => location.hashCode ^ viewport.hashCode;
}

class Location {
  final double lat;
  final double lng;
  Location({
    required this.lat,
    required this.lng,
  });

  Location copyWith({
    double? lat,
    double? lng,
  }) {
    return Location(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'lat': lat,
      'lng': lng,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      lat: map['lat']?.toDouble() ?? 0.0,
      lng: map['lng']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source));

  @override
  String toString() => 'Location(lat: $lat, lng: $lng)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Location && other.lat == lat && other.lng == lng;
  }

  @override
  int get hashCode => lat.hashCode ^ lng.hashCode;
}

class Viewport {
  final Northeast northeast;
  final Southwest southwest;
  Viewport({
    required this.northeast,
    required this.southwest,
  });

  Viewport copyWith({
    Northeast? northeast,
    Southwest? southwest,
  }) {
    return Viewport(
      northeast: northeast ?? this.northeast,
      southwest: southwest ?? this.southwest,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'northeast': northeast.toMap(),
      'southwest': southwest.toMap(),
    };
  }

  factory Viewport.fromMap(Map<String, dynamic> map) {
    return Viewport(
      northeast: Northeast.fromMap(map['northeast']),
      southwest: Southwest.fromMap(map['southwest']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Viewport.fromJson(String source) =>
      Viewport.fromMap(json.decode(source));

  @override
  String toString() => 'Viewport(northeast: $northeast, southwest: $southwest)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Viewport &&
        other.northeast == northeast &&
        other.southwest == southwest;
  }

  @override
  int get hashCode => northeast.hashCode ^ southwest.hashCode;
}

class Northeast {
  final double lat;
  final double lng;
  Northeast({
    required this.lat,
    required this.lng,
  });

  Northeast copyWith({
    double? lat,
    double? lng,
  }) {
    return Northeast(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'lat': lat,
      'lng': lng,
    };
  }

  factory Northeast.fromMap(Map<String, dynamic> map) {
    return Northeast(
      lat: map['lat']?.toDouble() ?? 0.0,
      lng: map['lng']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Northeast.fromJson(String source) =>
      Northeast.fromMap(json.decode(source));

  @override
  String toString() => 'Northeast(lat: $lat, lng: $lng)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Northeast && other.lat == lat && other.lng == lng;
  }

  @override
  int get hashCode => lat.hashCode ^ lng.hashCode;
}

class Southwest {
  final double lat;
  final double lng;
  Southwest({
    required this.lat,
    required this.lng,
  });

  Southwest copyWith({
    double? lat,
    double? lng,
  }) {
    return Southwest(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'lat': lat,
      'lng': lng,
    };
  }

  factory Southwest.fromMap(Map<String, dynamic> map) {
    return Southwest(
      lat: map['lat']?.toDouble() ?? 0.0,
      lng: map['lng']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Southwest.fromJson(String source) =>
      Southwest.fromMap(json.decode(source));

  @override
  String toString() => 'Southwest(lat: $lat, lng: $lng)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Southwest && other.lat == lat && other.lng == lng;
  }

  @override
  int get hashCode => lat.hashCode ^ lng.hashCode;
}

class Photo {
  final int height;
  final List<String> html_attributions;
  final String photo_reference;
  final int width;
  Photo({
    required this.height,
    required this.html_attributions,
    required this.photo_reference,
    required this.width,
  });

  Photo copyWith({
    int? height,
    List<String>? html_attributions,
    String? photo_reference,
    int? width,
  }) {
    return Photo(
      height: height ?? this.height,
      html_attributions: html_attributions ?? this.html_attributions,
      photo_reference: photo_reference ?? this.photo_reference,
      width: width ?? this.width,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'height': height,
      'html_attributions': html_attributions,
      'photo_reference': photo_reference,
      'width': width,
    };
  }

  factory Photo.fromMap(Map<String, dynamic> map) {
    return Photo(
      height: map['height']?.toInt() ?? 0,
      html_attributions: List<String>.from(map['html_attributions']),
      photo_reference: map['photo_reference'] ?? '',
      width: map['width']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Photo.fromJson(String source) => Photo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Photo(height: $height, html_attributions: $html_attributions, photo_reference: $photo_reference, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Photo &&
        other.height == height &&
        listEquals(other.html_attributions, html_attributions) &&
        other.photo_reference == photo_reference &&
        other.width == width;
  }

  @override
  int get hashCode {
    return height.hashCode ^
        html_attributions.hashCode ^
        photo_reference.hashCode ^
        width.hashCode;
  }
}

class Plus_code {
  final String? compound_code;
  final String global_code;
  Plus_code({
    this.compound_code,
    required this.global_code,
  });

  Plus_code copyWith({
    ValueGetter<String?>? compound_code,
    String? global_code,
  }) {
    return Plus_code(
      compound_code:
          compound_code != null ? compound_code() : this.compound_code,
      global_code: global_code ?? this.global_code,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'compound_code': compound_code,
      'global_code': global_code,
    };
  }

  factory Plus_code.fromMap(Map<String, dynamic> map) {
    return Plus_code(
      compound_code: map['compound_code'],
      global_code: map['global_code'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Plus_code.fromJson(String source) =>
      Plus_code.fromMap(json.decode(source));

  @override
  String toString() =>
      'Plus_code(compound_code: $compound_code, global_code: $global_code)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Plus_code &&
        other.compound_code == compound_code &&
        other.global_code == global_code;
  }

  @override
  int get hashCode => compound_code.hashCode ^ global_code.hashCode;
}

class Review {
  final String author_name;
  final String? author_url;
  final String? language;
  final String original_language;
  final String profile_photo_url;
  final int rating;
  final String relative_time_description;
  final String text;
  final int time;
  final bool translated;
  Review({
    required this.author_name,
    this.author_url,
    this.language,
    required this.original_language,
    required this.profile_photo_url,
    required this.rating,
    required this.relative_time_description,
    required this.text,
    required this.time,
    required this.translated,
  });

  Review copyWith({
    String? author_name,
    ValueGetter<String?>? author_url,
    ValueGetter<String?>? language,
    String? original_language,
    String? profile_photo_url,
    int? rating,
    String? relative_time_description,
    String? text,
    int? time,
    bool? translated,
  }) {
    return Review(
      author_name: author_name ?? this.author_name,
      author_url: author_url != null ? author_url() : this.author_url,
      language: language != null ? language() : this.language,
      original_language: original_language ?? this.original_language,
      profile_photo_url: profile_photo_url ?? this.profile_photo_url,
      rating: rating ?? this.rating,
      relative_time_description:
          relative_time_description ?? this.relative_time_description,
      text: text ?? this.text,
      time: time ?? this.time,
      translated: translated ?? this.translated,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'author_name': author_name,
      'author_url': author_url,
      'language': language,
      'original_language': original_language,
      'profile_photo_url': profile_photo_url,
      'rating': rating,
      'relative_time_description': relative_time_description,
      'text': text,
      'time': time,
      'translated': translated,
    };
  }

  factory Review.fromMap(Map<String, dynamic> map) {
    return Review(
      author_name: map['author_name'] ?? '',
      author_url: map['author_url'],
      language: map['language'],
      original_language: map['original_language'] ?? '',
      profile_photo_url: map['profile_photo_url'] ?? '',
      rating: map['rating']?.toInt() ?? 0,
      relative_time_description: map['relative_time_description'] ?? '',
      text: map['text'] ?? '',
      time: map['time']?.toInt() ?? 0,
      translated: map['translated'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Review.fromJson(String source) => Review.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Review(author_name: $author_name, author_url: $author_url, language: $language, original_language: $original_language, profile_photo_url: $profile_photo_url, rating: $rating, relative_time_description: $relative_time_description, text: $text, time: $time, translated: $translated)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Review &&
        other.author_name == author_name &&
        other.author_url == author_url &&
        other.language == language &&
        other.original_language == original_language &&
        other.profile_photo_url == profile_photo_url &&
        other.rating == rating &&
        other.relative_time_description == relative_time_description &&
        other.text == text &&
        other.time == time &&
        other.translated == translated;
  }

  @override
  int get hashCode {
    return author_name.hashCode ^
        author_url.hashCode ^
        language.hashCode ^
        original_language.hashCode ^
        profile_photo_url.hashCode ^
        rating.hashCode ^
        relative_time_description.hashCode ^
        text.hashCode ^
        time.hashCode ^
        translated.hashCode;
  }
}
