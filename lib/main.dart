import 'package:flutter/material.dart';
import 'package:ochildasturxon/screens/bottom_nav_bar.dart';
import 'package:ochildasturxon/screens/loading_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.grey.withOpacity(0.1),
          // TextField fondi rangi
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          hintStyle: const TextStyle(color: Colors.grey),
          // Hint matn rangi
          labelStyle: const TextStyle(color: Colors.grey), // Label matn rangi
        ),
      ),
      home:  BottomNavBar(),
    );
  }
}

/*
* lib/
│
├── main.dart
│
├── screens/          // Har bir ekran uchun alohida papkalar
│   ├── home_screen.dart
│   ├── login_screen.dart
│   └── profile_screen.dart
│
├── widgets/          // Qayta ishlatiladigan widgetlar
│   ├── custom_button.dart
│   └── input_field.dart
│
├── models/           // Ma'lumotlar modellarini saqlash
│   ├── user_model.dart
│   └── product_model.dart
│
├── cubit/            // BLoC yoki Cubit fayllari uchun
│   ├── auth/
│   │   ├── auth_cubit.dart
│   │   └── auth_state.dart
│   └── product/
│       ├── product_cubit.dart
│       └── product_state.dart
│
├── repositories/     // API yoki ma'lumotlarni boshqarish
│   ├── auth_repository.dart
│   └── product_repository.dart
│
├── datasources/      // Ma'lumotlar manbalari (API yoki local database)
│   ├── api_service.dart
│   └── local_storage.dart
│
├── utils/            // Foydali funksiyalar va yordamchi sinflar
│   ├── constants.dart
│   └── helpers.dart
│
├── themes/           // Mavzular va stil sozlamalari
│   ├── app_theme.dart
│   └── colors.dart
│
├── routes/           // Marshrutlarni boshqarish
│   └── app_routes.dart
│
├── errors/           // Xatoliklar bilan ishlash
│   ├── exceptions.dart
│   └── failure.dart
│
└── constants/        // Ilovadagi doimiy qiymatlar
    ├── api_endpoints.dart
    └── strings.dart

* */
