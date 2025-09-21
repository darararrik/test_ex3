part of 'edit_data_bloc.dart';

@freezed
abstract class EditDataState with _$EditDataState {
  const factory EditDataState({
    @Default(null) DateTime? bDay,
    @Default(null) Gender? gender,
    @Default(null) XFile? imageAvatar,
  }) = _EditDataState;
}
