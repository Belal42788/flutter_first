// ctrl + shift + P لانشاء مشروع جديد

// الكود الاساسي لاي برنامج مكون من صفحة واحدة

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// import 'package:flutter/material.dart';
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//      debugShowCheckedModeBanner: false,
//       home: MyWidget(),
//     );
//   }
// }
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//   SafeArea() داخل Scaffoldيبقا تحط ال appBarلو مش هتستخدم ال
//     return Scaffold(
//       appBar: ,
//       body: ,
//     );
//   }
// }

// الكود الاساسي لأي برنامج مكون من عدة صفحات

//او اي حاجة شبههم pages او screens او routes بنعمل مجلد اسمه
//import ونعملهم class MyAppاللي في ال routesنضيف الصفحات كلهم في ال
// stateless widgetوبنعمل الصفحات اللي في البرنامج ب

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// import 'package:flutter/material.dart';
// import 'package:loginroutsregister/routes/login.dart';
// import 'package:loginroutsregister/routes/signup.dart';
// import 'package:loginroutsregister/routes/welcome.dart';
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//      debugShowCheckedModeBanner: false,

//       الصفحة اللي هتظهر اول لما نفتح البرنامج
//       initialRoute: '/',

//       هنا هنكتب كل الصفحات اللي عندنا في البرنامج بتاعنا
//       routes: {
//         '/': (context) => const Welcome(),
//         '/login': (context) => const Login(),
//         '/signup': (context) => const Signup(),
//       },
//     );
//   }
// }

/*
مثال لصفحة عندنا
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold()
    );
  }
}
*/

/*
علشان اتنقل بين الصفحات بحط ده في اي زرار
onPressed: () {
  // Navigate to the second screen using a named route.
  Navigator.pushNamed(context, '/page');
}


وعلشان ارجع للصفحة اللي قبلها
onPressed: () {
  // Navigate back to the first screen by popping the current route
  // off the stack.
  Navigator.pop(context);
}
*/

//الشرح من اول هنا

// بالشكل ده ونكتب كل حاجة جواها او بالطريقة اللي فوق  main function ممكن نعمل ال
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(),
//     ),
//   );
// }

import 'dart:math';

import 'package:flutter/material.dart';
//ثوابت بالشكل ده MyAppوال mainال

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // الاساسي بتاع البرنامج (Widet) Classالكبيرة واللي بيكون ادخلها ال Widgetال
    return const MaterialApp(
      home: MyWidget(), //الاساسي بتاع البرنامج (Widet) Classال
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  var x = 0;
  Card MyFunction() {
    return Card(
      child: Text("Flutter1"),
      // transform: Matrix4.rotationZ(1),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            x = Random().nextInt(10000);
          });
        },
        child: Text("$x"),
      ),
    );
  }
}
//بتاعنا Appبتعبر عن اسم ال classهنا اسم ال
//StatefullWidget او StatelessWidget لازم الشيء اللي اتغير يكون داخل Hot reload علشان استخدم ال
//refresh لازم Hot reload مقدرش اعمل refresh في البرنامج عندي وعاوز اعملها function لو في
/*
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    //camel case بتبدأ بحرف كابيتل وبعدها widget() اي
    //List of Widgets واحدة الا بعضهم يحتووا على Wedgit وفي العادة تحتوى على

    //MaterialApp الكبيرة واللي اسمها Widgetالاساسية اللي بتحتوي على كل حاجة اللي بتكون داخل ال Widgetال
    return Scaffold(
        //properities ليها Widget اي
        //Camle Case وبعدها small بتبدأ بحرف properity اي

        appBar: // => appBarالمكان العلوي من الشاشة اسمه ال
            //AppBar Widget حطلي appBarفي المكان بتاع ال
            AppBar(
          // leading | title | actions[widget,widget,....]

          //واحدة فقط Widget ويحتوي على AppBarالجزء اليسار من ال
          leading:

              //IconButton() لكن اقدر لما اضغط عليها يحصل حاجة معينة icon لو عاوز احط
              IconButton(
            //اللي المفروض يحصل لما ادوس عليها actionال
            onPressed: () {},

            //IconButtonاللي هحطها داخل ال iconال
            icon: Icon(
              //Icons.menu => iconعلشان اختار شكل ال
              Icons.menu,
              color: Colors.blue,
            ),
          ),

          //اللي بنحط فيها كلام widgetال
          title: Text(
            //contentال
            'facebook',
            //contentبتاع ال styleال
            style: TextStyle(
              color: Colors.blue,

              //bold علشان نخليه
              fontWeight: FontWeight.bold,
            ),
          ),

          //يكون في المنتصف titleال
          centerTitle: true,

          //AppBarالجزء اليمين من ال
          //[widget,widget,....] list of widgets ويحتوي على
          actions: [
            //1
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.blue,
            ),

            //2
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.message),
              color: Colors.blue,
            ),
          ],

          //Colors.blue[وهنا بنكتب رقم من 100:900 بيعبر عن مدى غمقان اللون] بيتكتب بالشكل ده colorال
          backgroundColor: Colors.white,

          //معناها الصعود وعلشان نعمل ظل تحت حاجة لازم نصعد elevation
          elevation: 10,
        ),

        //علشان اعمل زر عائم
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: Text("Flutter1"),
                // transform: Matrix4.rotationZ(1),
              ),
              TextButton(onPressed: () {}, child: Text("data")),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 200,
                      width: 200,
                      // margin: EdgeInsets.all(40),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.rectangle,
                      ),
                      child: Text("Flutter2"),
                      // transform: Matrix4.rotationZ(1),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 200,
                      width: 200,
                      // margin: EdgeInsets.all(40),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.rectangle,
                      ),
                      child: Text("Flutter2"),
                      // transform: Matrix4.rotationZ(1),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 200,
                      width: 200,
                      // margin: EdgeInsets.all(40),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.rectangle,
                      ),
                      child: Text("Flutter2"),
                      // transform: Matrix4.rotationZ(1),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 200,
                      width: 200,
                      // margin: EdgeInsets.all(40),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.rectangle,
                      ),
                      child: Text("Flutter2"),
                      // transform: Matrix4.rotationZ(1),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                // margin: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  shape: BoxShape.rectangle,
                ),
                child: Text("Flutter2"),
                // transform: Matrix4.rotationZ(1),
              ),
              Container(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                // margin: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  shape: BoxShape.rectangle,
                ),
                child: Text("Flutter2"),
                // transform: Matrix4.rotationZ(1),
              ),
            ],
          ),
        ));
  }
}
*/

