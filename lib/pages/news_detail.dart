import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_portal/constants/theme.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class NewsDetail extends StatelessWidget {
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
            LineAwesomeIcons.angle_left,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                LineAwesomeIcons.share,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(right: 11, left: 11),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 15),
                // height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
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
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text(
                          "Vanessa Khong Sorot Eks Tunangan Indra Kenz: Jangan Sok Polos",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('assets/images/news/news2.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Bareskrim Polri menetapkan tiga tersangka baru dalam kasus Binomo. Selain Vanessa Khong, dua tersangka lainnya adalah ayah Vanessa, Rudiyanto Pei, dan adik Indra Kenz, Nathania Kesuma.\n\nDirtipideksus Bareskrim Polri Brigjen Whisnu Hermawan mengatakan ketiganya ditetapkan sebagai tersangka karena menerima aliran dana dari Indra Kenz. Selain itu, mereka aktif menjadi penampung dana dan menyamarkan uang hasil kejahatan Binomo.\n\nVanessa merasa heran dengan penetapan tersangka terhadap dirinya dan sang ayah. Sebab, menurut Vanessa, Indra masih memiliki utang kepada anggota keluarganya. ',
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 14),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 30),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Prih Prawesti Febrian',
                                      style: TextStyle(
                                          color: AppTheme.pinkColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      '11 Maret 2022',
                                      style: TextStyle(
                                          color: AppTheme.greyColor300,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(
                                      LineAwesomeIcons.heart,
                                      color: AppTheme.pinkColor,
                                    ),
                                    Text('12')
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(
                                      LineAwesomeIcons.comment,
                                      color: Colors.grey[700],
                                    ),
                                    Text('33')
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
