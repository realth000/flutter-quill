/// @docImport '../../../rules/insert.dart' show AutoFormatMultipleLinksRule;
library;

import '../../../common/utils/link_validator.dart';
import '../../../controller/quill_controller.dart';
import '../../simple_toolbar.dart';
import '../../structs/link_dialog_action.dart';
import '../../theme/quill_dialog_theme.dart';

typedef QuillToolbarLinkButtonOnPressedCallback = Future<void> Function(
  QuillController controller,
);

class QuillToolbarLinkStyleButtonExtraOptions extends QuillToolbarBaseButtonExtraOptions {
  const QuillToolbarLinkStyleButtonExtraOptions({
    required super.controller,
    required super.context,
    required super.onPressed,
  });
}

class QuillToolbarLinkStyleButtonOptions
    extends QuillToolbarBaseButtonOptions<QuillToolbarLinkStyleButtonOptions, QuillToolbarLinkStyleButtonExtraOptions> {
  const QuillToolbarLinkStyleButtonOptions({
    this.dialogTheme,
    this.linkRegExp,
    this.linkDialogAction,
    this.validateLink,
    this.customOnPressedCallback,
    super.iconSize,
    super.iconButtonFactor,
    super.iconData,
    super.afterButtonPressed,
    super.tooltip,
    super.iconTheme,
    super.childBuilder,
  });

  final QuillDialogTheme? dialogTheme;

  /// Allows to override the default [AutoFormatMultipleLinksRule.singleLineUrlRegExp].
  ///
  /// This has been deprecated in favor of [validateLink] which is more flexible.
  @Deprecated('Use validateLink instead')
  final RegExp? linkRegExp;
  final LinkDialogAction? linkDialogAction;

  /// {@macro link_validation_callback}
  ///
  // ignore: deprecated_member_use_from_same_package
  /// This callback is preferred over [linkRegExp] when both are set.
  final LinkValidationCallback? validateLink;

  final QuillToolbarLinkButtonOnPressedCallback? customOnPressedCallback;
}
