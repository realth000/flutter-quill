import 'package:flutter_quill/flutter_quill.dart';

abstract final class FlutterQuillEmbeds {
  /// Returns a list of embed builders for [QuillEditor].
  ///
  /// It will use [editorWebBuilders] for web and [editorBuilders] for non-web platforms.
  static List<EmbedBuilder> defaultEditorBuilders() {
    return [];
  }
}