/*
  Scaffold( 
              appBar:               
                                    AppBar(           
                                                          title:         
                                                                        Text(  
                                                                                "data"
                                                                                style: 
                                                                                        TextStyle(  
                                                                                                    color: Colors.gray[100]
                                                                                                    backgroundColor: Colors.gray[100]
                                                                                                    decoration: TextDecoration
                                                                                                    fontSize: double
                                                                                                    fontStyle: FontStyle
                                                                                                    fontWeight: FontWeight.w100
                                                                                                    height: double
                                                                                                    letterSpacing: double
                                                                                                    wordSpacing: double
                                                                                                    fontFamily: String
                                                                                maxLines: int
                                                                                overflow: TextOverflow
                                                                                textAlign: TextAlign
                                                                                textDirection: TextDirection
                                                          leading:      
                                                                        IconButton( 
                                                                                icon:  
                                                                                        Icon(
                                                                                                  icons.menu
                                                          centerTitle:  true
                                                          actions:  
                                                                    icon: 
                                                                                Icon( 
                                                                                      icons.messege
                                                                                      color:Colors.blue[200]
                                                                                      size:30
                                                                    OnPressed: () {}
                                                          backgroundColor:  color:Colors.blue[200]
                                                          elevation: double

            body:

            floatingActionPoint: 
                                    FloatingActionPoint(  

*/


/*
  لعمل متغير
  var x,y;
  DataType متغير ليس له قيمة ولا
  ممكن تديله قيمة في اي سطر في الكود وممكن تغير نوعه عن طريق انك تغير البيانات اللي داخله في اي وقت
  x = 1;
  x = 'sss';


  var x=0;
  int x =0; كده هو كأنك كاتب
  تقدر تغير قيمته لكن متقدر تغير نوعه
  x = 1;
  x = 'sss'; error

  StatelssWidget لازم نحطه داخل Hot reload علشان لما نعدل على القيمة اللي داخل المتغير وتظهر اول ما نعمل
  buildومكانها بيكون خارج ال
  
  String علشان نستخدمه داخل
  $x
  ${x + y}

  int, double, String, bool

  
*/


/*
  Data Structures

  List<data type> name=[  ,  ,  , ];
  List<Icon> answerResault=[Icon(Icons.thumb_down, color: Colors.red,) ,Icon(Icons.thumb_down, color: Colors.red,) ];
  Functions in List
    answerResault.isEmpty;
    answerResault.length;
    answerResault.first;
    answerResault.last;

*/


