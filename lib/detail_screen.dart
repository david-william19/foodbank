import 'package:flutter/material.dart';
import 'package:reminder_app/components/tabs_details_food.dart';

class DetailScreen extends StatelessWidget {
  final String name;
  final String description;
  final String image;
  final List<String> steps;
  final List<String> ingredients;

  const DetailScreen(
      {super.key,
      required this.name,
      required this.description,
      required this.image,
      required this.steps,
      required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {},
              )
            ],
          ))
        ]),
          Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A4A4A),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        Container(
          height: 500,
          child: TabsDetailsFood(description: description, ingredients: ingredients, steps: steps),
        )
      ],
    )));
  }
}
