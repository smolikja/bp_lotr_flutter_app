class CharactersModel {
  List<Character> docs;

  CharactersModel({this.docs});

  CharactersModel.fromJson(Map<String, dynamic> json) {
    if (json['docs'] != null) {
      docs = [];
      json['docs'].forEach((v) {
        docs.add(new Character.fromJson(v));
      });
    }
  }
}

class Character {
  String id;
  String height;
  String race;
  String gender;
  String birth;
  String spouse;
  String death;
  String realm;
  String hair;
  String name;
  String wikiUrl;

  Character(
      {this.id,
      this.height,
      this.race,
      this.gender,
      this.birth,
      this.spouse,
      this.death,
      this.realm,
      this.hair,
      this.name,
      this.wikiUrl});

  Character.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    height = json['height'];
    race = json['race'];
    gender = json['gender'];
    birth = json['birth'];
    spouse = json['spouse'];
    death = json['death'];
    realm = json['realm'];
    hair = json['hair'];
    name = json['name'];
    wikiUrl = json['wikiUrl'];
  }
}