/*
  Functions and Libraries
  Function بتتكرر نحطها داخل Widget أي

  Random().nextInt(int); => بتديك رقم عشوائي من 0 لحد الرقم اللي انت كاتبه ناقص واحد

  Widget ممكن ترجع Functions ال
  Widget ويكون اول حرف فيه كبير لأنها Widgetsبتاعها نوع من انواع ال return type يعني ممكن نخلي ال
  ; وفي الاخر نحط return ولازم نحط كلمة
  اي حاجة بتاعها DataTypeبتاعتها ممكن يكون ال inputsال
  Container MyFunction(Color myColor) مثلا لون

  {} داخل functionوانت ممكن تنسى الترتيب بتاعهم فممكن تحطهم وانت بتعمل الinputsلو في عدد من ال
  Container myFunction({Color myColor,int myInt,string mystring})
  {} ولما تيجي تستخدمها لازم تكتب اسم المتغير وبعدها نقطتين فوق بعض وبعدها القيمة اللي انت عاوز تحطها بأي ترتيب وبدون
  Container myFunction(myColor: Colors.black, mystring: 'hi', myInt: 22);

  StatelssWidget لازم نحطه داخل Hot reload علشان لما نعدل على القيمة اللي داخل المتغير وتظهر اول ما نعمل
  buildومكانها بيكون خارج ال


  مثال
  Container myFunction(Color myColor){
    return Container(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                // margin: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  border: Border.all(color: myColor),
                  shape: BoxShape.rectangle,
                ),
                child: Text("Flutter2"),
                // transform: Matrix4.rotationZ(1),
              );
  }


*/


/*
  setState( () {
              تاني علشان التغيير يظهر reload انها تعمل Fuction build لو انا هعمل حاجة هتغير حاجة داخل التطبيق بتاعي فلازم اقول لل
          });
*/


/*
  StatefullWidget و StatelessWidget الفرق بين
  StatelessWidget => Widgetsبنكون ثابته مش بتتغير يعني مثلا الصور ثابته وباقي ال Widgetالحالة بتاعت الصفحة او التطبيق او البرنامج او ال
  StatefullWidget => Widgetsبنكون بتتغير يعني مثلا الصور متغيرة وباقي ال Widgetالحالة بتاعت الصفحة او التطبيق او البرنامج او ال
*/


/*
Text(→to show text  علشان نكتب كلام
      "data" => الكلام بيتكتب هنا
      maxLines → int => اقصى عدد من السطور ممكن يظهر
      overflow → TextOverflow.  => لو في عدد سطور اكتر من اللي مسموح ايه اللي المفروض يظهر علشان نعرف انه في سظور زيادة مش ظاهرة
      textAlign → TextAlign.  => رصف مكان الكلام يعني السطور تظهر من ناحية اليمين الاول ولا الشمال
      textDirection → TextDirection.rtl  => طريقة كتابة الكلام وبتستخدم لما يكون في كلام عربي مع انجليزي ومش بنحتاج معاها نستخدم اللي فوق
      style → TextStyle(  => للتحكم في التنسيقات الخاصة بالخط والكلام
*/

/*
TextStyle(→to style the text	لتظبيط شكل الكلام
            backgroundColor → Colors. => بتاعها colorوتستخدم ال container في textاللون بتاع الخلفية والافضل انك تحط ال
            color → Colors. => لون الخط
            color: Colors.blue[100] ==  color: Colors.blue.shade100
            decoration → TextDecoration. => لو عاوز تخلي مثلا خط على الكلام او تحته
            fontSize → double  => حجم الخط
            fontStyle → FontStyle. => شكل الخط عادي او مائل
            fontWeight → FontWeight. => سماكة الخط
            height → double => المسافة بين السطور
            letterSpacing → double => المسافة بين الاحرف
            wordSpacing → double => المسافة بين الكلمات
            fontFamily → String => علشان اغير شكل الخط بتاعي
            Download fonts from Google fonts => اول حاجة احمل الخط من جوجل فونتس
            Edit pubspec.yaml => fonts => واعدل عليه وادي للخط بتاعي اسم fonts ادخل على الملف ده وابحث عن
            TextStyle(fontFamily: "اسم الخط بتاعي") => لما اجي استخدمه
*/

/*
  container طالما في حدود او لون خلفية يبقا
Container(→is a container of other widgets	=> اخرى علشان لو عاوز تظبطها Widgets بتقدر تحط فيها
            طالما مفيش حاجة داخلها ف هي بتستحوذ على كل الاماكن الفارغة اللي حولها
            child فحجمها بيكون نفس حجم ال child واول ما نحط فيها
            child → Widget => اللي انت عاوز تظبطه Widgetهنا بتحط ال
            color → Colors. ♠ => واللي هو المفروض لون الخلفية containerلون ال

            margin → EdgeInsets. => containerمسافة خارج حدود بتاعت ال
            margin: EdgeInsets.fromLTRB(left, top, right, bottom)
            margin: EdgeInsets.all(مسافة من جميع الاتجاهات)
            margin: EdgeInsets.symmetric(horizontal:مسافة من اليمين واليسار ,vertical:مسافة من فوق وتحت)
            margin: EdgeInsets.only() => مسافة من اتجاه واحد فقط
            margin: EdgeInsets.only(left : 22)

            padding → EdgeInsets. => containerمسافة داخلية داخل حدود ال
            padding: EdgeInsets.fromLTRB(left, top, right, bottom)
            padding: EdgeInsets.all(مسافة من جميع الاتجاهات)
            padding: EdgeInsets.symmetric(horizontal:مسافة من اليمين واليسار ,vertical:مسافة من فوق وتحت)

            height → double => containerارتفاع ال
            height: double.infinity=> containerوعلشان نخليه ياخد الارتفاع الكلي لل
            width → double => containerعرض ال
            width: double.infinity=> containerوعلشان نخليه ياخد لعرض الكلي لل

            alignment → Alignment. => containerاللي داخل ال contentمكان ال
            alignment: Alignment.center
            alignment: Alignment.centerRight
            alignment: Alignment.bottomCenter
            alignment: Alignment.bottomLeft
            وباقي الحاجات شبه اللي فوق

            transform → Matrix4.  => graphicsزي ما كنا بنعمل في معمل ال containerبتعدل على ال
            transform: Matrix4.rotationZ(double) => Zبزاوية في اتجاة ال containerيلف ال
            transform: Matrix4.rotationY(double) => Yبزاوية في اتجاة ال containerيلف ال

            decoration → BoxDecoration( ♠ colorمينفعش استخده مع ال => Containerللتحكم في التنسيقات الخاصة بال
*/

