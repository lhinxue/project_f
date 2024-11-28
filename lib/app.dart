import 'package:flutter/material.dart';

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProjectFLayout(),
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
    );
  }
}

class ProjectFLayout extends StatefulWidget {
  @override
  _ProjectFLayoutState createState() => _ProjectFLayoutState();
}

class _ProjectFLayoutState extends State<ProjectFLayout> {
  bool isSidebarExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header
          Container(
            height: 60,
            color: Colors.blueGrey[800],
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Sidebar Toggle Button
                    IconButton(
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
                    SizedBox(width: 16),
                    // Title
                    Text(
                      'Project F',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    // Icon Buttons
                    IconButton(
                      icon: Icon(Icons.notifications, color: Colors.white),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.search, color: Colors.white),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.account_circle, color: Colors.white),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Body Content with Sidebar and Main Area
          Expanded(
            child: Row(
              children: [
                // Animated Sidebar
                AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  width: isSidebarExpanded ? 250 : 70,
                  color: Colors.blueGrey[900],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Sidebar Items
                      SidebarItem(
                        icon: Icons.dashboard,
                        label: 'Dashboard',
                        isExpanded: isSidebarExpanded,
                      ),
                      SidebarItem(
                        icon: Icons.settings,
                        label: 'Settings',
                        isExpanded: isSidebarExpanded,
                      ),
                      SidebarItem(
                        icon: Icons.info,
                        label: 'About',
                        isExpanded: isSidebarExpanded,
                      ),
                      // Add more items here
                    ],
                  ),
                ),
                // Main Content Area
                Expanded(
                  child: Container(
                    color: Colors.grey[200],
                    child: Center(
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
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}

class SidebarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isExpanded;

  const SidebarItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isExpanded,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          (isExpanded)
              ? TextButton.icon(
                  iconAlignment: IconAlignment.start,
                  label: Text(label),
                  icon: Icon(icon),
                  onPressed: () => {},
                )
              : IconButton(onPressed: () => {}, icon: Icon(icon))
        ],
      ),
    );
  }
}
