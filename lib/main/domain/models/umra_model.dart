class UmraModel {
  final String title;
  final String arabicText;
  final String transliteration;
  final String translation;
  final String description;
  final String category;

  UmraModel({
    required this.title,
    required this.arabicText,
    required this.transliteration,
    required this.translation,
    this.description = '',
    this.category = '',
  });
}

class TawafPrayer extends UmraModel {
  final int order;
  final String tawafStage;

  TawafPrayer({
    required super.title,
    required super.arabicText,
    required super.transliteration,
    required super.translation,
    super.description,
    this.order = 0,
    this.tawafStage = '',
  });
}

class TawafStage {
  final String name;
  final String description;
  final int order;
  final List<TawafPrayer> prayers;

  TawafStage({
    required this.name,
    this.description = '',
    this.order = 0,
    this.prayers = const [],
  });
}
