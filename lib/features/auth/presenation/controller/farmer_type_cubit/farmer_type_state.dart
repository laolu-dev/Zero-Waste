// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:zero_waste/core/enums/farmer_type.dart';

class FarmerTypeState extends Equatable {
  final FarmerType type;

  const FarmerTypeState({required this.type});

  @override
  List<Object> get props => [type];

  FarmerTypeState copyWith({FarmerType? type}) {
    return FarmerTypeState(
      type: type ?? this.type,
    );
  }
}
