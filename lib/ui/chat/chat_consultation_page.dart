import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:team_5_motionhack/common/theme/font.dart';
import 'package:team_5_motionhack/ui/chat/chat_page.dart';

class ChatConsultationPage extends StatefulWidget {
  final String name;
  final String pic;
  final bool isConsultant;

  const ChatConsultationPage({
    super.key,
    required this.isConsultant,
    required this.name,
    required this.pic,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ChatConsultationPageState createState() => _ChatConsultationPageState();
}

class _ChatConsultationPageState extends State<ChatConsultationPage> {
  final TextEditingController _controller = TextEditingController();
  List<String> chatList = [];

  @override
  Widget build(BuildContext context) {
    final String appBarTitle =
        widget.isConsultant ? 'Chat Konsultan' : 'Chat Investor';
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => ChatPage(
                  initialIndex: widget.isConsultant ? 1 : 0,
                ),
              ),
              (route) => false,
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            size: 20,
          ),
        ),
        centerTitle: true,
        title: Text(
          appBarTitle,
          style: mediumText18.copyWith(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            // color: Colors.amber,
            height: 72,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 21,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  // child: Image.asset(
                  //   'assets/images/image.png',
                  //   height: 42,
                  // ),
                  child: Image.network(
                    // 'https://randomuser.me/api/portraits/men/15.jpg',
                    widget.pic,
                    height: 42,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  // 'Aqeel',
                  widget.name,
                  style: regularText16,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemExtent: 50, // Atur tinggi setiap item
              itemCount: chatList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21.0),
                  child: FittedBox(
                    fit: BoxFit.none,
                    alignment: AlignmentDirectional.topEnd,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 16.0,
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0xFF00584B),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Text(
                        chatList[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(21),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Halo, saya mau berkonsultasi',
                  hintStyle: lightText14.copyWith(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(16),
                  suffixIconConstraints: const BoxConstraints(
                    minHeight: 24,
                    minWidth: 24,
                  ),
                  suffixIcon: IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/send_icon.svg',
                    ),
                    onPressed: () {
                      setState(() {
                        chatList.add(_controller.text);
                        _controller.clear();
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
