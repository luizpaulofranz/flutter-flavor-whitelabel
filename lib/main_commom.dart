import 'package:flutter_flavor_whitelabel/flavor_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// This is our Comom Main file, this one will call the flavor mains

/// Dart flavors will call schemes in IOS - We have to set it up there.
///

var flavorConfigProvider;
void mainCommom(FlavorConfig config) {
  // like bloc provider
  flavorConfigProvider = StateProvider((ref) => config);

  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final config = context.read(flavorConfigProvider);

    return MaterialApp(
      title: config.state.appTitle,
      theme: config.state.theme,
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    print(context.read(flavorConfigProvider).state.appTitle);
    return Scaffold(
      appBar: AppBar(
        title: Text(context.read(flavorConfigProvider).state.appTitle),
      ),
      body: Image.asset(
        context.read(flavorConfigProvider).state.imageLocation,
        fit: BoxFit.cover,
      ),
    );
  }
}
