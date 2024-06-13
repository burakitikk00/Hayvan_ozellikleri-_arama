import 'package:flutter/material.dart';
import 'package:mobile_development_assignment/animal.dart';

class AnimalDetailScreen extends StatelessWidget {
  const AnimalDetailScreen({super.key, required this.animal});

  final Animal animal;

  @override
  Widget build(BuildContext context) {
    Widget getCharacteristics() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Characteristics',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Slogan: ${animal.characteristics!.slogan ?? ""}',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            'Species: ${animal.characteristics!.mainPrey ?? ""}',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            'Habitat: ${animal.characteristics!.habitat ?? ""}',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            'Predators: ${animal.characteristics!.predators ?? ""}',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            'Diet: ${animal.characteristics!.diet ?? ""}',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            'Top Speed: ${animal.characteristics!.topSpeed ?? ""}',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            'Lifespan: ${animal.characteristics!.lifespan ?? ""}',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(animal.name ?? "Animal Detail"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              // for (var att in animal.characteristics!.toJson().entries)
              //   Text(
              //     '${att.key}: ${att.value}',
              //     style: const TextStyle(
              //       fontSize: 18,
              //     ),
              //   ),
              getCharacteristics(),
              const Divider(),
              const Text(
                'Taxonomy',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Kingdom: ${animal.taxonomy!.kingdom ?? ""}',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                'Phylum: ${animal.taxonomy!.phylum ?? ""}',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                'Class: ${animal.taxonomy!.classes ?? ""}',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                'Order: ${animal.taxonomy!.order ?? ""}',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                'Family: ${animal.taxonomy!.family ?? ""}',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                'Genus: ${animal.taxonomy!.genus ?? ""}',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
