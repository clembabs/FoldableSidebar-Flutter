import 'package:sidebar/utils/image_asset.dart';

class Games{
  final String name;
  final String image;
  final String message;


  const Games({this.name, this.image, this.message});
}

final gamesAvailable = [
 Games(name: "Assassin's Creed Odyssey", image: game_assassin, message: 'A world class game'),
  Games(name: "Dead Cells", image: game_dead_cells, message: 'Get ready to fight'),
  Games(name: "Stardew Valley", image: game_stardew, message: 'Fantastic'),
  Games(name: "No Man's Sky", image: game_no_mans_sky, message: 'Super duper'),
];