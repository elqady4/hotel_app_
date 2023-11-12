

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/Features/home/data/models/hotel_model/hotel.dart';
import 'package:hotel_app/Features/home/data/repos/hotel_repo.dart';

part 'all_hotels_state.dart';

class AllHotelsCubit extends Cubit<AllHotelsState> {
  AllHotelsCubit(this.hotelRepo) : super(AllHotelsInitial());

  final HotelRepo hotelRepo;

  Future<void> fetchAllHotels() async {
    emit(AllHotelsLoading());
    var result = await hotelRepo.fetchAllHotels();
    result.fold((failure) {
      emit(AllHotelsFailure(errMessage: failure.errMessage));
    }, (hotels) {
      emit(AllHotelsSuccess(hotels: hotels));
    });
  }
}
