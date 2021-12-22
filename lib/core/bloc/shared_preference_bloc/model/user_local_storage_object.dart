class UserLocalStorageObject {
  String userId;

  UserLocalStorageObject({this.userId});

  @override
  String toString() {
    return '{'
        '"userId": "$userId"'
        '}';
  }

  UserLocalStorageObject.fromJson(Map<String, dynamic> json)
      : userId = json['userId'];
}
