import "package:flutter/material.dart";
import "package:reminder_app/detail_screen.dart";

class CardFood extends StatelessWidget {
   final String title, description;
   final String image;
   final List<String> steps, ingredients;

   const CardFood({super.key, required this.title, required this.description, required this.image, required this.ingredients, required this.steps});

  @override
  Widget build(BuildContext context) {
    return 
    InkWell(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(name: title, description: description, image: image, steps: steps, ingredients: ingredients)
          )
        )
      },
      borderRadius: BorderRadius.circular(20),
      child: 
      Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        child: Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween, 
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
              width: 70,
              height: 70,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A4A4A),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                description,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ],)
          ),
        ],
        )
    ),
      ),
    );
  }
}