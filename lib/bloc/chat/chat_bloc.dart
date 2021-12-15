import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_pigeon/bloc/model/message_info.dart';
import 'package:test_pigeon/data/native/chat_message.dart';
import 'package:test_pigeon/data/native/message_impl.dart';

part 'chat_bloc.freezed.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const ChatEvent._();

  const factory ChatEvent.connect(String address) = ConnectChatEvent;
  const factory ChatEvent.setText(String value) = SetTextChatEvent;
  const factory ChatEvent.send() = SendChatEvent;
  const factory ChatEvent.addMessage(MessageInfo value) = AddMessageChatEvent;
  const factory ChatEvent.endConnection() = EndConnectionChatEvent;
}

@freezed
class ChatState with _$ChatState {
  const ChatState._();

  const factory ChatState.initial() = InitialChatState;
  const factory ChatState.loading() = LoadingChatState;
  const factory ChatState.data({
    required String address,
    required String text,
    required List<MessageInfo> messages,
  }) = DataChatState;

  bool get canSend => maybeMap(
        orElse: () => false,
        data: (data) => data.text.isNotEmpty,
      );
}

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc(this.chatRepository) : super(const ChatState.initial()) {
    on<ConnectChatEvent>((event, emit) async {
      emit(const ChatState.loading());
      emit(ChatState.data(
        address: event.address,
        text: '',
        messages: [],
      ));
      _subscription = Stream.periodic(
          Duration(seconds: 1),
          (_) => MessageInfo(
                author: event.address,
                text: 'text',
                date: DateTime.now(),
              )).listen(
        (event) => add(ChatEvent.addMessage(event)),
        onDone: () => add(const ChatEvent.endConnection()),
      );
      // chatRepository.messages(event.address).listen(
      //       (event) => this.add(ChatEvent.addMessage(event)),
      //       onDone: () => add(const ChatEvent.endConnection()),
      //     );
    });

    on<SetTextChatEvent>((event, emit) {
      final s = state;
      if (s is! DataChatState) return;
      emit(s.copyWith(text: event.value));
    });
    on<AddMessageChatEvent>((event, emit) {
      final s = state;
      if (s is! DataChatState) return;
      emit(s.copyWith(messages: [event.value] + s.messages));
    });
    on<SendChatEvent>((event, emit) async {
      final s = state;
      if (s is! DataChatState || s.text.isEmpty) return;
      final message = MessageInfo(
        author: '',
        text: s.text,
        date: DateTime.now(),
      );
      //await chatRepository.sendMessage(s.address, message);
      emit(s.copyWith(
        text: '',
        messages: [message] + s.messages,
      ));
    });
    on<EndConnectionChatEvent>((event, emit) async {
      final s = _subscription;
      if (s == null) return;
      await s.cancel();
      _subscription = null;
      emit(ChatState.initial());
    });
  }

  final ChatService chatRepository;
  StreamSubscription<Object>? _subscription;
}
