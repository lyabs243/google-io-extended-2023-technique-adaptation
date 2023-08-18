import 'package:intl/intl.dart';
import 'package:lyabs_dev/utils/enums.dart';

class MessageItem {

  String message;
  DateTime date;
  ChatType type;

  MessageItem({
    required this.message,
    required this.date,
    required this.type,
  });

  // message time in format 7:30 PM when it is today and Wed 7:30 PM when it is not today
  String get timeDetails {
    if (isToday(date)) {
      return DateFormat('hh:mm a').format(date);
    } else {
      return DateFormat('EEE hh:mm a').format(date);
    }
  }

  bool isToday(DateTime date) {
    DateTime now = DateTime.now();
    return (now.year == date.year && now.month == date.month && now.day == date.day);
  }

  // return some random messages
  static List<MessageItem> randomMessages() {
    return [
      MessageItem(message: 'Salut', date: DateTime.now().subtract(const Duration(days: 2)), type: ChatType.received),
      MessageItem(message: 'Salut', date: DateTime.now().subtract(const Duration(days: 2)), type: ChatType.sent),
      MessageItem(message: 'Comment vas-tu ? lorem ipsum lorem ipsum', date: DateTime.now().subtract(const Duration(days: 2)), type: ChatType.received),
      MessageItem(message: 'Je vais bien et toi ? lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', date: DateTime.now().subtract(const Duration(days: 2)), type: ChatType.sent),
      MessageItem(message: 'Je vais bien et toi ?', date: DateTime.now().subtract(const Duration(days: 2)), type: ChatType.received),
      MessageItem(message: 'Je vais bien et toi ?', date: DateTime.now().subtract(const Duration(days: 2)), type: ChatType.sent),
      MessageItem(message: 'Oui ca va... quelles sont les nouvelles? lorem ipsum lorem ipsum', date: DateTime.now().subtract(const Duration(hours: 28)), type: ChatType.received),
      MessageItem(message: 'Rien', date: DateTime.now().subtract(const Duration(hours: 27)), type: ChatType.sent),
      MessageItem(message: 'Rien', date: DateTime.now().subtract(const Duration(hours: 27)), type: ChatType.received),
      MessageItem(message: 'Bonne journee mon cher lorem ipsum lorem ipsum', date: DateTime.now().subtract(const Duration(hours: 26)), type: ChatType.sent),
      MessageItem(message: 'Bonne journee mon cher', date: DateTime.now().subtract(const Duration(hours: 25)), type: ChatType.sent),
      MessageItem(message: 'Bonne journee mon cher lorem ipsum lorem ipsum lorem ipsum lorem ipsum', date: DateTime.now().subtract(const Duration(hours: 24)), type: ChatType.sent),
      MessageItem(message: 'Merci beaucoup', date: DateTime.now().subtract(const Duration(hours: 18)), type: ChatType.received),
    ];
  }

}