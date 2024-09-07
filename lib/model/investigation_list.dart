class InvestigationListModel {
  List<Investigations>? investigations;

  InvestigationListModel({this.investigations});

  InvestigationListModel.fromJson(Map<String, dynamic> json) {
    if (json['investigations'] != null) {
      investigations = <Investigations>[];
      json['investigations'].forEach((v) {
        investigations!.add(new Investigations.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.investigations != null) {
      data['investigations'] =
          this.investigations!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Investigations {
  String? title;

  Investigations({this.title});

  Investigations.fromJson(Map<String, dynamic> json) {
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    return data;
  }
}
