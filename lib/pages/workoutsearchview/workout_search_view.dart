import 'package:betafitness/core.dart';
import 'package:pie_chart/pie_chart.dart';

class WorkoutSearchView extends StatefulWidget {
  const WorkoutSearchView({Key? key}) : super(key: key);

  @override
  State<WorkoutSearchView> createState() => _WorkoutSearchViewState();
}

class _WorkoutSearchViewState extends State<WorkoutSearchView> {
  Map<String, double> dataMap = {
    "Dribble Exercises": 10,
    "Combine Exercises": 20,
    "Push-Up Exercises": 9,
    "Push-Down Exercises": 1,
    "Pull-Up Exercises": 5,
    "Pull-Down Exercises": 15
  };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: ColorConstants.kThirdColor,
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20.h),
                  height: 50.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                    color: ColorConstants.kFourthColor.withOpacity(0.8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.r),
                    ),
                  ),
                  child: Container(
                    width: 300.w,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        hintText: "Search",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50.h,),
                PieChart(
                  colorList: [Colors.red,Colors.brown,Colors.black,Colors.yellow,Colors.amber,Colors.orange],
                  dataMap: dataMap,
                  animationDuration: const Duration(seconds: 3),
                  chartLegendSpacing: 32,
                  chartRadius: MediaQuery.of(context).size.width / 1.85,
                  initialAngleInDegree: 0,
                  chartType: ChartType.ring,
                  ringStrokeWidth: 32,
                  centerText: "Workouts",
                  legendOptions: const LegendOptions(
                    showLegendsInRow: false,
                    legendPosition: LegendPosition.bottom,
                    showLegends: true,
                    legendTextStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValueBackground: true,
                    showChartValues: true,
                    showChartValuesInPercentage: false,
                    showChartValuesOutside: false,
                    decimalPlaces: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
