import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatTextField extends StatefulWidget {
  const ChatTextField({super.key});

  @override
  State<ChatTextField> createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends State<ChatTextField> {
  final TextEditingController _chat = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _chat,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFC9C9C9)),
            borderRadius: BorderRadius.circular(8.0),
          ),
          hintText: 'Halo, saya mau berkonsultasi',
          hintStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: Color(0xFF7F7F7F),
          ),
          suffixIcon: Transform.scale(
            scale: 0.6,
            child: SvgPicture.asset('assets/icons/send_icon.svg', width: 24, height: 24,),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 25.0)
      ),
    );
  }
}
