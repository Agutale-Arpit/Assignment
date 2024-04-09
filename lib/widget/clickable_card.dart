import 'package:flutter/material.dart';

class ClickableCard extends StatelessWidget {
  final String imagePath;
  final String text;

  const ClickableCard({super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('$text card tapped!');
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), 
        ),
        child: Container(
          width: 95,
          height: 100, 
          child: Column(
            children: [
              Expanded(
                flex: 65, 
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)), 
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(imagePath),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 35, 
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
