import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/app_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const NotaryOfficeApp());
}

class NotaryOfficeApp extends StatelessWidget {
  const NotaryOfficeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: MaterialApp(
        title: 'مكتب موثق جزائري',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            brightness: Brightness.light,
          ),
          fontFamily: 'NotoSansArabic',
          textTheme: const TextTheme(
            headlineMedium: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            brightness: Brightness.dark,
          ),
          fontFamily: 'NotoSansArabic',
        ),
        themeMode: ThemeMode.system,
        home: const HomeScreen(),
        locale: const Locale('ar'),  // دعم اللغة العربية
        supportedLocales: const [
          Locale('ar'),
        ],
      ),
    );
  }
}