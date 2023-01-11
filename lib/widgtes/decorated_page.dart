import 'package:flutter/material.dart';

class DecoratedPage extends StatelessWidget {
  final String title;
  final Widget child;
  const DecoratedPage({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(title),
        ),
      ),
      body: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.deepPurpleAccent.shade700,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: Offset(5, 5),
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.indigo.shade700.withOpacity(0.7),
                    Colors.red.shade400.withOpacity(0.7),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(20.0),
              height: MediaQuery.of(context).size.height * 0.85,
              width: MediaQuery.of(context).size.width * 0.85,
              child: child,
            ),
          )),
    );
  }
}
