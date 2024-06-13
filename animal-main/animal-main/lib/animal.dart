class Animal {
  String? name;
  Taxonomy? taxonomy;
  List<String>? locations;
  Characteristics? characteristics;

  Animal({this.name, this.taxonomy, this.locations, this.characteristics});

  Animal.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    taxonomy =
        json['taxonomy'] != null ? Taxonomy.fromJson(json['taxonomy']) : null;
    locations = json['locations'].cast<String>();
    characteristics = json['characteristics'] != null
        ? Characteristics.fromJson(json['characteristics'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    if (taxonomy != null) {
      data['taxonomy'] = taxonomy!.toJson();
    }
    data['locations'] = locations;
    if (characteristics != null) {
      data['characteristics'] = characteristics!.toJson();
    }
    return data;
  }
}

class Taxonomy {
  String? kingdom;
  String? phylum;
  String? classes;
  String? order;
  String? family;
  String? genus;
  String? scientificName;

  Taxonomy(
      {this.kingdom,
      this.phylum,
      this.classes,
      this.order,
      this.family,
      this.genus,
      this.scientificName});

  Taxonomy.fromJson(Map<String, dynamic> json) {
    kingdom = json['kingdom'];
    phylum = json['phylum'];
    classes = json['class'];
    order = json['order'];
    family = json['family'];
    genus = json['genus'];
    scientificName = json['scientific_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kingdom'] = kingdom;
    data['phylum'] = phylum;
    data['class'] = classes;
    data['order'] = order;
    data['family'] = family;
    data['genus'] = genus;
    data['scientific_name'] = scientificName;
    return data;
  }
}

class Characteristics {
  String? mainPrey;
  String? habitat;
  String? predators;
  String? diet;
  String? averageLitterSize;
  String? lifestyle;
  String? favoriteFood;
  String? type;
  String? slogan;
  String? color;
  String? skinType;
  String? topSpeed;
  String? lifespan;
  String? weight;

  Characteristics(
      {this.mainPrey,
      this.habitat,
      this.predators,
      this.diet,
      this.averageLitterSize,
      this.lifestyle,
      this.favoriteFood,
      this.type,
      this.slogan,
      this.color,
      this.skinType,
      this.topSpeed,
      this.lifespan,
      this.weight});

  Characteristics.fromJson(Map<String, dynamic> json) {
    mainPrey = json['main_prey'];
    habitat = json['habitat'];
    predators = json['predators'];
    diet = json['diet'];
    averageLitterSize = json['average_litter_size'];
    lifestyle = json['lifestyle'];
    favoriteFood = json['favorite_food'];
    type = json['type'];
    slogan = json['slogan'];
    color = json['color'];
    skinType = json['skin_type'];
    topSpeed = json['top_speed'];
    lifespan = json['lifespan'];
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['main_prey'] = mainPrey;
    data['habitat'] = habitat;
    data['predators'] = predators;
    data['diet'] = diet;
    data['average_litter_size'] = averageLitterSize;
    data['lifestyle'] = lifestyle;
    data['favorite_food'] = favoriteFood;
    data['type'] = type;
    data['slogan'] = slogan;
    data['color'] = color;
    data['skin_type'] = skinType;
    data['top_speed'] = topSpeed;
    data['lifespan'] = lifespan;
    data['weight'] = weight;
    return data;
  }
}