/*
BoxDecoration(container لكى تتحكم أكثر فى الـ	
              color → Colors  => containerخلفية ال
              border → Border.all(color: لون الحدود, width: سمك الحدود) => containerالحدود بتاعت ال

              borderRadius ♦ مش بيشتغل مع shap ♦
              borderRadius → BorderRadius. ♦ => اركان الحدود نخليها مدورة بمقدار
              borderRadius: BorderRadius.circular(double) => كل الاركان مدورة
              borderRadius: BorderRadius.vertical(top: Radius.circular(double),bottom: Radius.circular(double)) => الركنين اللي فوق والركنين تحت
              borderRadius: BorderRadius.horizontal(left: Radius.circular(double),right: Radius.circular(double)) => الركنين اللي يمين والركنين شمال

              shape → BoxShape. ♦ => containerشكل الحدود بتاعت ال
              shape:BoxShape.rectangle => شكل الحدود مستطيل
              shape:BoxShape.circle => شكل الحدود دائرة
*/

/*
card( => مربع له حواف دائرية شويه وله خفيف
    Padding Widget علشان كده ممكن تحط الحاجات اللي جواها داخل padding properity ملهاش

    child → Widget => اللي انت عاوز تظبطه Widgetهنا بتحط ال
    ListTile() في العادة بتستخدم

    color → Colors. ♠ => واللي هو المفروض لون الخلفية cardلون ال

    margin → EdgeInsets. => containerمسافة خارج حدود بتاعت ال
    margin: EdgeInsets.fromLTRB(left, top, right, bottom)
    margin: EdgeInsets.all(مسافة من جميع الاتجاهات)
    margin: EdgeInsets.symmetric(horizontal:مسافة من اليمين واليسار ,vertical:مسافة من فوق وتحت)
    margin: EdgeInsets.only() => مسافة من اتجاه واحد فقط
    margin: EdgeInsets.only(left : 22)
    
    معناها الصعود وعلشان نعمل ظل تحت حاجة لازم نصعد elevation
    elevation → double

    shape → ShapeBorder  => لتغيير شكل الحواف

)
*/


/*
لو عاوز تحط كلام وجنبه ايقونة
ListTile( => leading || title (تحته) subTitle  || trailing
        leading → Widget => بيتحط ناحية اليمين وفي العادة بيتحط هنا ايقونة
        title → Widget => بيكون في المنتصف وفي العادة بيكون نص
        subtitle → Widget => بيكون تحت النص اللي فوق وبيكون في العادة نص وبيكون لونه أخف شويه من اللي فوق
        trailing → Widget => بيكون في الناحية اليسار
)
*/


