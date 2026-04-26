enum SlideLayout {
  title,
  sectionHeader,
  content,
  split,
  swot,
  conclusion,
}

class Slide {
  final String title;
  final String? subtitle;
  final SlideLayout layout;
  final List<String>? bulletPoints;
  final String? primaryText;
  final String? secondaryText;
  final Map<String, List<String>>? swotData;
  final List<Map<String, String>>? keyValues;

  const Slide({
    required this.title,
    this.subtitle,
    this.layout = SlideLayout.content,
    this.bulletPoints,
    this.primaryText,
    this.secondaryText,
    this.swotData,
    this.keyValues,
  });
}
