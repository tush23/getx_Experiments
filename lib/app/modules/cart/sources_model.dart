class Sources {
  String status;
  List<Sources> sources;

  Sources({this.status, this.sources});

  Sources.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['sources'] != null) {
      sources = List<Sources>();
      json['sources'].forEach((v) {
        sources.add(Sources.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = this.status;
    if (this.sources != null) {
      data['sources'] = this.sources.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
