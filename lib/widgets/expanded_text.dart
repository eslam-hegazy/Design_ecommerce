import 'package:flutter/material.dart';

import 'package:tasks/utils/app_color.dart';
import 'package:tasks/widgets/small_text.dart';

class ExpandedText extends StatefulWidget {
  const ExpandedText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  State<ExpandedText> createState() => _ExpandedTextState();
}

class _ExpandedTextState extends State<ExpandedText> {
  late String firstText;
  late String secondText;
  late bool hiddenText = true;
  int line = 290;
  @override
  void initState() {
    super.initState();
    if (widget.text.length > line) {
      firstText = widget.text.substring(0, line);
      secondText = widget.text.substring(line + 1, widget.text.length);
    } else {
      firstText = widget.text;
      secondText = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return secondText.isEmpty
        ? SmallText(text: firstText, color: AppColor.kGrey, line: 50)
        : Column(
            children: [
              SmallText(
                line: 50,
                text: hiddenText
                    ? (firstText + ".....")
                    : (firstText + secondText),
                color: AppColor.kGrey,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    hiddenText = !hiddenText;
                    print(hiddenText);
                  });
                },
                child: Row(
                  children: [
                    const SmallText(text: "Show more", color: AppColor.kMain),
                    hiddenText == true
                        ? const Icon(Icons.arrow_drop_down,
                            color: AppColor.kMain)
                        : const Icon(Icons.arrow_drop_up,
                            color: AppColor.kMain),
                  ],
                ),
              ),
            ],
          );
  }
}
