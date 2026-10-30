import 'package:book_app/features/auth/login_page.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.bottomCenter,
      children: [
        Image.asset(
          "assets/images/background.png",
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentGeometry.topCenter,
              end: AlignmentGeometry.bottomCenter,
              colors: [
                Colors.transparent,
                Theme.of(context).colorScheme.shadow.withAlpha(200),
              ],
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
          
              children: [
                Text(
                  "Welcome to Book App",
                  style: Theme.of(context).textTheme.headlineMedium
                      ?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
          
                Text(
                  "Discover and explore a world of books at your fingertips.",
                  style: Theme.of(context).textTheme.bodyMedium
                      ?.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Text("Continue"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
