import "package:flutter/material.dart";

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: SizedBox(
        height: 50,
        width: 100,
        child: ElevatedButton(
          onPressed: () {
            print("Botão pressionado!");
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 175, 51, 42),
          ),
          child: const Text("Sign in", style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
