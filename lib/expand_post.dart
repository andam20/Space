import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ExpandPost extends StatefulWidget {
  const ExpandPost({Key? key}) : super(key: key);

  @override
  State<ExpandPost> createState() => _ExpandPostState();
}

class _ExpandPostState extends State<ExpandPost> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.red,
          height: 123,
          width: 123,
          child: Text('expand'),
        ),
      ),
    );
  }
}
