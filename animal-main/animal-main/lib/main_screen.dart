import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobile_development_assignment/animal.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mobile_development_assignment/animal_detail_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Animal> animals = [];
  TextEditingController searchController = TextEditingController();
  Future<List<Animal>> fetch({String query = "wolf"}) async {
    var url = Uri.parse('https://api.api-ninjas.com/v1/animals?name=$query');
    var response = await http.get(url,
        headers: {"X-Api-Key": "qj/NOULJ7sQVDstygBVtzg==4kaVfvIwWotv11bQ"});
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      inspect(jsonResponse);
      return (jsonResponse as List).map((e) => Animal.fromJson(e)).toList();
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return List.empty();
    }
  }

  @override
  void initState() {
    super.initState();
    fetch().then((value) => setState(() {
          animals = value;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burak\'s Animal App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: searchController,
              onSubmitted: (value) {
                fetch(query: value).then((value) => setState(() {
                      animals = value;
                    }));
              },
              decoration: InputDecoration(
                hintText: 'Search Animals',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: animals.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: animals.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(animals[index].name ?? ""),
                            subtitle: Text(
                                animals[index].characteristics!.slogan ?? ""),
                            onTap: () {
                              // Navigator.pushNamed(context, '/animal-detail',
                              //     arguments: animals[index]);
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return AnimalDetailScreen(
                                      animal: animals[index]);
                                },
                              ));
                            },
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
