import 'package:flutter/material.dart';

import '../../../widgets/appbar_chatpage_and_session.dart';
import '../components/appbar_create_session.dart';
import '../components/create_session.dart';

class CreateSession extends StatefulWidget {
  const CreateSession({Key? key}) : super(key: key);

  @override
  State<CreateSession> createState() => _CreateSessionState();
}

class _CreateSessionState extends State<CreateSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBarCreateSession(
          title:"Session",
          clr: Colors.white,
        ),
      ),
      body: SessionPersonalInformation(),
    );
  }
}
