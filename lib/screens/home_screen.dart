import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fsdh/common/color_constants.dart';
import 'package:fsdh/widgets/drawer_item.dart';
import 'package:fsdh/widgets/graph_card_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final numberFormat = NumberFormat("##,###.00#", "en_US");
  int activeIndex;
  int _currentTab;
  @override
  initState() {
    super.initState();
    _currentTab = 0;
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Navigator.canPop(context);
      },
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0,
          leading: IconButton(
            iconSize: 40.0,
            icon: Icon(Icons.short_text),
            // SvgPicture.asset('assets/svg/drawer_icon.svg'),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
            color: Colors.indigo[900],
            padding: EdgeInsets.only(left: 8),
          ),
          actions: <Widget>[
            Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.only(bottom: 2.0, top: 2.0, right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/user_photo.png'),
                ),
              ),
            )
          ],
        ),
        drawer: myDrawer(),
        body: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 5,
                ),
                child: Text(
                  'Hi, Odunlade!',
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Overview',
                      style: TextStyle(
                          color: Colors.indigo[900],
                          fontWeight: FontWeight.w700)),
                  Text('View Insights',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45,
                      ))
                ],
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                decoration: BoxDecoration(
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Color(0xFFB0CCE1).withOpacity(0.42),
                    //       spreadRadius: 3,
                    //       blurRadius: 10,
                    //       offset: Offset(0, 5))
                    // ],
                    color: Colors.indigo[900],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'Current Investments',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' + "${numberFormat.format(12807.05)}",
                          style: GoogleFonts.openSans(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: ColorConstants.kwhiteColor,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "15%",
                              style: GoogleFonts.spartan(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: ColorConstants.kwhiteColor,
                              ),
                            ),
                            Icon(
                              LineAwesomeIcons.alternate_long_arrow_up,
                              color: ColorConstants.kwhiteColor,
                              size: 22,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.transparent),
                  child: Stack(
                    children: <Widget>[
                      chart(context),
                      Positioned(
                          left: 13,
                          // right: ,
                          top: 10,
                          // bottom: ,
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 12,
                                    width: 12,
                                    color: Colors.indigo[900],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Investments',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: ColorConstants.kgreyColor,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 12,
                                    width: 12,
                                    color: ColorConstants.kOrangeColor,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Liquidations',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: ColorConstants.kgreyColor,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ))
                    ],
                  ),
                  // BezierChart(
                  //   bezierChartScale: BezierChartScale.CUSTOM,
                  //   selectedValue: 1,
                  //   xAxisCustomValues: [1, 5, 10, 15, 20, 25, 30],
                  //   series: const [
                  //     BezierLine(
                  //       label: "Investments",
                  //       lineColor: Colors.indigo,
                  //       dataPointStrokeColor: ColorConstants.kwhiteColor,
                  //       dataPointFillColor: ColorConstants.kOrangeColor,
                  //       lineStrokeWidth: 3,
                  //       data: const [
                  //         DataPoint<double>(value: 100, xAxis: 1),
                  //         DataPoint<double>(value: 120, xAxis: 5),
                  //         DataPoint<double>(value: 145, xAxis: 10),
                  //         DataPoint<double>(value: 175, xAxis: 15),
                  //         DataPoint<double>(value: 210, xAxis: 20),
                  //         DataPoint<double>(value: 260, xAxis: 25),
                  //         DataPoint<double>(value: 350, xAxis: 30),
                  //       ],
                  //     ),
                  //     BezierLine(
                  //       label: "Liquidations",
                  //       lineColor: ColorConstants.kOrangeColor,
                  //       dataPointStrokeColor: ColorConstants.kwhiteColor,
                  //       dataPointFillColor: Colors.indigo,
                  //       lineStrokeWidth: 3,
                  //       data: const [
                  //         DataPoint<double>(value: 100, xAxis: 1),
                  //         DataPoint<double>(value: 150, xAxis: 5),
                  //         DataPoint<double>(value: 175, xAxis: 10),
                  //         DataPoint<double>(value: 215, xAxis: 15),
                  //         DataPoint<double>(value: 270, xAxis: 20),
                  //         DataPoint<double>(value: 190, xAxis: 25),
                  //         DataPoint<double>(value: 230, xAxis: 30),
                  //       ],
                  //     ),
                  //   ],
                  //   config: BezierChartConfig(
                  //     startYAxisFromNonZeroValue: true,
                  //     verticalIndicatorFixedPosition: false,
                  //     bubbleIndicatorColor: ColorConstants.kwhiteColor,
                  //     bubbleIndicatorLabelStyle:
                  //         TextStyle(color: Colors.indigo[900]),
                  //     bubbleIndicatorTitleStyle:
                  //         TextStyle(color: Colors.indigo[900]),
                  //     bubbleIndicatorValueStyle:
                  //         TextStyle(color: Colors.indigo[900]),
                  //     footerHeight: 40,
                  //     displayYAxis: false,
                  //     stepsYAxis: 15,
                  //     displayLinesXAxis: true,
                  //     xAxisTextStyle: TextStyle(
                  //       color: ColorConstants.kblackColor,
                  //     ),
                  //     verticalIndicatorStrokeWidth: 2.0,
                  //     verticalIndicatorColor: Colors.black26,
                  //     backgroundColor: Colors.white,
                  //     showVerticalIndicator: true,
                  //     snap: false,
                  //   ),
                  // ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GraphCardWidget(
                    activeIndex: 0,
                    onTap: () {},
                    width: _currentTab == 0
                        ? MediaQuery.of(context).size.width / 3.4
                        : MediaQuery.of(context).size.width / 6.0,
                    activeColor: _currentTab == 0
                        ? ColorConstants.kOrangeColor
                        : Colors.indigo[900],
                    title: _currentTab == 0 ? "May to Nov" : "May\n to \nNov",
                    fontColor: _currentTab == 0
                        ? Colors.indigo[900]
                        : ColorConstants.kOrangeColor,
                    fontSize: _currentTab == 0 ? 15 : 10,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GraphCardWidget(
                    activeIndex: 1,
                    onTap: () {},
                    width: _currentTab == 1
                        ? MediaQuery.of(context).size.width / 3.4
                        : MediaQuery.of(context).size.width / 6.0,
                    activeColor: _currentTab == 1
                        ? ColorConstants.kOrangeColor
                        : Colors.indigo[900],
                    title: "1 \n Month",
                    fontSize: 10,
                    fontColor: _currentTab == 1
                        ? Colors.indigo[900]
                        : ColorConstants.kOrangeColor,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GraphCardWidget(
                    activeIndex: 2,
                    onTap: () {},
                    width: _currentTab == 2
                        ? MediaQuery.of(context).size.width / 3.4
                        : MediaQuery.of(context).size.width / 6.0,
                    activeColor: _currentTab == 2
                        ? ColorConstants.kOrangeColor
                        : Colors.indigo[900],
                    title: "6 \n Months",
                    fontSize: 10,
                    fontColor: _currentTab == 2
                        ? Colors.indigo[900]
                        : ColorConstants.kOrangeColor,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GraphCardWidget(
                    activeIndex: 3,
                    onTap: () {},
                    fontSize: 10,
                    width: _currentTab == 3
                        ? MediaQuery.of(context).size.width / 3.4
                        : MediaQuery.of(context).size.width / 6.0,
                    activeColor: _currentTab == 3
                        ? ColorConstants.kOrangeColor
                        : Colors.indigo[900],
                    title: "1 \n Year",
                    fontColor: _currentTab == 3
                        ? Colors.indigo[900]
                        : ColorConstants.kOrangeColor,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Income",
                    style: GoogleFonts.spartan(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.indigo[900],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "75%",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.kgreyColor,
                        ),
                      ),
                      Icon(
                        LineAwesomeIcons.alternate_long_arrow_down,
                        color: Colors.indigo[900],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Outcome",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.indigo[900],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "25%",
                        style: GoogleFonts.spartan(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.kgreyColor,
                        ),
                      ),
                      Icon(
                        LineAwesomeIcons.alternate_long_arrow_down,
                        color: Colors.indigo[900],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget myDrawer() {
  return Drawer(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      color: Colors.indigo[900],
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 85,
          ),
          ListTile(
            title: Text(
              'ODUNLADE SEUN',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              'Acc. No. 1232524311',
              style: TextStyle(fontSize: 14.0, color: Colors.white),
            ),
            leading: CircleAvatar(
              child: Image.asset('assets/images/user_photo.png'),
              radius: 40,
            ),
          ),
          Divider(
            height: 25,
            thickness: 0.5,
            color: Colors.white.withOpacity(0.3),
            indent: 20,
            // endIndent: 20,
          ),
          DrawerItem(
            onTap: () {},
            icon: LineAwesomeIcons.alternate_pied_piper_logo,
            title: 'Invest Now',
          ),
          DrawerItem(
            onTap: () {},
            icon: LineAwesomeIcons.wallet,
            title: 'Withdraw Cash',
          ),
          DrawerItem(
            onTap: () {},
            icon: LineAwesomeIcons.inbox,
            title: 'Inbox',
          ),
          DrawerItem(
            onTap: () {},
            icon: LineAwesomeIcons.alternate_wavy_money_bill,
            title: 'Transactons',
          ),
          DrawerItem(
            onTap: () {},
            icon: CupertinoIcons.settings,
            title: 'Settings',
          ),
          DrawerItem(
            onTap: () {},
            icon: LineAwesomeIcons.envira_gallery,
            title: 'Help',
          ),
          DrawerItem(
            onTap: () {},
            icon: LineAwesomeIcons.info_circle,
            title: 'About',
          ),
        ],
      ),
    ),
  );
}

Widget chart(BuildContext context) {
  final fromDate = DateTime(2020, 05, 22);
  final toDate = DateTime.now();

  final date1 = DateTime.now().subtract(Duration(days: 1));
  final date2 = DateTime.now().subtract(Duration(days: 30));

  final date3 = DateTime.now().subtract(Duration(days: 60));
  final date4 = DateTime.now().subtract(Duration(days: 90));

  final date5 = DateTime.now().subtract(Duration(days: 120));
  final date6 = DateTime.now().subtract(Duration(days: 150));
  final date7 = DateTime.now().subtract(Duration(days: 180));

  return Center(
    child: Container(
      padding: EdgeInsets.all(8),
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: BezierChart(
        bezierChartScale: BezierChartScale.MONTHLY,
        fromDate: fromDate,
        toDate: toDate,
        selectedDate: toDate,
        series: [
          BezierLine(
            label: "Investments",
            lineColor: Colors.indigo,
            dataPointStrokeColor: ColorConstants.kwhiteColor,
            dataPointFillColor: ColorConstants.kOrangeColor,
            lineStrokeWidth: 3,
            onMissingValue: (dateTime) {
              if (dateTime.month.isEven) {
                return 10.0;
              }
              return 5.0;
            },
            data: [
              DataPoint<DateTime>(value: 250, xAxis: date1),
              DataPoint<DateTime>(value: 220, xAxis: date2),
              DataPoint<DateTime>(value: 205, xAxis: date3),
              DataPoint<DateTime>(value: 175, xAxis: date4),
              DataPoint<DateTime>(value: 150, xAxis: date5),
              DataPoint<DateTime>(value: 120, xAxis: date6),
              DataPoint<DateTime>(value: 100, xAxis: date7),
            ],
          ),
          BezierLine(
            label: "Liquidations",
            lineColor: ColorConstants.kOrangeColor,
            dataPointStrokeColor: ColorConstants.kwhiteColor,
            dataPointFillColor: Colors.indigo,
            lineStrokeWidth: 3,
            onMissingValue: (dateTime) {
              if (dateTime.month.isEven) {
                return 10.0;
              }
              return 5.0;
            },
            data: [
              DataPoint<DateTime>(value: 350, xAxis: date1),
              DataPoint<DateTime>(value: 310, xAxis: date2),
              DataPoint<DateTime>(value: 295, xAxis: date3),
              DataPoint<DateTime>(value: 265, xAxis: date4),
              DataPoint<DateTime>(value: 230, xAxis: date5),
              DataPoint<DateTime>(value: 200, xAxis: date6),
              DataPoint<DateTime>(value: 20, xAxis: date7),
            ],
          ),
        ],
        config: BezierChartConfig(
          startYAxisFromNonZeroValue: true,
          verticalIndicatorFixedPosition: false,
          bubbleIndicatorColor: ColorConstants.kwhiteColor,
          bubbleIndicatorLabelStyle: TextStyle(color: Colors.indigo[900]),
          bubbleIndicatorTitleStyle: TextStyle(color: Colors.indigo[900]),
          bubbleIndicatorValueStyle: TextStyle(color: Colors.indigo[900]),
          footerHeight: 50,
          displayYAxis: false,
          stepsYAxis: 15,
          displayLinesXAxis: true,
          xAxisTextStyle: TextStyle(
            color: Colors.black,
          ),
          verticalIndicatorStrokeWidth: 2.0,
          verticalIndicatorColor: Colors.black26,
          backgroundColor: Colors.white,
          showVerticalIndicator: true,
          snap: false,
        ),
      ),
    ),
  );
}
