import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hotel_app/Features/home/data/models/hotel_model/hotel.dart';
import 'package:hotel_app/Features/home/data/repos/hotel_repo.dart';
import 'package:hotel_app/core/errors/failures.dart';
import 'package:hotel_app/core/utils/api_service.dart';

class HotelRepoImpl implements HotelRepo {
  final ApiService apiService;

  HotelRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<HotelModel>>> fetchAllHotels() async {
    try {
      var data = await apiService.get(endPoint: 'hotels');

      List<HotelModel> hotels = [];
      for (var item in data) {
        try {
          hotels.add(HotelModel.fromList(item));
        } catch (e) {
          hotels.add(HotelModel.fromList(item));
        }
      }

      return right(hotels);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
