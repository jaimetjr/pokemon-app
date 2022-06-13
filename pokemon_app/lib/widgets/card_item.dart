import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String title;
  final String routeName;

  CardItem(this.title, this.routeName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Card(
        elevation: 15,
        color: const Color.fromRGBO(131, 238, 197, 1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.white,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
