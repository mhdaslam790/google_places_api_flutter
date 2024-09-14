import 'dart:convert';
import 'package:flutter/foundation.dart';

class PredictionModel {
  final List<Prediction> predictions;
  final String status;
  PredictionModel({
    required this.predictions,
    required this.status,
  });

  PredictionModel copyWith({
    List<Prediction>? predictions,
    String? status,
  }) {
    return PredictionModel(
      predictions: predictions ?? this.predictions,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'predictions': predictions.map((x) => x.toMap()).toList(),
      'status': status,
    };
  }

  factory PredictionModel.fromMap(Map<String, dynamic> map) {
    return PredictionModel(
      predictions: List<Prediction>.from(
          map['predictions']?.map((x) => Prediction.fromMap(x))),
      status: map['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PredictionModel.fromJson(String source) =>
      PredictionModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'PredictionModel(predictions: $predictions, status: $status)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PredictionModel &&
        listEquals(other.predictions, predictions) &&
        other.status == status;
  }

  @override
  int get hashCode => predictions.hashCode ^ status.hashCode;
}

class Prediction {
  final String description;
  final List<Matched_substring> matched_substrings;
  final String place_id;
  final String reference;
  final Structured_formatting structured_formatting;
  final List<Term> terms;
  final List<String> types;
  Prediction({
    required this.description,
    required this.matched_substrings,
    required this.place_id,
    required this.reference,
    required this.structured_formatting,
    required this.terms,
    required this.types,
  });

  Prediction copyWith({
    String? description,
    List<Matched_substring>? matched_substrings,
    String? place_id,
    String? reference,
    Structured_formatting? structured_formatting,
    List<Term>? terms,
    List<String>? types,
  }) {
    return Prediction(
      description: description ?? this.description,
      matched_substrings: matched_substrings ?? this.matched_substrings,
      place_id: place_id ?? this.place_id,
      reference: reference ?? this.reference,
      structured_formatting:
          structured_formatting ?? this.structured_formatting,
      terms: terms ?? this.terms,
      types: types ?? this.types,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'matched_substrings': matched_substrings.map((x) => x.toMap()).toList(),
      'place_id': place_id,
      'reference': reference,
      'structured_formatting': structured_formatting.toMap(),
      'terms': terms.map((x) => x.toMap()).toList(),
      'types': types,
    };
  }

  factory Prediction.fromMap(Map<String, dynamic> map) {
    return Prediction(
      description: map['description'] ?? '',
      matched_substrings: List<Matched_substring>.from(
          map['matched_substrings']?.map((x) => Matched_substring.fromMap(x))),
      place_id: map['place_id'] ?? '',
      reference: map['reference'] ?? '',
      structured_formatting:
          Structured_formatting.fromMap(map['structured_formatting']),
      terms: List<Term>.from(map['terms']?.map((x) => Term.fromMap(x))),
      types: List<String>.from(map['types']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Prediction.fromJson(String source) =>
      Prediction.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Prediction(description: $description, matched_substrings: $matched_substrings, place_id: $place_id, reference: $reference, structured_formatting: $structured_formatting, terms: $terms, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Prediction &&
        other.description == description &&
        listEquals(other.matched_substrings, matched_substrings) &&
        other.place_id == place_id &&
        other.reference == reference &&
        other.structured_formatting == structured_formatting &&
        listEquals(other.terms, terms) &&
        listEquals(other.types, types);
  }

  @override
  int get hashCode {
    return description.hashCode ^
        matched_substrings.hashCode ^
        place_id.hashCode ^
        reference.hashCode ^
        structured_formatting.hashCode ^
        terms.hashCode ^
        types.hashCode;
  }
}

class Matched_substring {
  final int length;
  final int offset;
  Matched_substring({
    required this.length,
    required this.offset,
  });

  Matched_substring copyWith({
    int? length,
    int? offset,
  }) {
    return Matched_substring(
      length: length ?? this.length,
      offset: offset ?? this.offset,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'length': length,
      'offset': offset,
    };
  }

  factory Matched_substring.fromMap(Map<String, dynamic> map) {
    return Matched_substring(
      length: map['length']?.toInt() ?? 0,
      offset: map['offset']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Matched_substring.fromJson(String source) =>
      Matched_substring.fromMap(json.decode(source));

  @override
  String toString() => 'Matched_substring(length: $length, offset: $offset)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Matched_substring &&
        other.length == length &&
        other.offset == offset;
  }

  @override
  int get hashCode => length.hashCode ^ offset.hashCode;
}

class Structured_formatting {
  final String main_text;
  final List<Main_text_matched_substring> main_text_matched_substrings;
  final String secondary_text;
  Structured_formatting({
    required this.main_text,
    required this.main_text_matched_substrings,
    required this.secondary_text,
  });

  Structured_formatting copyWith({
    String? main_text,
    List<Main_text_matched_substring>? main_text_matched_substrings,
    String? secondary_text,
  }) {
    return Structured_formatting(
      main_text: main_text ?? this.main_text,
      main_text_matched_substrings:
          main_text_matched_substrings ?? this.main_text_matched_substrings,
      secondary_text: secondary_text ?? this.secondary_text,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'main_text': main_text,
      'main_text_matched_substrings':
          main_text_matched_substrings.map((x) => x.toMap()).toList(),
      'secondary_text': secondary_text,
    };
  }

  factory Structured_formatting.fromMap(Map<String, dynamic> map) {
    return Structured_formatting(
      main_text: map['main_text'] ?? '',
      main_text_matched_substrings: List<Main_text_matched_substring>.from(
          map['main_text_matched_substrings']
              ?.map((x) => Main_text_matched_substring.fromMap(x))),
      secondary_text: map['secondary_text'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Structured_formatting.fromJson(String source) =>
      Structured_formatting.fromMap(json.decode(source));

  @override
  String toString() =>
      'Structured_formatting(main_text: $main_text, main_text_matched_substrings: $main_text_matched_substrings, secondary_text: $secondary_text)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Structured_formatting &&
        other.main_text == main_text &&
        listEquals(
            other.main_text_matched_substrings, main_text_matched_substrings) &&
        other.secondary_text == secondary_text;
  }

  @override
  int get hashCode =>
      main_text.hashCode ^
      main_text_matched_substrings.hashCode ^
      secondary_text.hashCode;
}

class Main_text_matched_substring {
  final int length;
  final int offset;
  Main_text_matched_substring({
    required this.length,
    required this.offset,
  });

  Main_text_matched_substring copyWith({
    int? length,
    int? offset,
  }) {
    return Main_text_matched_substring(
      length: length ?? this.length,
      offset: offset ?? this.offset,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'length': length,
      'offset': offset,
    };
  }

  factory Main_text_matched_substring.fromMap(Map<String, dynamic> map) {
    return Main_text_matched_substring(
      length: map['length']?.toInt() ?? 0,
      offset: map['offset']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Main_text_matched_substring.fromJson(String source) =>
      Main_text_matched_substring.fromMap(json.decode(source));

  @override
  String toString() =>
      'Main_text_matched_substring(length: $length, offset: $offset)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Main_text_matched_substring &&
        other.length == length &&
        other.offset == offset;
  }

  @override
  int get hashCode => length.hashCode ^ offset.hashCode;
}

class Term {
  final int offset;
  final String value;
  Term({
    required this.offset,
    required this.value,
  });

  Term copyWith({
    int? offset,
    String? value,
  }) {
    return Term(
      offset: offset ?? this.offset,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'offset': offset,
      'value': value,
    };
  }

  factory Term.fromMap(Map<String, dynamic> map) {
    return Term(
      offset: map['offset']?.toInt() ?? 0,
      value: map['value'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Term.fromJson(String source) => Term.fromMap(json.decode(source));

  @override
  String toString() => 'Term(offset: $offset, value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Term && other.offset == offset && other.value == value;
  }

  @override
  int get hashCode => offset.hashCode ^ value.hashCode;
}