/*
  اللي عندنا لان اغلب الحاجات اللي انت هتعملها في اي  مشروع هيكونوا تحت بعض ف انت هتحطهم في هذا العامود Widgetsمن اهم ال
Column(تُستخدم لترتيب الـ widgets رأسياً	
        حجم العامود افقيا يتحدد حسب حجم العناصر
        حجم العامود رأسيا بيمتد لحد العنصر اللي اسفل منه
        mainAxisSize: MainAxisSize.min, => لو عاوز يكون طوله او حجمه رأسيا نفس طول العناصر اللي داخله فقط

        verticalDirection: VerticalDirection.up, => طريقة رص العناصر اول واحد بيكون فوق واللي بعده تحته
        verticalDirection: VerticalDirection.down,  => طريقة رص العناصر اول واحد بيكون تحت واللي بعده فوقه

        children → List<Widget> => Widgetsاو مجموعةال list

        SingleChildScrollViewاحيانا مش بيشتغلوا كويس لما يتحطوا داخل ال
        mainAxisAlignment → MainAxisAlignment.  => Y للتحكم في طريقة رصف العناصر (داخل العمود) بشكل رأسي اي على المحور المحور الرئيسي محور
        mainAxisAlignment: MainAxisAlignment.end => يبدأ رصف او وضع العناصر داخل العامود من أسفله (نهايته رأسيا) ولكن بيفضلوا على نفس ترتيبهم يعني الاول في واللي بعده تحته
        mainAxisAlignment: MainAxisAlignment.start  => (يبدأ رصف او وضع العناصر داخل العامود من أعلاه (بدايته رأسيا
        mainAxisAlignment: MainAxisAlignment.center  => يبدأ رصف او وضع العناصر داخل العامود من منتصفه رأسيا ولكن بيفضلوا على نفس ترتيبهم يعني الاول في واللي بعده تحته
        mainAxisAlignment: MainAxisAlignment.spaceEvenly => وضع مسافات متساوية من بين العناصر ووضع نفس المسافة قبل اول عنصر وبعد اخر عنصر
        mainAxisAlignment: MainAxisAlignment.spaceBetween => وضع مسافات متساوية من بين العناصر ووضع نصف هذه المسافة قبل اول عنصر وبعد اخر عنصر
        mainAxisAlignment: MainAxisAlignment.spaceAround => وضع مسافات متساوية من بين العناصر وعدم وضع مسافة قبل اول عنصر وبعد اخر عنصر
        
        container عن طريق انك تحطه في columnلو عاوز يكون في نص الشاشة لازم تكبر الاول حجم ال
        crossAxisAlignment → CrossAxisAlignment. => ويستخدم في حالةأن العناصر لها احجام مختلفة بشكل عرضيX للتحكم في طريقة رصف العناصر (داخل العمود) بشكل أفقي اي على محور
        crossAxisAlignment: CrossAxisAlignment.start => (يبدأ رصف او وضع العناصر داخل العامود من شماله (بدايته أفقيا
        crossAxisAlignment: CrossAxisAlignment.end => (يبدأ رصف او وضع العناصر داخل العامود من يمينه (نهايته أفقيا
        crossAxisAlignment: CrossAxisAlignment.center => (يبدأ رصف او وضع العناصر داخل العامود من منتصفه (منتصف أفقيا
        crossAxisAlignment: CrossAxisAlignment.stretch => جعل العناصر التي داخل العامود تتمدد أفقيا لتملأ العامود كله
*/

/*
SizedBox(لعمل مسافات بين الـ widgets	
          Widgetsفقط علشان تسيب مسافة بين ال  widthاو ال Heightوتستخدم ال childداخل ال widget ممكن تستخدمها ومتحطش فيها اي
          margin او ممكن فقط تعمل
          child → Widget
          height → double
          width → double
*/

/*
SingleChildScrollView(لعمل Scroll	
                      Scroll حجمها كبير وانت عاوز تشوف كل العناصر اللي داخلها فهتحتاج تعمل Widget لو في
                        child → Widget => اللي حجمه كبير widget بتحط هنا ال
                        scrollDirection → Axis. => Scrollللتحكم في اتجاه ال
                        scrollDirection: Axis.vertical => بشكل رأسي Scroll لعمل
                        scrollDirection: Axis.horizontal => بشكل أفقي Scroll لعمل
                        padding → EdgeInsets. => ولكن ده هيأثر غالبا علةى المحتويات اللي داخله SingleChildScrollViewلو عاوز تسيب مسافة داخلبه داخل حدود ال
*/

/*
Row(تُستخدم لترتيب الـ widgets أفقياً	
    حجم الصف رأسيا يتحدد حسب حجم العناصر
    children → List<Widget> => Widgetsاو مجموعةال list

    SingleChildScrollViewاحيانا مش بيشتغلوا كويس لما يتحطوا داخل ال
    mainAxisAlignment → MainAxisAlignment.  =>X للتحكم في طريقة رصف العناصر (داخل الصف) بشكل أفقيا اي على المحور المحور الرئيسي محور
    mainAxisAlignment: MainAxisAlignment.center  => يبدأ رصف او وضع العناصر داخل الصف من منتصفه أفقيا
    mainAxisAlignment: MainAxisAlignment.end => (يبدأ رصف او وضع العناصر داخل الصف من يساره (نهايته أفقيا
    mainAxisAlignment: MainAxisAlignment.start  => (يبدأ رصف او وضع العناصر داخل الصف من يمينه (بدايته أفقيا
    mainAxisAlignment: MainAxisAlignment.spaceEvenly => وضع مسافات متساوية من بين العناصر ووضع نفس المسافة قبل اول عنصر وبعد اخر عنصر
    mainAxisAlignment: MainAxisAlignment.spaceBetween => وضع مسافات متساوية من بين العناصر ووضع نصف هذه المسافة قبل اول عنصر وبعد اخر عنصر
    mainAxisAlignment: MainAxisAlignment.spaceAround => وضع مسافات متساوية من بين العناصر وعدم وضع مسافة قبل اول عنصر وبعد اخر عنصر
    
    crossAxisAlignment → CrossAxisAlignment. => ويستخدم في حالةأن العناصر لها احجام مختلفة بشكل رأسي Y للتحكم في طريقة رصف العناصر (داخل الصف) بشكل رأسي اي على محور
    crossAxisAlignment: CrossAxisAlignment.start => (يبدأ رصف او وضع العناصر داخل الصف من أعلاه (بدايته رأسيا
    crossAxisAlignment: CrossAxisAlignment.end => (يبدأ رصف او وضع العناصر داخل الصف من أسفله (نهايته رأسيا
    crossAxisAlignment: CrossAxisAlignment.center => (يبدأ رصف او وضع العناصر داخل الصف من منتصفه (منتصف رأسيا
    crossAxisAlignment: CrossAxisAlignment.stretch => جعل العناصر التي داخل العامود تتمدد رأسيا لتملأ الصف كله
*/

