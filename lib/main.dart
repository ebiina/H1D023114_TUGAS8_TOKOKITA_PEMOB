import 'package:flutter/material.dart';
import 'package:toko_bina/ui/login_page.dart';
import 'package:toko_bina/ui/registrasi_page.dart';
import 'package:toko_bina/ui/produk_page.dart';
import 'package:toko_bina/ui/produk_form.dart';
import 'package:toko_bina/ui/produk_detail.dart';
import 'package:toko_bina/model/produk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Toko Bina",

      // ==============================
      // 🌸 TEMA PINK GLOBAL
      // ==============================
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.pink,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink,
        ),

        // AppBar Pink
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
        ),

        // Elevated Button Pink
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
            foregroundColor: Colors.white,
          ),
        ),

        // Outlined Button Pink
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.pink,
            side: const BorderSide(color: Colors.pink),
          ),
        ),

        // TextField Border & Label Pink
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.pink),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pink, width: 2),
          ),
        ),
      ),

      // Halaman pertama: LOGIN
      home: const LoginPage(),

      routes: {
        '/login': (_) => const LoginPage(),
        '/registrasi': (_) => const RegistrasiPage(),
        '/produk': (_) => const ProdukPage(),
        '/produk-form': (_) => ProdukForm(),
      },

      // route ke detail produk
      onGenerateRoute: (settings) {
        if (settings.name == '/produk-detail') {
          final Produk produk = settings.arguments as Produk;
          return MaterialPageRoute(
            builder: (_) => ProdukDetail(produk: produk),
          );
        }
        return null;
      },
    );
  }
}
