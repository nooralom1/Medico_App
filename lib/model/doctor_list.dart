class DoctorListModel {
  List<Doctors>? doctors;

  DoctorListModel({this.doctors});

  DoctorListModel.fromJson(Map<String, dynamic> json) {
    if (json['doctors'] != null) {
      doctors = <Doctors>[];
      json['doctors'].forEach((v) {
        doctors!.add(new Doctors.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.doctors != null) {
      data['doctors'] = this.doctors!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Doctors {
  String? image;
  String? name;
  String? specialty;
  String? category;
  String? education;
  String? working;
  String? bmDcNumber;
  String? experience;

  Doctors(
      {this.image,
        this.name,
        this.specialty,
        this.category,
        this.education,
        this.working,
        this.bmDcNumber,
        this.experience});

  Doctors.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    specialty = json['Specialty'];
    category = json['category'];
    education = json['education'];
    working = json['working'];
    bmDcNumber = json['bmDcNumber'];
    experience = json['experience'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['Specialty'] = this.specialty;
    data['category'] = this.category;
    data['education'] = this.education;
    data['working'] = this.working;
    data['bmDcNumber'] = this.bmDcNumber;
    data['experience'] = this.experience;
    return data;
  }
}
