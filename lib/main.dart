import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/customer/ui/customer_detail.dart';
import 'package:my_inventory/user.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MyApp());
  // Client client = Client();
  //
  // client
  //     .setEndpoint('https://cloud.appwrite.io/v1') // Your Appwrite Endpoint
  //     .setProject('65c1e7733a536752855d')
  //     ;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const  CustomerDetail(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final client = Client()
      .setEndpoint('https://cloud.appwrite.io/v1')
      .setProject('65c1e7733a536752855d');

  Future<void> _incrementCounter() async {
    // setState(() {
    //   final databases = Databases(client);
    //   try {
    //    for(int i=0;i<1000;i++){
    //      final document = databases.createDocument(
    //          databaseId: 'inventory_db',
    //          collectionId: 'customer_db',
    //          documentId: ID.unique(),
    //          data: {
    //            "name": "Hamlet",
    //            "type": "aaa",
    //            "email": "frebhj@dbeu.vfd",
    //            "phone": ['vfbdh', 'fjgr']
    //          });
    //    }
    //   } on AppwriteException catch (e) {
    //     print(e.code);
    //   }
    // });
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [UserSchema],
      directory: dir.path,
    );
    final newUser = User()..name = 'Jane Doe'..age = 36;

    await isar.writeTxn(() async {
      await isar.users.put(newUser); // insert & update
    });

  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
