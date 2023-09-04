import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  String name;
  VoidCallback onPressed;
  EdgeInsetsGeometry? margin;
  RoundedButton({required this.name, required this.onPressed, this.margin});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: margin,
        width: 340,
        height: 58,
        decoration: const BoxDecoration(
            color: Color(0xffEF3651),
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Center(
          child: Text(
            name,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}

class uploadButton extends StatelessWidget {
  String name;
  VoidCallback onPressed;

  uploadButton({required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 340,
        height: 58,
        decoration: BoxDecoration(
            color: Color(0xffFFFF),
            borderRadius: BorderRadius.all(Radius.circular(25)),
            border: Border.all(width: 2, color: Colors.white)),
        child: Center(
          child: Text(
            "UPLOAD AN IMAGE",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}

class CheckButton extends StatelessWidget {
  String name;
  VoidCallback onPressed;
  EdgeInsetsGeometry? margin;

  CheckButton({required this.name, required this.onPressed, this.margin});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: margin,
        
        width: 160,
        height: 36,
        decoration: const BoxDecoration(
          
            color: Color(0xffEF3651),
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Center(
          child: Text(
            name,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}

class TextInputFiled extends StatefulWidget {
  TextInputFiled({
    Key? key,
    required this.myController,
    required this.labelText,
    required this.hintText,
    required this.keybordType,
    required this.onValidator,
    this.onFiledSubmittedValue,
    this.onChanged,
    this.maxLength = 10,
    this.obscuringCharacter = "*",
    this.SuffixIcon,
    this.focusNode,
    this.enable = true,
    this.autoFocus = false,
    this.obscure = false,
  });
  final TextEditingController myController;
  final FocusNode? focusNode;
  final FormFieldSetter? onFiledSubmittedValue;
  final FormFieldValidator onValidator;
  final TextInputType keybordType;
  final String hintText;
  final String labelText;
  final String obscuringCharacter;
  final bool obscure;
  final bool enable;
  final bool autoFocus;
  final int maxLength;
  final Widget? SuffixIcon;
  final Function(String)? onChanged;

  @override
  State<TextInputFiled> createState() => _TextInputFiledState();
}

class _TextInputFiledState extends State<TextInputFiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 25,
      style: Theme.of(context).textTheme.bodySmall,
      cursorColor: Colors.white,
      cursorHeight: 17,
      controller: widget.myController,
      focusNode: widget.focusNode,
      onFieldSubmitted: widget.onFiledSubmittedValue,
      validator: widget.onValidator,
      keyboardType: widget.keybordType,
      obscureText: widget.obscure,
      enabled: widget.enable,
      autofocus: widget.autoFocus,
      obscuringCharacter: widget.obscuringCharacter,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
          suffixIcon: widget.SuffixIcon,
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          labelText: widget.labelText,
          labelStyle: Theme.of(context).textTheme.bodySmall,
          fillColor: const Color(0xff2A2C36),
          filled: true,
          contentPadding: const EdgeInsets.all(25),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff2A2C36))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff2A2C36)))),
    );
  }
}