/*
Expanded(لكى تتحكم فى العرض او الارتفاع	
          اللي جواها تاخد هذه المساحة سواء بالتساوي او كل واحد ياخد نسبة من المساحة Widgetsفيها بعض المساحات الفاضية وانت عاوز ال Widget لو عندك
          child → Widget
          flex → int => تاخد نسبة كام من المساحة الفارغة Widgetاللي داخل هذه ال widgetهنا بتقول ال

          هياخد جزء 1 Widgets 3فبالتالي احنا هنقسم المساحة الفارغة على 3 وكل واحد في ال flex = 1 وكل واحدة فيهم ليها Widgets لو عندك 3
*/

/*
MaterialApp(The main widget of flutter	
            الاساسي بتاع البرنامج (Widet) Classالكبيرة واللي بيكون ادخلها ال Widgetال

              debugShowCheckedModeBanner → bool => اللي بتكون في البرنامج من فوق Debug لو عاوز تخفي كلمة
              home → Widget =>الاساسي بتاع البرنامج (Widet) Classال
*/

/*
Padding( => Widget داخل هذه ال padding اللي معندهاش Widget ف بنحط المحتوي اللي جوه ال padding اللي اسمها properity معندهوش ال Widget لو في	
          child → Widget
          padding → EdgeInsets.
*/

/*
Center( => Parentال Widgetفي منتصف ال Widgetعلشان تخلي ال
child → Widget
*/

/*
Stack(used with Positioned( Parent Widget وتظبط أماكنهم داخل ال Widgets ستاك بيتقدر تحط فيه شويه
        children → List<Widget> =>  Positioned() وتغير اماكنهم براحتك ف لازم تحطهم داخل Widgetsعلشان تقدر تظبط ال
*/

/*
Positioned(=>   ...بُعد العنصر بمقدار عن ال... بمقدار 
            child → Widget
            left → double
            right → double
            top → double
            bottom → double
            width → double
            height → double
*/


/*
TextButton( لعمل زرار مفهوش اي تنسيقات
            onPressed: () {}, 
            child: Widget => ممكن نحط اي حاجة مش لازم نص 
*/


/*
ElevatedButton(  => لعمل زرار له شكل تلقائي ومرتفع شويه عن الخلفية	
                child → Widget => Text() بيكون Childفي العادة ال
                onPressed → (){}
                style → ButtonStyle( => لتظبيط التتنسيقات بتاعت الزرار

                example:

                ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple[500]),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                  ),
                  child: Text("click here", style: TextStyle(fontSize: 19),),
                ),
*/

/*
ButtonStyle( => لتظبيط التتنسيقات بتاعت الزرار
              backgroundColor: MaterialStateProperty.all(Colors.orange), => لتغيير لون الخلفية
              foregroundColor → MaterialStateProperty.all(Color), => اللي محطوطه داخل الزرار Child Widgetلتغيير لون ال
              padding: MaterialStateProperty.all(EdgeInsets.all(40)), => مسافة داخلية داخل حدود الزرار
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))), => لتغيير الشكل والكود ده تحديدا لجعل الحواف دائرية
*/

