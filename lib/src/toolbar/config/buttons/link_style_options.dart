import '../../../controller/quill_controller.dart';
import '../../simple_toolbar.dart';
import '../../structs/link_dialog_action.dart';
import '../../theme/quill_dialog_theme.dart';

typedef QuillToolbarLinkButtonOnPressedCallback = Future<void> Function(
  QuillController controller,
);

class QuillToolbarLinkStyleButtonExtraOptions
    extends QuillToolbarBaseButtonExtraOptions {
  const QuillToolbarLinkStyleButtonExtraOptions({
    required super.controller,
    required super.context,
    required super.onPressed,
  });
}

class QuillToolbarLinkStyleButtonOptions extends QuillToolbarBaseButtonOptions<
    QuillToolbarLinkStyleButtonOptions,
    QuillToolbarLinkStyleButtonExtraOptions> {
  const QuillToolbarLinkStyleButtonOptions({
    this.dialogTheme,
    this.linkRegExp,
    this.linkDialogAction,
    super.iconSize,
    super.iconButtonFactor,
    super.iconData,
    super.afterButtonPressed,
    super.tooltip,
    super.iconTheme,
    super.childBuilder,
    this.customOnPressedCallback,
  });

  final QuillDialogTheme? dialogTheme;
  final RegExp? linkRegExp;
  final LinkDialogAction? linkDialogAction;
  final QuillToolbarLinkButtonOnPressedCallback? customOnPressedCallback;
}
