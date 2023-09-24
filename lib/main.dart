import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:market/product.dart';

import 'im.dart';

void main() => runApp(NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  NavigationBarApp({super.key});
  static const String title = 'my store';
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'store',
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      // theme: ThemeData(primarySwatch: Colors.cyan,),
      // routerConfig: router(),
    );
  }

  final GoRouter router = GoRouter(routes: <GoRoute>[
    GoRoute(
      routes: <GoRoute>[],
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const NavigationExample(),
    )
  ]);
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(NavigationBarApp.title),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.white,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            // selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.business),
            label: 'marketing',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle),
            icon: Icon(Icons.shopping_bag_rounded),
            label: 'market3',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.two_wheeler_outlined),
            icon: Icon(Icons.favorite_border),
            label: 'work',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.favorite_outline),
            icon: Icon(Icons.favorite_border),
            label: 'review',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: FittedBox(
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Colors.black,
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Im(),
                          ),
                          Container(
                            child: Pro(),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40,right: 10,),
                            width: 22,
                            height: 22,
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              backgroundColor: Colors.tealAccent,
                              radius: 10,
                              child: Icon(Icons.favorite,color: Colors.pink,size: 12,),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: FittedBox(
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Colors.black,
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Cup(),
                          ),
                          Container(
                            child: Drink(),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40,right: 10,),
                            width: 22,
                            height: 22,
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              backgroundColor: Colors.tealAccent,
                              radius: 10,
                              child: Icon(Icons.favorite,color: Colors.pink,size: 12,),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: FittedBox(
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Colors.black,
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Im(),
                          ),
                          Container(
                            child: Pro(),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40,right: 10,),
                            width: 22,
                            height: 22,
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              backgroundColor: Colors.tealAccent,
                              radius: 10,
                              child: Icon(Icons.favorite,color: Colors.pink,size: 12,),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: FittedBox(
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Colors.black,
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Cup(),
                          ),
                          Container(
                            child: Drink(),
                          ),Container(
                            margin: EdgeInsets.only(top: 40,right: 10,),
                            width: 22,
                            height: 22,
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              backgroundColor: Colors.tealAccent,
                              radius: 10,
                              child: Icon(Icons.favorite,color: Colors.pink,size: 12,),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
        Container(
          color: Colors.black,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
        Container(
          color: Colors.purpleAccent,
          alignment: Alignment.center,
          child: const Icon(Icons.recommend_sharp),
        ),
        Container(
          color: Colors.orangeAccent,
          alignment: Alignment.center,
          child: const Icon(
            Icons.sailing,
            size: 45,
          ),
        ),
      ][currentPageIndex],
    );
  }
}
