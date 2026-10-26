/// Response models for the Comment Generator API.

/// API Response wrapper.
class CommentgeneratorResponse {
  final String status;
  final dynamic error;
  final CommentgeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CommentgeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CommentgeneratorResponse.fromJson(Map<String, dynamic> json) => CommentgeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CommentgeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Comment Generator API.

class CommentgeneratorData {
  num? count;
  String? mode;
  String? tone;
  List<String>? comments;

  CommentgeneratorData({
    this.count,
    this.mode,
    this.tone,
    this.comments,
  });

  factory CommentgeneratorData.fromJson(Map<String, dynamic> json) => CommentgeneratorData(
      count: json['count'],
      mode: json['mode'],
      tone: json['tone'],
      comments: (json['comments'] as List?)?.cast<String>(),
    );
}

class CommentgeneratorRequest {
  String mode;
  String? tone;
  int? count;
  bool? emojis;

  CommentgeneratorRequest({
    required this.mode,
    this.tone,
    this.count,
    this.emojis,
  });

  Map<String, dynamic> toJson() => {
      'mode': mode,
      if (tone != null) 'tone': tone,
      if (count != null) 'count': count,
      if (emojis != null) 'emojis': emojis,
    };
}
