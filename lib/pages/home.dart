import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_portal/components/pages/home/news_card.dart';
import 'package:flutter_news_portal/components/pages/home/news_filter.dart';
import 'package:flutter_news_portal/constants/theme.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.greyColor50,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/logo.png',
          width: 140,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Badge(
                position: BadgePosition(
                  bottom: 25,
                  end: 13,
                ),
                badgeColor: Colors.red,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    LineAwesomeIcons.bell,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(right: 11, left: 11),
          child: Column(
            children: [
              NewsFilter(),
              NewsCard(
                title:
                    "Vanessa Khong Sorot Eks Tunangan Indra Kenz: Jangan Sok Polos",
                image: "assets/images/news/news1.jpg",
                postDate: "12 Maret 2022",
                author: "Prih Prawesti Febrian",
                onTap: () {
                  Navigator.pushNamed(context, '/news/detail');
                },
              ),
              NewsCard(
                title:
                    "Vanessa Khong Sorot Eks Tunangan Indra Kenz: Jangan Sok Polos",
                image: "assets/images/news/news1.jpg",
                postDate: "12 Maret 2022",
                author: "Prih Prawesti Febrian",
                onTap: () {
                  Navigator.pushNamed(context, '/news/detail');
                },
              ),
              NewsCard(
                title:
                    "Vanessa Khong Sorot Eks Tunangan Indra Kenz: Jangan Sok Polos",
                image: "assets/images/news/news1.jpg",
                postDate: "12 Maret 2022",
                author: "Prih Prawesti Febrian",
                onTap: () {
                  Navigator.pushNamed(context, '/news/detail');
                },
              ),
              NewsCard(
                title:
                    "Vanessa Khong Sorot Eks Tunangan Indra Kenz: Jangan Sok Polos",
                image: "assets/images/news/news1.jpg",
                postDate: "12 Maret 2022",
                author: "Prih Prawesti Febrian",
                onTap: () {
                  Navigator.pushNamed(context, '/news/detail');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
