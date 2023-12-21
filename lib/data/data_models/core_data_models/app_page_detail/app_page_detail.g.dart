// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_page_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppPageDetail _$$_AppPageDetailFromJson(Map<String, dynamic> json) =>
    _$_AppPageDetail(
      pageName: json['pageName'] as String?,
      pageRoute: json['pageRoute'] as String?,
      bottomBarItemNumber: json['bottomBarItemNumber'] as int?,
      bottomBarIcon: json['bottomBarIcon'] as String?,
    );

Map<String, dynamic> _$$_AppPageDetailToJson(_$_AppPageDetail instance) =>
    <String, dynamic>{
      'pageName': instance.pageName,
      'pageRoute': instance.pageRoute,
      'bottomBarItemNumber': instance.bottomBarItemNumber,
      'bottomBarIcon': instance.bottomBarIcon,
    };

_$_AppPageDetailsList _$$_AppPageDetailsListFromJson(
        Map<String, dynamic> json) =>
    _$_AppPageDetailsList(
      pageDetailsList: (json['pageDetailsList'] as List<dynamic>?)
              ?.map((e) => AppPageDetail.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AppPageDetail>[],
    );

Map<String, dynamic> _$$_AppPageDetailsListToJson(
        _$_AppPageDetailsList instance) =>
    <String, dynamic>{
      'pageDetailsList': instance.pageDetailsList,
    };
