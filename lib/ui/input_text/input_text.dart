import 'package:draftea_pokemon_challenge/ui/colors/colors.dart';
import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';
import 'package:draftea_pokemon_challenge/ui/themes/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputText extends StatefulWidget {
  const CustomInputText({
    required this.controller,
    super.key,
    this.onTextChange,
    this.hintText,
    this.labelText,
    this.focusNode,
    this.nextFocusNode,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
    this.textInputAction = TextInputAction.done,
    this.suffixIcon,
    this.prefixIcon,
    this.suffixIconAction,
    this.prefixIconAction,
    this.obscureText = false,
    this.maxLines = 1,
    this.heigth = 55,
    this.isEnable = true,
    this.textAlign,
    this.withLabelOnTop = false,
    this.validator,
    this.readOnly = false,
    this.enableInteractiveSelection = false,
    this.contentPadding,
    this.width,
    this.inputTextbackgroundColor,
    this.maxLength,
    this.onDropdownTap,
    this.cursorColor,
    this.radius,
    this.borderColor,
    this.iconColor,
  });

  const CustomInputText.password({
    required TextEditingController controller,
    void Function(String)? onTextChange,
    FocusNode? focusNode,
    FocusNode? nextFocusNode,
    String? hintText,
    String? labelText,
    List<TextInputFormatter>? inputFormatters,
    double? heigth,
    IconData? suffixIcon,
    void Function()? suffixIconAction,
    IconData? prefixIcon,
    void Function()? prefixIconAction,
    bool? isEnable,
    TextAlign? textAlign,
    bool? withLabelOnTop,
    Key? key,
    String? Function(String?)? validator,
    bool readOnly = false,
    bool enableInteractiveSelection = false,
    Color? inputTextbackgroundColor,
    int? maxLength,
    Color? cursorColor,
    BorderRadius? radius,
    Color? borderColor,
    Color? iconColor,
  }) : this(
         controller: controller,
         onTextChange: onTextChange,
         focusNode: focusNode,
         nextFocusNode: nextFocusNode,
         hintText: hintText,
         labelText: labelText,
         keyboardType: TextInputType.text,
         inputFormatters: inputFormatters,
         maxLines: 1,
         heigth: heigth,
         obscureText: true,
         textInputAction: TextInputAction.done,
         suffixIcon: suffixIcon,
         suffixIconAction: suffixIconAction,
         prefixIcon: prefixIcon,
         prefixIconAction: prefixIconAction,
         isEnable: isEnable,
         textAlign: textAlign,
         withLabelOnTop: withLabelOnTop,
         key: key,
         validator: validator,
         readOnly: readOnly,
         enableInteractiveSelection: enableInteractiveSelection,
         inputTextbackgroundColor: inputTextbackgroundColor,
         maxLength: maxLength,
         cursorColor: cursorColor,
         radius: radius,
         borderColor: borderColor,
         iconColor: iconColor,
       );

  const CustomInputText.email({
    required TextEditingController controller,
    Key? key,
    void Function(String)? onTextChange,
    FocusNode? focusNode,
    FocusNode? nextFocusNode,
    String? hintText,
    String? labelText,
    List<TextInputFormatter>? inputFormatters,
    double? heigth,
    BorderRadius? radius,
    IconData? suffixIcon,
    void Function()? suffixIconAction,
    void Function()? prefixIconAction,
    bool? isEnable,
    TextAlign? textAlign,
    bool? withLabelOnTop,
    String? Function(String?)? validator,
    bool readOnly = false,
    bool enableInteractiveSelection = false,
    Color? inputTextbackgroundColor,
    int? maxLength,
    Color? cursorColor,
    Color? borderColor,
    Color? iconColor,
  }) : this(
         controller: controller,
         onTextChange: onTextChange,
         focusNode: focusNode,
         nextFocusNode: nextFocusNode,
         hintText: hintText,
         labelText: labelText,
         keyboardType: TextInputType.emailAddress,
         inputFormatters: inputFormatters,
         maxLines: 1,
         heigth: heigth,
         obscureText: false,
         textInputAction: TextInputAction.done,
         suffixIcon: suffixIcon,
         suffixIconAction: suffixIconAction,
         prefixIcon: Icons.mail,
         prefixIconAction: prefixIconAction,
         isEnable: isEnable,
         textAlign: textAlign,
         withLabelOnTop: withLabelOnTop,
         key: key,
         validator: validator,
         readOnly: readOnly,
         enableInteractiveSelection: enableInteractiveSelection,
         inputTextbackgroundColor: inputTextbackgroundColor,
         maxLength: maxLength,
         cursorColor: cursorColor,
         radius: radius,
         borderColor: borderColor,
         iconColor: iconColor,
       );

  const CustomInputText.text({
    required TextEditingController controller,
    void Function(String)? onTextChange,
    FocusNode? focusNode,
    FocusNode? nextFocusNode,
    String? hintText,
    String? labelText,
    List<TextInputFormatter>? inputFormatters,
    double? heigth,
    BorderRadius? radius,
    IconData? suffixIcon,
    void Function()? suffixIconAction,
    IconData? prefixIcon,
    void Function()? prefixIconAction,
    bool? isEnable,
    TextAlign? textAlign,
    bool? withLabelOnTop,
    Key? key,
    String? Function(String?)? validator,
    bool readOnly = false,
    bool enableInteractiveSelection = false,
    Color? inputTextbackgroundColor,
    int? maxLength,
    Color? cursorColor,
    double? width,
    Color? borderColor,
    Color? iconColor,
  }) : this(
         controller: controller,
         onTextChange: onTextChange,
         focusNode: focusNode,
         nextFocusNode: nextFocusNode,
         hintText: hintText,
         labelText: labelText,
         keyboardType: TextInputType.text,
         inputFormatters: inputFormatters,
         maxLines: 1,
         heigth: heigth,
         obscureText: false,
         textInputAction: TextInputAction.done,
         suffixIcon: suffixIcon,
         suffixIconAction: suffixIconAction,
         prefixIcon: prefixIcon,
         prefixIconAction: prefixIconAction,
         isEnable: isEnable,
         textAlign: textAlign,
         withLabelOnTop: withLabelOnTop,
         key: key,
         validator: validator,
         readOnly: readOnly,
         enableInteractiveSelection: enableInteractiveSelection,
         inputTextbackgroundColor: inputTextbackgroundColor,
         maxLength: maxLength,
         cursorColor: cursorColor,
         width: width,
         radius: radius,
         borderColor: borderColor,
         iconColor: iconColor,
       );
  const CustomInputText.dropdown({
    required TextEditingController controller,
    required void Function() onDropdownTap,
    FocusNode? focusNode,
    FocusNode? nextFocusNode,
    String? hintText,
    String? labelText,

    List<TextInputFormatter>? inputFormatters,
    double? heigth,
    void Function()? prefixIconAction,
    IconData? prefixIcon,
    void Function()? suffixIconAction,
    TextAlign? textAlign,
    bool? withLabelOnTop,
    Key? key,
    String? Function(String?)? validator,
    bool readOnly = false,
    bool enableInteractiveSelection = false,
    Color? inputTextbackgroundColor,
    int? maxLength,
    Color? cursorColor,
    BorderRadius? radius,
    Color? borderColor,
    Color? iconColor,
  }) : this(
         controller: controller,
         focusNode: focusNode,
         nextFocusNode: nextFocusNode,
         hintText: hintText,
         labelText: labelText,
         keyboardType: TextInputType.text,
         inputFormatters: inputFormatters,
         maxLines: 1,
         heigth: heigth,
         obscureText: false,
         textInputAction: TextInputAction.done,
         suffixIcon: Icons.keyboard_arrow_down_sharp,
         suffixIconAction: suffixIconAction,
         prefixIcon: prefixIcon,
         prefixIconAction: prefixIconAction,
         isEnable: false,
         textAlign: textAlign,
         withLabelOnTop: withLabelOnTop,
         key: key,
         validator: validator,
         readOnly: readOnly,
         enableInteractiveSelection: enableInteractiveSelection,
         inputTextbackgroundColor: inputTextbackgroundColor,
         maxLength: maxLength,
         onDropdownTap: onDropdownTap,
         cursorColor: cursorColor,
         radius: radius,
         borderColor: borderColor,
         iconColor: iconColor,
       );

  const CustomInputText.number({
    required TextEditingController controller,
    void Function(String)? onTextChange,
    FocusNode? focusNode,
    FocusNode? nextFocusNode,
    String? hintText,
    String? labelText,
    List<TextInputFormatter>? inputFormatters,
    double? heigth,
    IconData? suffixIcon,
    void Function()? suffixIconAction,
    IconData? prefixIcon,
    void Function()? prefixIconAction,
    bool? isEnable,
    TextAlign? textAlign,
    bool? withLabelOnTop,
    Key? key,
    String? Function(String?)? validator,
    bool readOnly = false,
    bool enableInteractiveSelection = false,
    Color? inputTextbackgroundColor,
    int? maxLength,
    Color? cursorColor,
    BorderRadius? radius,
    Color? borderColor,
    Color? iconColor,
  }) : this(
         controller: controller,
         onTextChange: onTextChange,
         focusNode: focusNode,
         nextFocusNode: nextFocusNode,
         hintText: hintText,
         labelText: labelText,
         keyboardType: TextInputType.number,
         inputFormatters: inputFormatters,
         maxLines: 1,
         heigth: heigth,
         obscureText: false,
         textInputAction: TextInputAction.done,
         suffixIcon: suffixIcon,
         suffixIconAction: suffixIconAction,
         prefixIcon: prefixIcon,
         prefixIconAction: prefixIconAction,
         isEnable: isEnable,
         textAlign: textAlign,
         withLabelOnTop: withLabelOnTop,
         key: key,
         validator: validator,
         readOnly: readOnly,
         enableInteractiveSelection: enableInteractiveSelection,
         inputTextbackgroundColor: inputTextbackgroundColor,
         maxLength: maxLength,
         cursorColor: cursorColor,
         radius: radius,
         borderColor: borderColor,
         iconColor: iconColor,
       );

  CustomInputText.numberWithDecimals({
    required TextEditingController controller,
    void Function(String)? onTextChange,
    FocusNode? focusNode,
    FocusNode? nextFocusNode,
    String? hintText,
    String? labelText,
    double? heigth,
    IconData? suffixIcon,
    void Function()? suffixIconAction,
    IconData? prefixIcon,
    void Function()? prefixIconAction,
    bool? isEnable,
    TextAlign? textAlign,
    bool? withLabelOnTop,
    Key? key,
    String? Function(String?)? validator,
    bool readOnly = false,
    bool enableInteractiveSelection = false,
    Color? inputTextbackgroundColor,
    int? maxLength,
    Color? cursorColor,
    BorderRadius? radius,
    Color? borderColor,
    Color? iconColor,
  }) : this(
         controller: controller,
         onTextChange: onTextChange,
         focusNode: focusNode,
         nextFocusNode: nextFocusNode,
         hintText: hintText,
         labelText: labelText,
         keyboardType: const TextInputType.numberWithOptions(decimal: true),
         inputFormatters: [
           FilteringTextInputFormatter.allow(RegExp(r'(^\d*[\.\,]?\d{0,20})')),
         ],
         maxLines: 1,
         heigth: heigth,
         obscureText: false,
         textInputAction: TextInputAction.done,
         suffixIcon: suffixIcon,
         suffixIconAction: suffixIconAction,
         prefixIcon: prefixIcon,
         prefixIconAction: prefixIconAction,
         isEnable: isEnable,
         textAlign: textAlign,
         withLabelOnTop: withLabelOnTop,
         key: key,
         validator: validator,
         readOnly: readOnly,
         enableInteractiveSelection: enableInteractiveSelection,
         inputTextbackgroundColor: inputTextbackgroundColor,
         maxLength: maxLength,
         cursorColor: cursorColor,
         radius: radius,
         borderColor: borderColor,
         iconColor: iconColor,
       );

  CustomInputText.description({
    required TextEditingController controller,
    void Function(String)? onTextChange,
    FocusNode? focusNode,
    FocusNode? nextFocusNode,
    String? hintText,
    String? labelText,
    double? heigth,
    IconData? suffixIcon,
    void Function()? suffixIconAction,
    IconData? prefixIcon,
    void Function()? prefixIconAction,
    bool? isEnable,
    TextAlign? textAlign,
    bool? withLabelOnTop,
    Key? key,
    String? Function(String?)? validator,
    bool readOnly = false,
    bool enableInteractiveSelection = false,
    int? maxLines,
    EdgeInsetsGeometry? contentPadding,
    Color? inputTextbackgroundColor,
    int? maxLength,
    Color? cursorColor,
    BorderRadius? radius,
    Color? borderColor,
    Color? iconColor,
  }) : this(
         controller: controller,
         onTextChange: onTextChange,
         focusNode: focusNode,
         nextFocusNode: nextFocusNode,
         hintText: hintText,
         labelText: labelText,
         keyboardType: TextInputType.multiline,
         inputFormatters: [LengthLimitingTextInputFormatter(150)],
         heigth: heigth,
         textInputAction: TextInputAction.done,
         suffixIcon: suffixIcon,
         suffixIconAction: suffixIconAction,
         prefixIcon: prefixIcon,
         prefixIconAction: prefixIconAction,
         isEnable: isEnable,
         textAlign: textAlign,
         withLabelOnTop: withLabelOnTop,
         key: key,
         validator: validator,
         readOnly: readOnly,
         maxLines: maxLines,
         enableInteractiveSelection: enableInteractiveSelection,
         contentPadding: contentPadding,
         inputTextbackgroundColor: inputTextbackgroundColor,
         maxLength: maxLength,
         cursorColor: cursorColor,
         radius: radius,
         borderColor: borderColor,
         iconColor: iconColor,
       );

  CustomInputText.code({
    required TextEditingController controller,
    void Function(String)? onTextChange,
    FocusNode? focusNode,
    FocusNode? nextFocusNode,
    String? hintText,
    String? labelText,
    double? heigth,
    IconData? suffixIcon,
    void Function()? suffixIconAction,
    IconData? prefixIcon,
    void Function()? prefixIconAction,
    bool? isEnable,
    TextAlign? textAlign,
    bool? withLabelOnTop,
    Key? key,
    String? Function(String?)? validator,
    bool readOnly = false,
    bool enableInteractiveSelection = false,
    Color? inputTextbackgroundColor,
    int? maxLength,
    Color? cursorColor,
    BorderRadius? radius,
    Color? borderColor,
    Color? iconColor,
  }) : this(
         controller: controller,
         onTextChange: onTextChange,
         focusNode: focusNode,
         nextFocusNode: nextFocusNode,
         hintText: hintText,
         labelText: labelText,
         keyboardType: TextInputType.number,
         inputFormatters: [LengthLimitingTextInputFormatter(6)],
         maxLines: 1,
         heigth: heigth,
         obscureText: false,
         textInputAction: TextInputAction.done,
         suffixIcon: suffixIcon,
         suffixIconAction: suffixIconAction,
         prefixIcon: prefixIcon,
         prefixIconAction: prefixIconAction,
         isEnable: isEnable,
         textAlign: textAlign,
         withLabelOnTop: withLabelOnTop,
         key: key,
         validator: validator,
         readOnly: readOnly,
         enableInteractiveSelection: enableInteractiveSelection,
         inputTextbackgroundColor: inputTextbackgroundColor,
         maxLength: maxLength,
         cursorColor: cursorColor,
         radius: radius,
         borderColor: borderColor,
         iconColor: iconColor,
       );

  final void Function(String)? onTextChange;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final double? heigth;
  final double? width;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final IconData? suffixIcon;
  final void Function()? suffixIconAction;
  final IconData? prefixIcon;
  final void Function()? prefixIconAction;
  final bool? isEnable;
  final TextAlign? textAlign;
  final bool? withLabelOnTop;
  final bool readOnly;
  final bool enableInteractiveSelection;
  final EdgeInsetsGeometry? contentPadding;
  final Color? inputTextbackgroundColor;
  final int? maxLength;
  final void Function()? onDropdownTap;
  final Color? cursorColor;
  final BorderRadius? radius;
  final Color? borderColor;
  final Color? iconColor;

  @override
  CustomInputTextState createState() => CustomInputTextState();
}

