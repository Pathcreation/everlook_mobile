import 'package:rxdart/rxdart.dart';

import 'helpers/constants.dart';
import 'helpers/switch_input_format.dart';
import 'helpers/switch_keyboard_type.dart';
import 'helpers/switch_validation.dart';
import 'package:everlook_mobile/source/imports.dart';

import 'helpers/types.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    Key? key,
    required this.textController,
    this.focusNode,
    this.type = TextFieldType.text,
    this.hintText,
    this.subLabelText,
    this.labelText,
    this.title,
    this.color,
    this.onChange,
    this.onComplete,
    this.formKey,
    this.maxLines = 1,
    this.readOnly = true,
    this.enableFocus = false,
    this.suffix,
    this.prefix,
    this.prefixConstraints,
    this.suffixConstraints,
    this.width,
    this.textLength,
    this.textInputFormatter,
    this.obscureText,
    this.autofillHints,
    this.textInputAction,
    this.minHeight,
    this.maxHeight,
    this.isLink = false,
    this.contentPadding,
    this.hintStyle,
    this.subLabelStyle,
    this.labelStyle,
    this.suffixText,
    this.label,
    this.isDense,
    this.paddingSuffix,
    this.textAlign,
  }) : super(key: key);

  final TextEditingController textController;
  final FocusNode? focusNode;
  final TextFieldType type;
  final String? hintText;
  final String? title;
  final String? labelText;
  final String? subLabelText;
  final Color? color;
  final Function(String)? onChange;
  final Function()? onComplete;
  final GlobalKey<FormState>? formKey;
  final bool readOnly;
  final bool enableFocus;
  final int maxLines;
  final Widget? suffix;
  final Widget? label;
  final String? suffixText;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final BoxConstraints? suffixConstraints;
  final double? width;
  final int? textLength;
  final TextInputFormatter? textInputFormatter;
  final bool? obscureText;
  final List<String>? autofillHints;
  final TextInputAction? textInputAction;
  final double? minHeight;
  final double? maxHeight;
  final EdgeInsets? contentPadding;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final TextStyle? subLabelStyle;
  final bool isLink;
  final bool? isDense;
  final EdgeInsets? paddingSuffix;
  final TextAlign? textAlign;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  MaskTextInputFormatter? _mask;
  bool isHashtag = false;
  Paint paint = Paint()
    ..shader = LinearGradient(
      colors: gradientColors2,
    ).createShader(
      const Rect.fromLTWH(
        0,
        0.0,
        100,
        20.0,
      ),
    );

  final _errorText = BehaviorSubject.seeded('');

  Stream<String> get getErrorText => _errorText.stream;

  void addMaskToText() {
    _mask = switchInputFormat(widget.type);
    if (_mask != null) {
      _mask!.formatEditUpdate(
        TextEditingValue.empty,
        TextEditingValue(
          text: widget.textController.text,
        ),
      );
      widget.textController.text = _mask!.getMaskedText();
    }
  }

  @override
  void initState() {
    addMaskToText();
    widget.textController.addListener(() {
      if (widget.textController.text.isNotEmpty) {
        isHashtag = widget.textController.text[0] == '#';
        if (isHashtag) {
          paint = Paint()
            ..shader = LinearGradient(
              colors: gradientColors2,
            ).createShader(
              Rect.fromLTWH(
                0,
                0.0,
                widget.textController.text.length * 9,
                20.0,
              ),
            );
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _mask = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: widget.width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title != null)
            Text(
              widget.title!,
              style: widget.labelStyle ??
                  TextStyle(
                    color: theme.colorScheme.tertiary,
                  ),
            ),
          if (widget.label != null) widget.label!,
          Form(
            key: widget.formKey,
            child: TextFormField(
              enabled: true,
              expands: widget.maxHeight != null,
              cursorColor: theme.colorScheme.primary,
              enableIMEPersonalizedLearning: true,
              textAlignVertical: TextAlignVertical.top,
              inputFormatters: [
                if (widget.type == TextFieldType.name) Format.nameFormat,
                if (_mask != null) _mask!,
                if (widget.textLength != null) LengthLimitingTextInputFormatter(widget.textLength!),
                if (widget.textInputFormatter != null) widget.textInputFormatter!,
              ],
              autofillHints: widget.autofillHints,
              textInputAction: widget.textInputAction ?? (defaultTargetPlatform == TargetPlatform.iOS ? TextInputAction.done : TextInputAction.none),
              maxLines: widget.obscureText != null ? 1 : null,
              minLines: null,
              textAlign: widget.textAlign ?? TextAlign.start,
              controller: widget.textController,
              focusNode: widget.focusNode,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: isHashtag
                    ? null
                    : widget.isLink
                        ? theme.colorScheme.primary
                        : theme.colorScheme.tertiary,
                foreground: isHashtag ? paint : null,
              ),
              readOnly: !widget.readOnly,
              autofocus: widget.enableFocus,
              keyboardType: switchInputType(widget.type),
              onEditingComplete: widget.onComplete,
              obscureText: widget.obscureText ?? false,
              onChanged: (text) {
                setState(() {
                  if (widget.onChange != null) {
                    widget.onChange!(text);
                  }
                });
              },
              validator: (value) {
                final error = switchValidation(
                  context,
                  widget.type,
                  value!,
                );
                _errorText.add(error ?? '');
                return error;
              },
              textCapitalization: (widget.type == TextFieldType.name || widget.type == TextFieldType.text) ? TextCapitalization.sentences : TextCapitalization.none,
              decoration: InputDecoration(
                constraints: BoxConstraints(
                  maxHeight: widget.maxHeight ?? double.infinity,
                ),
                contentPadding: widget.contentPadding,
                fillColor: widget.color ?? theme.colorScheme.inversePrimary,
                filled: true,
                alignLabelWithHint: false,
                errorStyle: const TextStyle(
                  fontSize: 0,
                  height: 0,
                ),
                labelText: widget.labelText,
                labelStyle: widget.labelStyle ?? theme.textTheme.bodySmall,
                hintText: widget.hintText,
                hintStyle: widget.hintStyle ??
                    theme.textTheme.bodyMedium!.copyWith(
                      color: theme.colorScheme.tertiaryFixedDim,
                    ),
                isDense: widget.isDense,
                hoverColor: Colors.transparent,
                prefixIcon: widget.prefix,
                prefixIconConstraints: widget.prefixConstraints ??
                    const BoxConstraints(
                      maxHeight: 32,
                      maxWidth: 32,
                    ),
                suffixText: widget.suffixText,
                suffixIcon: widget.suffix,
                suffixIconConstraints: widget.suffixConstraints ??
                    BoxConstraints(
                      maxHeight: 28,
                      maxWidth: getTextWidth(
                        widget.suffixText ?? '',
                        theme.textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                        context,
                      ).toDouble(),
                    ),
                suffixStyle: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.secondary,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onFieldSubmitted: (s) {
                FocusScope.of(context).unfocus();
              },
            ),
          ),
          if (widget.subLabelText != null)
            Text(
              widget.subLabelText!,
              style: widget.subLabelStyle ?? theme.textTheme.headlineMedium,
            ),
        ],
      ),
    );
  }
}
