import 'package:flutter/material.dart';
import 'package:project_f/db/data_provider.dart';
import 'package:project_f/db/database.dart';
import 'package:provider/provider.dart';

void main() {
  final database = AppDatabase();
  final dataProvider = DataProvider(database)
  runApp(MyApp(db: dataProvider));
}

class MyApp extends StatelessWidget {
  final DataProvider db;
  const MyApp({super.key, required this.db});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      Provider<DataProvider>(create:(_)=>db),
    ],
    child:MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Project F'),
    ),
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
  bool isSidebarExpanded = true;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            isSidebarExpanded ? Icons.menu_open : Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              isSidebarExpanded = !isSidebarExpanded;
            });
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.white),
            onPressed: () {},
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        foregroundColor: Colors.white,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // drawer: const NavigationDrawer(children: [
      //   NavigationDrawerDestination(
      //       icon: Icon(Icons.dashboard), label: Text('Dashboard')),
      //   NavigationDrawerDestination(
      //       icon: Icon(Icons.dashboard), label: Text('Dashboard')),
      //   NavigationDrawerDestination(
      //       icon: Icon(Icons.dashboard), label: Text('Dashboard'))
      // ]),
      body: Expanded(
        child: Row(
          children: [
            // Animated Sidebar
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              width: isSidebarExpanded ? 250 : 57,
              child: NavigationDrawer(
                  tilePadding: const EdgeInsets.symmetric(horizontal: 0),
                  indicatorShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.zero)),
                  children: [
                    NavigationDrawerDestination(
                        icon: const Icon(Icons.dashboard),
                        label:
                            isSidebarExpanded ? Text('Dashboard') : Text('')),
                    NavigationDrawerDestination(
                        icon: const Icon(Icons.dashboard),
                        label:
                            isSidebarExpanded ? Text('Dashboard') : Text('')),
                    NavigationDrawerDestination(
                        icon: Icon(Icons.dashboard),
                        label: isSidebarExpanded ? Text('Dashboard') : Text(''))
                  ]),
            ),
            // Main Content Area
            Expanded(
              child: Container(
                color: Colors.grey[200],
                child: const Center(
                  child: Text(
                    'Content Area',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
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
