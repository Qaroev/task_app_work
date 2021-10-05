import 'package:flutter/material.dart';
import 'package:testappwork/main_service.dart';
import 'package:testappwork/task_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  MainService _mainService = new MainService();
  double? statusBarHeight;
  bool notification = true;
  List<Task>? _tasks;

  @override
  void initState() {
    super.initState();
    _mainService.getTasks().then<void>((value) {
      _tasks = value;
      setState(() {});
    });
  }

  void _openAndCloseDrawer() {
    final currentState = _scaffoldKey.currentState;
    if (currentState!.isEndDrawerOpen) {
      currentState.openDrawer();
    } else {
      currentState.openDrawer();
    }
  }

  @override
  Widget build(BuildContext context) {
    statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Новые задания',
              style: TextStyle(
                  color: Color(0xFF2B96F1),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
              color: Color(0xFF2B96F1),
              size: 25,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Color(0xFF5F6492),
          iconSize: 45,
          onPressed: () => _openAndCloseDrawer(),
        ),
      ),
      body: _body(),
      drawer: _drawer(),
    );
  }

  Widget _drawer() {
    return Container(
      padding: EdgeInsets.only(top: statusBarHeight! + kToolbarHeight),
      child: Drawer(
        elevation: 0,
        child: Container(
          color: Color(0xFFF1F1F1),
          child: Column(children: <Widget>[
            Container(
              height: 40,
              color: Color(0xFF5CB85C),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_circle_outline,
                    color: Color(0xFFFFFFFF),
                  ),
                  SizedBox(width: 5),
                  Text('Создать задание',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.w500))
                ],
              ),
            ),
            Container(
              child: ExpansionTile(
                title: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          child: Image.asset('assets/girl.png'),
                        ),
                      ),
                      SizedBox(width: 15),
                      Text('Лейтенант',
                          style: TextStyle(
                              color: Color(0xFF2B96F1),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Text('user800852',
                      style: TextStyle(
                          color: Color(0xFF4C4866),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
                children: [],
              ),
            ),
            expansionTile('assets/money.png', 'Биржа знаний'),
            expansionTile('assets/orders.png', 'Мои зказы'),
            expansionTile('assets/persons.png', 'Пользователи'),
            expansionTile('assets/programma.png', 'Партнерская программа'),
            expansionTile('assets/help.png', 'Помощь'),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Светлая тема',
                      style: TextStyle(
                          color: Color(0xFF4C4866),
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                  Switch(
                    value: notification,
                    onChanged: (value) {
                      setState(() {
                        notification = !notification;
                      });
                    },
                    activeTrackColor: Color(0xFF3DC2FF).withOpacity(0.3),
                    activeColor: Color(0xFF3DC2FF),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  Widget expansionTile(String image, title) {
    return ExpansionTile(
      title: Container(
        alignment: Alignment.center,
        child: Row(
          children: [
            Image.asset(image),
            SizedBox(width: 15),
            Text(title,
                style: TextStyle(
                    color: Color(0xFF4C4866),
                    fontSize: 14,
                    fontWeight: FontWeight.normal)),
          ],
        ),
      ),
    );
  }

  Widget _body() {
    return _tasks != null
        ? SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          border: new Border.all(
                              color: Color(0xFF2B96F1), width: 1.39),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.sort,
                                    color: Color(0xFF2B96F1),
                                    size: 25,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'По дате',
                                    style: TextStyle(
                                        color: Color(0xFF2B96F1),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          border: new Border.all(
                              color: Color(0xFFCCD9EC), width: 0.7),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                children: [
                                  Text('По цене  По рейтингу',
                                      style: TextStyle(
                                          color: Color(0xFF555555),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ..._tasks!.map((item) {
                    return Column(
                      children: [
                        listTasks(item),
                        SizedBox(height: 20),
                      ],
                    );
                  })
                ],
              ),
            ),
          )
        : Center(
            child: CircularProgressIndicator(),
          );
  }

  Widget listTasks(Task item) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: new Border.all(color: Color(0xFFCCD9EC), width: 0.52),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 280,
                child: Text(item.task_title ?? '',
                    style: TextStyle(
                        color: Color(0xFF555555),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                    ),
                ),
              ),
              Container(
                width: 78,
                height: 20,
                color: Color(0xFFF0AD4E),
                child: Center(
                  child: Text('50.00 тг',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text('06.07.21',
                  style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 12,
                      fontWeight: FontWeight.w500)),
              SizedBox(width: 5),
              Text('ID109250',
                  style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 12,
                      fontWeight: FontWeight.w500)),
              SizedBox(width: 5),
              Text('t.me',
                  style: TextStyle(
                      color: Color(0xFF35B72A),
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w500)),
              SizedBox(width: 5),
              Container(
                width: 15,
                height: 15,
                child: CircleAvatar(
                  child: Icon(
                    Icons.person_pin,
                    size: 10,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Text('userdevoiday',
                  style: TextStyle(
                      color: Color(0xFF35B72A),
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w500)),
            ],
          ),
          SizedBox(height: 13),
          Container(
            decoration: BoxDecoration(
              border: new Border.all(color: Color(0xFFCCD9EC), width: 0.52),
            ),
          ),
          SizedBox(height: 10),
          Table(
            children: [
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("Категория:"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("Установка приложений"),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("Проверка:"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("Ручная проверка"),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("Многоразовость:"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("Однократное "),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("Время выполнения:"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("У вас будут 1 сутки "),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("Таргетинг по времени:"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("Нет"),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("Геотаргетинг:"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("Нет"),
                ),
              ]),
            ],
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: new Border.all(color: Color(0xFFCCD9EC), width: 0.52),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 20,
                    decoration: BoxDecoration(
                      border:
                          new Border.all(color: Color(0xFFC4C4C4), width: 0.52),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              Text(
                                '588',
                                style: TextStyle(
                                    color: Color(0xFF35B72A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '.',
                                style: TextStyle(
                                    color: Color(0xFFC4C4C4),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '0',
                                style: TextStyle(
                                    color: Color(0xFF555555),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '.',
                                style: TextStyle(
                                    color: Color(0xFFC4C4C4),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '2',
                                style: TextStyle(
                                    color: Color(0xFFFF5656),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 20,
                    decoration: BoxDecoration(
                      border:
                          new Border.all(color: Color(0xFFCCD9EC), width: 0.7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/like.png'),
                          SizedBox(width: 5),
                          Text('5',
                              style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500)),
                          SizedBox(width: 10),
                          Image.asset('assets/dislike.png'),
                          SizedBox(width: 5),
                          Text('0',
                              style: TextStyle(
                                  color: Color(0xFFF555555),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 35,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                color: Color(0xFFF0F1F3),
                                child: Image.asset('assets/ear.png'),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 20,
                                height: 20,
                                color: Color(0xFFF0F1F3),
                                child: Icon(
                                  Icons.bookmark_border,
                                  size: 10,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                height: 20,
                                padding: EdgeInsets.only(left: 10, right: 10),
                                color: Color(0xFF35B72A),
                                child: Center(
                                    child: Text('Выполнить',
                                        style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500))),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
