class OnBoardingModel {
  String? title;
  String? image;
  String? body;

  OnBoardingModel({this.title, this.image, this.body});

  OnBoardingModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['image'] = this.image;
    data['body'] = this.body;
    return data;
  }
}
