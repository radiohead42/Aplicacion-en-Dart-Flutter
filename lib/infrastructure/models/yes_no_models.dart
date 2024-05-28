// To parse this JSON data, do
//
//     final yesNoModels = yesNoModelsFromJson(jsonString);

import 'package:yes_no_app/domain/entities/message.dart';

class YesNoModels {
  final String answer;
  final bool forced;
  final String image;

  YesNoModels({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModels.fromJsonMap(Map<String, dynamic> json) => YesNoModels(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  Message toMessageEntity() => Message(
      text: answer == 'yes' ? 'Si' : 'No',
      fromWho: FromWho.hers,
      imageUrl: image);
}
