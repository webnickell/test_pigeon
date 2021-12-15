import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_pigeon/bloc/model/chat_info.dart';

part 'chats_bloc.freezed.dart';

@freezed
class ChatsEvent with _$ChatsEvent {
  const ChatsEvent._();

  const factory ChatsEvent.findDevices() = FindDevicesChatsEvent;
}

@freezed
class ChatsState with _$ChatsState {
  const ChatsState._();

  const factory ChatsState.initial() = InitialChatsState;
  const factory ChatsState.loading() = LoadingChatsState;
  const factory ChatsState.data({
    required List<ChatInfo> chats,
  }) = DataChatsState;
  const factory ChatsState.error() = ErrorChatsState;
}

class ChatsBloc extends Bloc<ChatsEvent, ChatsState> {
  ChatsBloc() : super(const ChatsState.initial()) {
    on<FindDevicesChatsEvent>((event, emit) async {
      emit(const ChatsState.loading());

      final chats = List.generate(
        10,
        (index) => ChatInfo(deviceName: 'Device', address: ''),
      );
      emit(ChatsState.data(chats: chats));
    });
  }
}
