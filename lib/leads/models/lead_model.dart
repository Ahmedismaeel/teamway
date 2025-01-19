class LeadModel {
  int? page;
  int? size;
  List<Content>? content;

  LeadModel({this.page, this.size, this.content});

  LeadModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    size = json['size'];
    if (json['content'] != null) {
      content = <Content>[];
      json['content'].forEach((v) {
        content!.add(new Content.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['size'] = this.size;
    if (this.content != null) {
      data['content'] = this.content!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Content {
  String? id;
  String? companyName;
  String? phone;
  String? email;
  String? price;
  String? address;
  String? website;
  String? vatNumber;
  String? nextFollowUp;
  String? contacted;
  String? contactDate;
  String? solutionLabels;
  String? met;
  int? leadSourceId;
  PrimaryContact? primaryContact;
  Owner? owner;
  Status? status;

  Content(
      {this.id,
      this.companyName,
      this.phone,
      this.email,
      this.price,
      this.address,
      this.website,
      this.vatNumber,
      this.nextFollowUp,
      this.contacted,
      this.contactDate,
      this.solutionLabels,
      this.met,
      this.leadSourceId,
      this.primaryContact,
      this.owner,
      this.status});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyName = json['company_name'];
    phone = json['phone'];
    email = json['email'];
    price = json['price'];
    address = json['address'];
    website = json['website'];
    vatNumber = json['vat_number'];
    nextFollowUp = json['next_follow_up'];
    contacted = json['contacted'];
    contactDate = json['contact_date'];
    solutionLabels = json['solution_labels'];
    met = json['met'];
    leadSourceId = json['lead_source_id'];
    primaryContact = json['primary_contact'] != null
        ? new PrimaryContact.fromJson(json['primary_contact'])
        : null;
    owner = json['owner'] != null ? new Owner.fromJson(json['owner']) : null;
    status =
        json['status'] != null ? new Status.fromJson(json['status']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['company_name'] = this.companyName;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['price'] = this.price;
    data['address'] = this.address;
    data['website'] = this.website;
    data['vat_number'] = this.vatNumber;
    data['next_follow_up'] = this.nextFollowUp;
    data['contacted'] = this.contacted;
    data['contact_date'] = this.contactDate;
    data['solution_labels'] = this.solutionLabels;
    data['met'] = this.met;
    data['lead_source_id'] = this.leadSourceId;
    if (this.primaryContact != null) {
      data['primary_contact'] = this.primaryContact!.toJson();
    }
    if (this.owner != null) {
      data['owner'] = this.owner!.toJson();
    }
    if (this.status != null) {
      data['status'] = this.status!.toJson();
    }
    return data;
  }
}

class PrimaryContact {
  int? id;
  String? primaryContact;
  String? avatar;

  PrimaryContact({this.id, this.primaryContact, this.avatar});

  PrimaryContact.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    primaryContact = json['primary_contact'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['primary_contact'] = this.primaryContact;
    data['avatar'] = this.avatar;
    return data;
  }
}

class Owner {
  int? id;
  String? name;
  String? avatar;

  Owner({this.id, this.name, this.avatar});

  Owner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['avatar'] = this.avatar;
    return data;
  }
}

class Status {
  String? id;
  String? title;
  String? color;

  Status({this.id, this.title, this.color});

  Status.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['color'] = this.color;
    return data;
  }
}
