import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        height: 123,
        width: 123,
        child: Text('chat'),
      ),
    );
  }
}
