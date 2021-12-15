class MessageInfo {
  MessageInfo({
    required this.author,
    required this.text,
    this.date,
  });

  final String author;
  final String text;
  DateTime? date;
}
