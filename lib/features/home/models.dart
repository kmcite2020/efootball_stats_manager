import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Player with _$Player {
  const factory Player({
    required String name,
    required int goals,
  }) = _Player;
  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}
