class Item {
  String title;
  bool done;

  /**
   * Item for storing promises.
   */
  Item({this.done, this.title});

  Item.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    done = json['done'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['done'] = this.done;
    return data;
  }
}
//https://javiercbk.github.io/json_to_dart/
