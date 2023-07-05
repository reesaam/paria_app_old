import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_page_detail.freezed.dart';
part 'app_page_detail.g.dart';

@unfreezed
class AppPageDetail with _$AppPageDetail {
  const factory AppPageDetail({
    final String? pageName,
    final String? pageRoute,
    final int? bottomBarItemNumber,
    final String? bottomBarIcon,
  }) = _AppPageDetail;

  factory AppPageDetail.fromJson(Map<String, dynamic> json) =>
      _$AppPageDetailFromJson(json);
}

@unfreezed
class AppPageDetailsList with _$AppPageDetailsList {
  factory AppPageDetailsList({
    @Default(<AppPageDetail>[]) List<AppPageDetail> pageDetailsList
  }) = _AppPageDetailsList;

  factory AppPageDetailsList.fromJson(Map<String, dynamic> json) =>
      _$AppPageDetailsListFromJson(json);
}