/*
Wrap(لتظبيط الـ widgets رأسياً او أفقياً	
      Column او Row الفرق بينها وبين ال 
      لما تتحط جنب بعض وميكونش في مكان زيادة ف الزيادة بتتحط تحتهم Widgetsانه ال 
      او 
      لما تتحط تحت بعض وميكونش في مكان زيادة ف الزيادة بتتحط جنبهم Widgetsانه ال 
      children → List<Widget> => اللي انت عاوز تحطهم مع بعض Widgetsشويه ال
      direction → Axis. => يتحطوا جنب بعض ولا تحت بعض Widgetsانت عاوز ال
      alignment → WrapAlignment. => Wrapرصف العناصر داخل ال
      alignment: WrapAlignment.center  => من منتصفه Wrapيبدأ رصف او وضع العناصر داخل ال
      alignment: WrapAlignment.end => (يبدأ رصف او وضع العناصر داخل العامود من نهايته (نهايته رأسيا او أفقيا
      alignment: WrapAlignment.start  =>  (من بدايته (بدايته رأسيا او أفقيا Wrapيبدأ رصف او وضع العناصر داخل ال
      alignment: WrapAlignment.spaceEvenly => وضع مسافات متساوية من بين العناصر ووضع نفس المسافة قبل اول عنصر وبعد اخر عنصر
      alignment: WrapAlignment.spaceBetween => وضع مسافات متساوية من بين العناصر ووضع نصف هذه المسافة قبل اول عنصر وبعد اخر عنصر
      alignment: WrapAlignment.spaceAround => وضع مسافات متساوية من بين العناصر وعدم وضع مسافة قبل اول عنصر وبعد اخر عنصر
      spacing → double => Widgetsالمسافة جنب ال
      runSpacing → double => Widgetsالمسافة بين صفوف ال
*/

/*
Image.asset(لإضافة صورة	
            Edit pubspec.yaml => assets    في الفايل ده ابحث عن اسيتس وضيف المسار بتاع الفولدر اللي هتحط فيه الصورة بدل ما تضيف كل صورة لوحدها
            "مسار واسم الصورة"
            height → double
            width → double
            fit → BoxFit.cover => استخدمها علشان اللابعاد بتاعتالصورة تظبط
*/

/*
            لتشغيل صوت	على البرنامج
            play audio ابحث عن pub.dev ومن موقع Packageاول حاجة أثبت ال
            اشوف انهي واحدة هي المناسبة ليا
            Edit pubspec.yaml => dependencies  باحدث اصدار dependencyضيف هنا ال            "
            audioplayers 5.1.0 مثال احنا اختارنا

            داخل اي زرار inPressed داخل Functionاضيف ال
            
*/

/*
ClipRRect ( علشان اخلي الحواف دائرية
            child: Image.asset(اللي فوق widgetال)
            borderRadius: BorderRadius.circular(13)
*/

/*
Image.network(لإضافة صورة من الانترنت	
              "اللينك"
              height → double
              width → double
              fit → BoxFit.cover
              loadingBuilder: (context, child, progress){
                return progress == null ? child : CircularProgressIndicator(); علشان يظهر دايرة بتلف عقبال ما الصورة تحمل
              },
*/

/*
CircleAvatar( علشان اخلي الصورة على شكل دائري
            radius → double => نص قطر الصورة
            backgroundImage → AssetImage( "assets/...")
            OR
            child: ClipOval( child: Image.asset( "مسار واسم الصورة")) علشان اخلي الصورة على شكل بيضاوي
            بس لازم علشان اخلي الصورة على شكل بيضاوي انها تكون مستطيلة واطراف الصورة مش مهمة علشان مش هتظهر
*/

/*
SvgPicture.asset(  icons واللي هو بيكون  في العادة امتداد الايقونات svg علشان اضيف صورة بامتداد	
                flutter_svg ابحث عن pub.dev ومن موقع Packageاول حاجة أثبت ال
                Edit pubspec.yaml => dependencies  باحدث اصدار dependencyضيف هنا ال
                import 'package:flutter_svg/flutter_svg.dart';
                "اسم ومسار الصورة"
                height:
                width:
                color:
                icons8.com  موقع لتحميل الصور
*/

/*
TextField(لعمل حقل إدخال	
          obscureText → bool => علشان اخفي الكلام اللي مكتوبداخل حقل الادخال واخليه زي الباسورد
          keyboardType → TextInputType.  => نوع الكيبورد لو مثلا عاوز الكيبورد اللي يظهر وانا بستخدم حقل الادخال يكون ارقام بس او للايميلات مثلا
          textInputAction → TextInputAction.done  => او غيره submit الزرار اللي ناحية اليمين في الكيبورد عاوزه يعمل ايه هي يدخل على حقل الادخال اللي بعده ولا يعمل
          maxLength → int ⭐
          decoration: InputDecoration( => TextFieldللتحكم في التنسيقات الخاصة بال
*/

/*
InputDecoration(to style the TextField(	=> TextFieldللتحكم في التنسيقات الخاصة بال
                hintText → String => علشان احط كلام داخل حقل الادخال ويختفي اول ما اكتب كلام داخله
                labelText → String => علشان احط كلام داخل حقل الادخال وويظهر فوقه اول ما اكتب كلام داخله
                labelStyle → TextStyle => labelTextللتحكم في التنسيقات الخاصة بال

                border: InputBorder.none => TextFieldعلشان اشيل الحواف اللي بتكون التلقائية اللي جايه مع ال
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(22),borderSide: BorderSide(color: Colors.grey),) => TextFieldللتحكم في الحواف بتاعت ال

                icon → Widget => من الجنب اليسار TextFieldايقونة خارج ال
                prefixIcon → Widget => من الجنب اليسار TextFieldايقونة داخل ال
                suffixIcon → Widget => من الجنب المين TextFieldايقونة داخل ال
*/

