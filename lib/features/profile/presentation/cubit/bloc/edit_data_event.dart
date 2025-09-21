part of 'edit_data_bloc.dart';

@freezed
abstract class EditDataEvent with _$EditDataEvent {
  const factory EditDataEvent.edit({DateTime? bDay, Gender? gender, XFile? imageAvatar}) =
      _EditEvent;
}
