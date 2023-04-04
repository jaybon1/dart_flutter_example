import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: "https://gsojrselgwvmnnkowanm.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdzb2pyc2VsZ3d2bW5ua293YW5tIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODA0OTgyNTUsImV4cCI6MTk5NjA3NDI1NX0.gZw8evIjUJmWy7FeYe4KAidvEe-2qGI48dmpHn1XL6I",
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Supabase.instance.client.from("todo").select().then((value){
    //   print(value);
    // });

    Supabase.instance.client.from("todo").stream(primaryKey: ["idx"]).listen((event) {
      print(event);
    });


    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: StreamBuilder<List<Map<String, dynamic>>>(
            stream: Supabase.instance.client.from("todo").stream(primaryKey: ["idx"]),
            builder: (context, snapshot) {
              return ListView(
                children: snapshot.data?.map((e) => Text(e["content"])).toList() ?? [],
              );
            }
          ),
        ),
      ),
    );
  }
}
