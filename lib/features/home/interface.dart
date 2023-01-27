// import 'package:dartz/dartz.dart';
import 'models.dart';

abstract class PlayerInterface {
  Future<List<Player>> getPlayers();
  Future<void> addPlayer(Player player);
}
