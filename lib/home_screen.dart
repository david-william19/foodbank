import "package:flutter/material.dart";
import "package:reminder_app/components/card_food.dart";
import "package:reminder_app/models/food.dart";
import "package:reminder_app/search_screen.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          centerTitle: true,
          title: const Text(
            "Food Bank",
            style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 25,
              fontWeight: FontWeight.w900,
              fontFamily: "playfair display",
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                color: const Color.fromARGB(99, 242, 222, 202),
                child: SafeArea(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: const SizedBox(
                          width: 200,
                          child: Text(
                            "Not sure what to cook tonight?",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF4A4A4A),
                              fontFamily: "Playfair Display",
                            ),
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Stack(
                        children: [
                          Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationZ(-0.08),
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 240, 218, 188),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 15, bottom: 15),
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 236, 203, 161),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                        child: const Icon(
                                          Icons.rocket_launch,
                                          color: Color(0xFF4A4A4A),
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    const SizedBox(
                                      width: 250,
                                      child: Text(
                                        "let's find by using ingredients you have or name of the dish",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Playfair Display",
                                            color: Color(0xFF4A4A4A)),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: TextField(
                                    controller: _controller,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  width: double.infinity,
                                  child: Expanded(
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all<Color>(
                                                const Color(0xFF4F6C4E)),
                                        padding: WidgetStateProperty.all<
                                                EdgeInsetsGeometry>(
                                            const EdgeInsets.symmetric(
                                                vertical: 15)),
                                        shape: WidgetStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        String inputSearchText =
                                            _controller.text;
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SearchScreen(
                                                        searchText:
                                                            inputSearchText)));
                                      },
                                      child: const Text('Find Now!',
                                          textAlign: TextAlign.center,
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 10, left: 10),
                      child: const Text("Popular Foods",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF4A4A4A),
                            fontFamily: "Playfair Display",
                          )),
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        final Food food = indonesianFoods[index];
                        return CardFood(
                            title: food.name,
                            description: food.description,
                            image: food.image,
                            steps: food.steps,
                            ingredients: food.ingredients,
                            );
                      },
                      itemCount: indonesianFoods.length,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 16,
                        );
                      },
                    )
                  ],
                )))));
  }
}