/*
GestureDetector( => يمكن الضغط عليها Widget لو عاوزين اي
                child → Widget
                onTap: ( ) { }
*/

/*
Divider(لعمل خط فاصل	
        color → Color
        thickness → double
*/

/* 
  البرنامج بتاعنا icon او ايقونة logo علشان اغير اللوجو
  بنحدد الصورة اللي احنا عاوزينها
  appico.co بنروح لموقع
  ios و andriod بنرفع الصورة ونحدد على ال
  ملفات الاندرويد نحددها ونحطها مكان الملفات اللي موجودة في البرنامج في فولدر
  android\app\src\main\res
  ملفات الايفون نحددها ونحطها مكان الملفات اللي موجودة في البرنامج في فولدر
  ios\Runner\Assets.xcassets
*/

























//أمثلة وتطبيق على الشرح
//My ID Card Project
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyIdCard());
// }

// class MyIdCard extends StatelessWidget {
//   const MyIdCard({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyWidget(),
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey[800],
//           centerTitle: true,
//           title: Text(
//             "My ID Card",
//             style: TextStyle(
//               color: Colors.grey[300],
//             ),
//           )),
//           body:

//           Container(
//             color: Colors.grey[850],
//             padding: EdgeInsets.only(top: 40),
//             width: double.infinity,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 CircleAvatar(
//                   radius: 55,
//                   backgroundImage: AssetImage("assets/imgs/bll.jpg"),
//                 ),
//                 SizedBox(height: 70,),
//                 Container(
//                   padding: EdgeInsets.only(left: 27),
//                   height: 180,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,

//                     children: [
//                       Text("Name",style: TextStyle(color: Colors.grey[500],fontSize: 20),),
//                       Text("Bilal Abd Elnaseer Abd Elfattah",style: TextStyle(color: Colors.amberAccent,fontSize: 24,fontFamily: "RobotoCondensed"),),
//                       SizedBox( height: 10, ),
//                       Text("Level",style: TextStyle(color: Colors.grey[500],fontSize: 20),),
//                       Text("Senior",style: TextStyle(color: Colors.amberAccent,fontSize: 24,fontFamily: "RobotoCondensed"),),
//                       SizedBox( height: 10, ),
//                       Row(
//                         children: [
//                           Icon(
//                             color: Colors.grey[500],
//                             Icons.email
//                           ),
//                           SizedBox( width: 10, ),
//                           Text("Belal4278@gmail.com",style: TextStyle(color: Colors.grey,fontSize: 24,fontFamily: "RobotoCondensed"),),
//                         ],
//                       )
//                     ],
//                   ),
//                 )

//               ],
//             ),
//           ),
//     );
//   }
// }

//Login Screen

//ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// void main() {
//   runApp(const LoginScreen());
// }

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//     debugShowCheckedModeBanner: false,
//       home: MyWidget(),
//     );
//   }
// }
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:
//         AppBar(title: Text("Login"),centerTitle: true,backgroundColor: Colors.purple),
//       body:
//         Container(
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 4),
//                 decoration:
//                   BoxDecoration(
//                     color: Colors.purple[200],
//                     borderRadius: BorderRadius.circular(30)
//                   ),
//                 width: 266,
//                 child:
//                   TextField(
//                     keyboardType: TextInputType.emailAddress,
//                     textInputAction: TextInputAction.next,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: "Email :",
//                       prefixIcon: Icon(Icons.person,color: Colors.purple[800],)
//                     ),
//                   ),
//               ),
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 4),
//                 decoration:
//                   BoxDecoration(
//                     color: Colors.purple[200],
//                     borderRadius: BorderRadius.circular(30)
//                   ),
//                 width: 266,
//                 margin: EdgeInsets.symmetric(vertical: 22),
//                 child:
//                   TextField(
//                   textInputAction: TextInputAction.done,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: "Password :",
//                       prefixIcon: Icon(Icons.lock,color: Colors.purple[800],),
//                       suffixIcon: Icon(Icons.visibility,color: Colors.purple[800],),
//                     ),
//                   ),
//               ),
//               Container(
//                 width: 244,
//                 child: ElevatedButton(
//                   onPressed: (){},
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(Colors.purple[500]),
//                     padding: MaterialStateProperty.all(EdgeInsets.all(12)),
//                     shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
//                   ),
//                   child: Text("Login", style: TextStyle(fontSize: 19),),
//                 ),
//               )
//             ],
//           ),
//         ),
//     );
//   }
// }
