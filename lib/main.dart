import 'package:flutter/material.dart';
import 'core/routes/routes.dart';
import 'injection_container.dart' as dependency_injector;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependency_injector.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Sample',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: customRoutes,
      initialRoute: 'loggedInCustomDrawer',
    );
  }
}
