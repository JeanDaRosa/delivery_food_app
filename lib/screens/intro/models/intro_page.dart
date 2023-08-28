import 'dart:convert';


class IntroPage {
  String image;
  String desc;
  String title;
  IntroPage({
    required this.image,
    required this.desc,
    required this.title,
  });

  IntroPage copyWith({
    String? image,
    String? desc,
    String? title,
  }) {
    return IntroPage(
      image: image ?? this.image,
      desc: desc ?? this.desc,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'desc': desc,
      'title': title,
    };
  }

  factory IntroPage.fromMap(Map<String, dynamic> map) {
    return IntroPage(
      image: map['image'] ?? '',
      desc: map['desc'] ?? '',
      title: map['title'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory IntroPage.fromJson(String source) => IntroPage.fromMap(json.decode(source));

  @override
  String toString() => 'Pages(image: $image, desc: $desc, title: $title)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is IntroPage &&
      other.image == image &&
      other.desc == desc &&
      other.title == title;
  }

  @override
  int get hashCode => image.hashCode ^ desc.hashCode ^ title.hashCode;
}
