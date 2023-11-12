part of 'all_hotels_cubit.dart';

abstract class AllHotelsState extends Equatable {
  const AllHotelsState();
    @override
  List<Object> get props => [];
}

final class AllHotelsInitial extends AllHotelsState {}
final class AllHotelsLoading extends AllHotelsState {}
final class AllHotelsSuccess extends AllHotelsState {
  final List<HotelModel> hotels;

  const AllHotelsSuccess({required this.hotels});
}
final class AllHotelsFailure extends AllHotelsState {
  final String errMessage;

  const AllHotelsFailure({required this.errMessage});
}
