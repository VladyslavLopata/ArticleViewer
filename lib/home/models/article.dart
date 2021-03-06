import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String header;
  final String content;

  const Article({
    this.header,
    this.content,
  });

  @override
  List<Object> get props => [header, content];
}
