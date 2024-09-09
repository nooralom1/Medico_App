class LanguageListModel {
  List<Languages>? languages;

  LanguageListModel({this.languages});

  LanguageListModel.fromJson(Map<String, dynamic> json) {
    if (json['languages'] != null) {
      languages = <Languages>[];
      json['languages'].forEach((v) {
        languages!.add(new Languages.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.languages != null) {
      data['languages'] = this.languages!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Languages {
  String? language;

  Languages({this.language});

  Languages.fromJson(Map<String, dynamic> json) {
    language = json['language'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['language'] = this.language;
    return data;
  }
}
