import 'package:auto_route/auto_route.dart';
import 'package:chateo/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 3));
      // ignore: use_build_context_synchronously
      context.router.replaceAll([const StartRoute()]);
    });
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/chateo.png"),
            ),
          ),
        ),
      ),
    );
  }
}
