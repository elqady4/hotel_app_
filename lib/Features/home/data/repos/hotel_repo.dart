import 'package:dartz/dartz.dart';
import 'package:hotel_app/Features/home/data/models/hotel_model/hotel.dart';
import 'package:hotel_app/core/errors/failures.dart';

abstract class HotelRepo{
  Future<Either<Failure,List<HotelModel>>> fetchAllHotels();
}