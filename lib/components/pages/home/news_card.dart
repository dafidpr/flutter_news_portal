import 'package:flutter/material.dart';
import 'package:flutter_news_portal/constants/theme.dart';

class NewsCard extends StatelessWidget {
  final String image;
  final String title;
  final String postDate;
  final String author;
  final VoidCallback onTap;

  NewsCard(
      {required this.title,
      required this.image,
      required this.postDate,
      required this.author,
      required this.onTap});

  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 4),
              blurRadius: 10,
            ),
          ],
        ),
        child: Card(
          elevation: 0,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        author,
                        style: TextStyle(
                            color: AppTheme.pinkColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        postDate,
                        style: TextStyle(
                            color: AppTheme.greyColor300,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
