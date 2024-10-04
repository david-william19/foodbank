import 'package:flutter/material.dart';

class TabsDetailsFood extends StatefulWidget {
  final String description;
  final List<String> ingredients;
  final List<String> steps;

  const TabsDetailsFood({
    super.key,
    required this.description,
    required this.ingredients,
    required this.steps,
  });

  @override
  _TabsDetailFoodState createState() => _TabsDetailFoodState();
}

class _TabsDetailFoodState extends State<TabsDetailsFood> {
  int _selectedTabIndex = 0;

  final List<String> _tabs = ['Detail', 'Bahan', 'Cara pembuatan'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Tab header
        Container(
          margin: const EdgeInsets.only(
            left: 15,
            right: 15
          ),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 239, 222, 204),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_tabs.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedTabIndex = index;
                });
              },
              child: Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: _selectedTabIndex == index ? Colors.white : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  _tabs[index],
                  style: TextStyle(
                    color: _selectedTabIndex == index
                        ? Colors.grey
                        : Colors.black,
                  ),
                ),
              ),
            );
          }),
        ),
        ),
        // Tab content
        Expanded(
          child: _buildTabContent(),
        ),
      ],
    );
  }

  // Build content based on the selected tab
  Widget _buildTabContent() {
    switch (_selectedTabIndex) {
      case 0:
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            widget.description,
            style: const TextStyle(fontSize: 16),
          ),
        );
      case 1:
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.ingredients.map((ingredient) {
              return Text('• $ingredient');
            }).toList(),
          ),
        );
      case 2:
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.steps.map((step) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(step),
              );
            }).toList(),
          ),
        );
      default:
        return Container();
    }
  }
}
