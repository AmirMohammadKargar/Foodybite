import 'package:flutter/material.dart';

class BigTextInput extends StatelessWidget {
  const BigTextInput({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blueAccent, // red as border color
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent, width: 0.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent, width: 0.0),
          ),
          hintText: '$title',
          hintStyle: TextStyle(
            color: Colors.blueGrey,
          ),
          fillColor: Colors.white,
          focusColor: Colors.white,
        ),
        keyboardType: TextInputType.multiline,
        maxLines: null,
      ),
    );
  }
}
