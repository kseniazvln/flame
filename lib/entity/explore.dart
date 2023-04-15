import 'package:freezed_annotation/freezed_annotation.dart';

part 'explore.freezed.dart';
part 'explore.g.dart';

@freezed
class ExploreItem with _$ExploreItem {
    factory ExploreItem({
    required String name,
}) = _ExploreItem;

    factory ExploreItem.fromJson(Map<String, dynamic> json) => _$ExploreItemFromJson(json);
}