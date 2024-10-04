import 'package:flutter/material.dart';
import 'package:reminder_app/components/card_food.dart';
import 'package:reminder_app/models/food.dart';

class SearchScreen extends StatefulWidget {
  final String searchText;
  
  const SearchScreen({super.key, required this.searchText});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  List<Food> filteredFoods = [];
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.searchText);
    filterFoods(widget.searchText);
  }

  void filterFoods(String searchText) {
    setState(() {
        filteredFoods = indonesianFoods.where(
          (food) => food.name.toLowerCase().contains(searchText.toLowerCase())
        ).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                width: 220,
                child: const SizedBox(
                  width: 200,
                  child: Text(
                    "Here's the result for your search",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF4A4A4A),
                      fontFamily: "Playfair Display",
                    ),
                  ),
                ),
              ),
              SizedBox(
                  child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller:  _controller,
                  decoration: const InputDecoration(
                    hintText: "find your food",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  onChanged: (value) {
                    filterFoods(value);
                  },
                ),
              )),
              const SizedBox(
                height: 20,
              ),

              Expanded(
                child: filteredFoods.isNotEmpty ?
                ListView.builder(
                  itemCount: filteredFoods.length,
                  itemBuilder: (context, index) {
                    return CardFood(
                      title: filteredFoods[index].name, 
                      description: filteredFoods[index].description, 
                      image: 'images/nasi_goreng.jpg',
                      steps: filteredFoods[index].steps,
                      ingredients: filteredFoods[index].ingredients,
                      );
                  },
                ) : const Center(
                  child: Text("No food found"),
                ) 
              )
            ],
          ),
        );
  }
}
