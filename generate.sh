flutter pub run pigeon \
  --input pigeons/chat_message.dart \
  --dart_out lib/data/native/chat_message.dart \
  --objc_header_out ios/Runner/chatMessage.h \
  --objc_source_out ios/Runner/chatMessage.m \
  --java_out ./android/app/src/main/java/io/flutter/plugins/ChatMessage.java \
  --java_package "io.flutter.plugins"