import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zero_waste/core/enums/farmer_type.dart';
import 'package:zero_waste/features/auth/presenation/blocs/farmer_type_cubit/farmer_type_state.dart';

class FarmerTypeCubit extends Cubit<FarmerTypeState> {
  FarmerTypeCubit() : super(const FarmerTypeState(type: FarmerType.cropFarmer));

  void selectType(FarmerType farmerType) {
    emit(state.copyWith(type: farmerType));
  }
}
