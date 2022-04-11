import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_portal/constants/theme.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class NewsFilter extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: EdgeInsets.only(top: 60, bottom: 8)),
        Expanded(
          flex: 8,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                CustomRadioButton(
                  enableShape: true,
                  elevation: 0,
                  autoWidth: true,
                  padding: 1,
                  unSelectedColor: Color(0xFFE0E0E0),
                  selectedBorderColor: Colors.blue,
                  unSelectedBorderColor: Color(0xFFE0E0E0),
                  buttonTextStyle:
                      ButtonTextStyle(textStyle: TextStyle(fontSize: 12)),
                  buttonLables: [
                    "All",
                    "Business",
                    "Sport",
                    "Video",
                    "Tech",
                    "Science",
                    "Health",
                    "Entertainment",
                    "Politics",
                  ],
                  buttonValues: [
                    "All",
                    "Business",
                    "Sport",
                    "Video",
                    "Tech",
                    "Science",
                    "Health",
                    "Entertainment",
                    "Politics",
                  ],
                  radioButtonValue: (value) => print(value),
                  selectedColor: Colors.blue,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 25,
          child: VerticalDivider(
            color: AppTheme.greyColor300,
            thickness: 1,
            endIndent: 0,
            width: 10,
          ),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
            icon: Icon(LineAwesomeIcons.filter),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
