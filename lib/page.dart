import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: new DecorationImage(
                    image: new ExactAssetImage('assets/bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 18.0, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'TASKER',
                                style: TextStyle(
                                    color: Color(0xFFFF5656),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 118,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    border:
                                    Border.all(color: Color(0xFFFF5656)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFF5656),
                                          borderRadius:
                                          BorderRadius.circular(50),
                                        ),
                                        child: Image.asset('assets/arrow.png'),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'ВОЙТИ',
                                        style: TextStyle(
                                            color: Color(0xFFFF5656),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                Switch(
                                  value: false,
                                  onChanged: (value) {},
                                  activeTrackColor: Color(0xFFCCD9EC),
                                  activeColor: Color(0xFF3DC2FF),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'БИРЖА ЗАРАБОТКА В ИНТЕРНЕТЕ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'на простых заданиях',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Тысячи легких заданий с оплатой за деньги',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 117),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF6812C1),
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF5100A6),
                              blurRadius: 2,
                              offset: Offset(4, 4), // Shadow position
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'РЕГИСТРАЦИЯ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Image.asset('assets/bg-image.png')
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 18.0, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 329,
                        height: 374,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          border: new Border.all(
                              color: Color(0xFFFF5656), width: 1.39),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/1.png'),
                            Text('1 520 500',
                                style: TextStyle(
                                    color: Color(0xFFFF5656),
                                    fontSize: 64,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 10),
                            Text('Выплачено денег',
                                style: TextStyle(
                                    color: Color(0xFF4C4866),
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 18.0, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 329,
                        height: 374,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          border: new Border.all(
                              color: Color(0xFFFF5656), width: 1.39),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/2.png'),
                            Text('24 250',
                                style: TextStyle(
                                    color: Color(0xFFFF5656),
                                    fontSize: 64,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 10),
                            Text('Заказчиков',
                                style: TextStyle(
                                    color: Color(0xFF4C4866),
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 18.0, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 329,
                        height: 374,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          border: new Border.all(
                              color: Color(0xFFFF5656), width: 1.39),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/3.png'),
                            Text('3 526',
                                style: TextStyle(
                                    color: Color(0xFFFF5656),
                                    fontSize: 64,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 10),
                            Text('Активных заданий',
                                style: TextStyle(
                                    color: Color(0xFF4C4866),
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 58),
              Text(
                'С ЧЕГО НАЧАТЬ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 20, right: 20,bottom: 20),
                child: Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          new Border.all(color: Color(0xFFCCD9EC), width: 1.39),
                      borderRadius: BorderRadius.all(Radius.circular(7.3))),
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: new Border.all(
                                color: Color(0xFFCCD9EC), width: 1.39),
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.3))),
                        child: Image.asset('assets/note-icon.png'),
                      ),
                      SizedBox(
                        width: 16,
                        height: 16,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(top: 15, right: 15,bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Выполняйте задания',
                                style: TextStyle(
                                    color: Color(0xFF4C4866),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Выполняйте интересные задания от заказчиков в свободное для Вас время',
                                style: TextStyle(
                                    color: Color(0xFF4C4866),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 20, right: 20),
                child: Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          new Border.all(color: Color(0xFFCCD9EC), width: 1.39),
                      borderRadius: BorderRadius.all(Radius.circular(7.3))),
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: new Border.all(
                                color: Color(0xFFCCD9EC), width: 1.39),
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.3))),
                        child: Image.asset('assets/dollar.png'),
                      ),
                      SizedBox(
                        width: 16,
                        height: 16,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(top: 15, right: 15,bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Зарабатывайте деньги',
                                style: TextStyle(
                                    color: Color(0xFF4C4866),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Получайте честно заработанные деньги сразу же после проверки задания',
                                style: TextStyle(
                                    color: Color(0xFF4C4866),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 20, right: 20),
                child: Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          new Border.all(color: Color(0xFFCCD9EC), width: 1.39),
                      borderRadius: BorderRadius.all(Radius.circular(7.3))),
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: new Border.all(
                                color: Color(0xFFCCD9EC), width: 1.39),
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.3))),
                        child: Image.asset('assets/network.png'),
                      ),
                      SizedBox(
                        width: 16,
                        height: 16,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(top: 15, right: 15,bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Привлекайте друзей',
                                style: TextStyle(
                                    color: Color(0xFF4C4866),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Зарабатывайте до 40% с каждого выполнения Вашего реферала',
                                style: TextStyle(
                                    color: Color(0xFF4C4866),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 20, right: 20),
                child: Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          new Border.all(color: Color(0xFFCCD9EC), width: 1.39),
                      borderRadius: BorderRadius.all(Radius.circular(7.3))),
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: new Border.all(
                                color: Color(0xFFCCD9EC), width: 1.39),
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.3))),
                        child: Image.asset('assets/champ.png'),
                      ),
                      SizedBox(
                        width: 16,
                        height: 16,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(top: 15, right: 15,bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Получите результат',
                                style: TextStyle(
                                    color: Color(0xFF4C4866),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Тысячи надежных исполнителей готовы выполнить любое Ваше задание',
                                style: TextStyle(
                                    color: Color(0xFF4C4866),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 58),
            ],
          ),
        ),
      ),
    );
  }
}
