class HospitalListModel {
  List<Hospitals>? hospitals;

  HospitalListModel({this.hospitals});

  HospitalListModel.fromJson(Map<String, dynamic> json) {
    if (json['hospitals'] != null) {
      hospitals = <Hospitals>[];
      json['hospitals'].forEach((v) {
        hospitals!.add(new Hospitals.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.hospitals != null) {
      data['hospitals'] = this.hospitals!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Hospitals {
  String? image;
  String? name;
  String? category;
  String? location;
  String? code;

  Hospitals({this.image, this.name, this.category, this.location, this.code});

  Hospitals.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    category = json['category'];
    location = json['location'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['category'] = this.category;
    data['location'] = this.location;
    data['code'] = this.code;
    return data;
  }
}