class CustomInputTextState extends State<CustomInputText> {
  bool textIsObscure = true;
  IconData? suffix;
  void Function()? suffixAction;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    if (widget.focusNode != null) {
      widget.focusNode?.addListener(() {
        setState(() {
          _isFocused = widget.focusNode?.hasFocus ?? false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    configurePasswordIcons();
    final textFormField = TextFormField(
      textAlign: widget.textAlign ?? TextAlign.start,
      enabled: widget.isEnable,
      focusNode: widget.focusNode,
      onFieldSubmitted: (_) {
        if (widget.nextFocusNode != null) {
          widget.nextFocusNode?.requestFocus();
        }
      },
      maxLength: widget.maxLength,
      readOnly: widget.readOnly,
      cursorColor: widget.cursorColor ?? CustomColors.primary,
      inputFormatters: widget.inputFormatters ?? [],
      keyboardType: widget.keyboardType,
      autovalidateMode: AutovalidateMode.disabled,
      validator: widget.validator,
      controller: widget.controller,
      onChanged: widget.onTextChange,
      obscureText: textIsObscure,
      autocorrect: false,
      enableSuggestions: false,
      enableInteractiveSelection: widget.enableInteractiveSelection,
      style: const TextStyle(
        color: CustomColors.primary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.inputTextbackgroundColor ?? Colors.white,
        contentPadding:
            widget.contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 16,
              vertical: ((widget.heigth ?? 60) - 24) / 2,
            ),
        hintText: widget.hintText,
        hintStyle: Theme.of(context).inputDecorationTheme.hintStyle?.copyWith(
          color: widget.cursorColor ?? CustomColors.primary,
        ),
        border: widget.radius != null
            ? OutlineInputBorder(
                borderRadius: widget.radius!,
                borderSide: BorderSide(
                  color: widget.borderColor ?? CustomColors.primary,
                ),
              )
            : Theme.of(context).inputDecorationTheme.border,
        focusedBorder: widget.radius != null
            ? OutlineInputBorder(
                borderRadius: widget.radius!,
                borderSide: const BorderSide(
                  color: CustomColors.primary,
                  width: 2,
                ),
              )
            : Theme.of(context).inputDecorationTheme.focusedBorder,
        enabledBorder: widget.radius != null
            ? OutlineInputBorder(
                borderRadius: widget.radius!,
                borderSide: BorderSide(
                  color:
                      widget.borderColor ??
                      CustomColors.primary.withValues(alpha: 0.5),
                ),
              )
            : Theme.of(context).inputDecorationTheme.enabledBorder,
        errorBorder: widget.radius != null
            ? OutlineInputBorder(
                borderRadius: widget.radius!,
                borderSide: const BorderSide(color: Colors.red),
              )
            : Theme.of(context).inputDecorationTheme.errorBorder,
        disabledBorder: widget.radius != null
            ? OutlineInputBorder(
                borderRadius: widget.radius!,
                borderSide: BorderSide(
                  color:
                      widget.borderColor ?? Colors.grey.withValues(alpha: 0.3),
                ),
              )
            : Theme.of(context).inputDecorationTheme.disabledBorder,
        suffixIcon: suffixIcon(),
        prefixIcon: prefixIcon(),
        labelText: widget.withLabelOnTop == false ? widget.labelText : null,
        labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
        suffixIconColor: iconColor(),
        prefixIconColor: iconColor(),
      ),
    );
    return GestureDetector(
      onTap: widget.onDropdownTap,
      child: Container(
        width: widget.width ?? 328,
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.withLabelOnTop ?? false) ...[
              Padding(
                padding: const EdgeInsets.only(left: 12, bottom: 4),
                child: CustomLabel(
                  text: widget.labelText ?? '',
                  color: Colors.white,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall!.copyWith(fontSize: 10),
                ),
              ),
            ],
            Container(
              constraints: BoxConstraints(
                minHeight: widget.heigth ?? 60,
                maxHeight: widget.heigth ?? 60,
              ),
              child: textFormField,
            ),
          ],
        ),
      ),
    );
  }

