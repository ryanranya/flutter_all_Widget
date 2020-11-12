

class BookNameModel {
  final int code;
  final List<BookNameList> data;

  BookNameModel({this.code,this.data});

  factory BookNameModel.fromJson(Map<String, dynamic> parsedJson){
    var list = parsedJson['data'] as List;
    List<BookNameList> bookList = list.map((i) => BookNameList.fromJson(i)).toList();
    return BookNameModel(
      code: parsedJson['code'],
      data: bookList
    );
  }
}

class BookNameList {
  final int id;
  final String book_name;
  final String book_introduction;

  BookNameList({this.id, this.book_name, this.book_introduction});

  factory BookNameList.fromJson(Map<String, dynamic> parsedJson){
    return BookNameList(
      id: parsedJson['id'],
      book_name: parsedJson['book_name'],
      book_introduction: parsedJson['book_introduction']
      );
  }
}