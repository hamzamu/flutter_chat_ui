import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChatUi(),
    );
  }
}

class ChatUi extends StatefulWidget {
  const ChatUi({super.key});

  @override
  State<ChatUi> createState() => _ChatUiState();
}

class _ChatUiState extends State<ChatUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  for (var i = 0; i < 100; i++) ...[
                    ListTile(
                      leading: Icon(Icons.chat),
                      title: Text('Message # ${i}'),
                      subtitle: Text('Message Subtitle'),
                      trailing: CircleAvatar(
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40)),
                          child:
                              Image.network('https://i.pravatar.cc/150?img=6'),
                        ),
                      ),
                    )
                  ],

                  // TextField()
                ],
              ),
            )),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[300]),
              padding: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Write your message',
                  border: InputBorder.none,
                  fillColor: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