  Color iconColor() {
    if (_isFocused) {
      return CustomColors.primary;
    } else {
      if (ThemeHelper.isDarkThemeOn(context)) {
        return Colors.white;
      }
      return CustomColors.primary;
    }
  }

  Widget? prefixIcon() {
    if (widget.prefixIcon == null) {
      return null;
    } else {
      return GestureDetector(
        onTap: () {
          if (widget.prefixIconAction == null) return;
          widget.prefixIconAction!();
        },
        child: Container(
          margin: const EdgeInsets.only(left: 15, right: 5),
          child: Icon(
            widget.prefixIcon,
            color: widget.iconColor ?? CustomColors.primary,
          ),
        ),
      );
    }
  }

  Widget? suffixIcon() {
    if (suffix == null) {
      return null;
    } else {
      return GestureDetector(
        onTap: () {
          if (suffixAction == null) return;
          suffixAction!();
        },
        child: Container(
          margin: const EdgeInsets.only(right: 15, left: 5),
          child: Icon(suffix, color: widget.iconColor ?? CustomColors.primary),
        ),
      );
    }
  }

  void obscureTextAction() {
    setState(() {
      textIsObscure = !textIsObscure;
      suffix = textIsObscure ? Icons.visibility_off : Icons.remove_red_eye;
    });
  }

  void configurePasswordIcons() {
    if (widget.obscureText) {
      if (textIsObscure) {
        suffix = Icons.visibility_off;
        suffixAction = obscureTextAction;
      } else {
        suffix = Icons.visibility_outlined;
        suffixAction = obscureTextAction;
      }
    } else {
      textIsObscure = false;
      suffix = widget.suffixIcon;
      suffixAction = widget.suffixIconAction;
    }
  }
}
