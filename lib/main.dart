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

import 'package:flutter/material.dart';
void main() {
  runApp(const LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
        AppBar(title: Text("Login"),centerTitle: true,backgroundColor: Colors.purple),
      body: 
        Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4),
                decoration: 
                  BoxDecoration(
                    color: Colors.purple[200],
                    borderRadius: BorderRadius.circular(30)
                  ),
                width: 266,
                child: 
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email :",
                      prefixIcon: Icon(Icons.person,color: Colors.purple[800],)
                    ),
                  ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4),
                decoration: 
                  BoxDecoration(
                    color: Colors.purple[200],
                    borderRadius: BorderRadius.circular(30)
                  ),
                width: 266,
                margin: EdgeInsets.symmetric(vertical: 22),
                child: 
                  TextField(
                  textInputAction: TextInputAction.done,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password :",
                      prefixIcon: Icon(Icons.lock,color: Colors.purple[800],),
                      suffixIcon: Icon(Icons.visibility,color: Colors.purple[800],),
                    ),
                  ),
              ),
              Container(
                width: 244,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple[500]),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                  ),
                  child: Text("Login", style: TextStyle(fontSize: 19),),
                ),
              )
            ],
          ),
        ),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // الاساسي بتاع البرنامج (Widet) Classالكبيرة واللي بيكون ادخلها ال Widgetال
//     return const MaterialApp(
//       home: FavebookApp(), //الاساسي بتاع البرنامج (Widet) Classال
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
// //ثوابت بالشكل ده MyAppوال mainال

// //بتاعنا Appبتعبر عن اسم ال classهنا اسم ال
// class FavebookApp extends StatelessWidget {
//   const FavebookApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     //camel case بتبدأ بحرف كابيتل وبعدها widget() اي
//     //List of Widgets واحدة الا بعضهم يحتووا على Wedgit وفي العادة تحتوى على

//     //MaterialApp الكبيرة واللي اسمها Widgetالاساسية اللي بتحتوي على كل حاجة اللي بتكون داخل ال Widgetال
//     return Scaffold(
//         //properities ليها Widget اي
//         //Camle Case وبعدها small بتبدأ بحرف properity اي

//         appBar: AppBar(
//           // leading | title | actions[widget,widget,....]

//           //واحدة فقط Widget ويحتوي على AppBarالجزء اليسار من ال
//           leading:

//               //IconButton() لكن اقدر لما اضغط عليها يحصل حاجة معينة icon لو عاوز احط
//               IconButton(
//             //اللي المفروض يحصل لما ادوس عليها actionال
//             onPressed: () {},

//             //IconButtonاللي هحطها داخل ال iconال
//             icon: Icon(
//               //Icons.menu => iconعلشان اختار شكل ال
//               Icons.menu,
//               color: Colors.blue,
//             ),
//           ),

//           //اللي بنحط فيها كلام widgetال
//           title: Text(
//             //contentال
//             'facebook',
//             //contentبتاع ال styleال
//             style: TextStyle(
//               color: Colors.blue,

//               //bold علشان نخليه
//               fontWeight: FontWeight.bold,
//             ),
//           ),

//           //يكون في المنتصف titleال
//           centerTitle: true,

//           //AppBarالجزء اليمين من ال
//           //[widget,widget,....] list of widgets ويحتوي على
//           actions: [
//             //1
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.search),
//               color: Colors.blue,
//             ),

//             //2
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.message),
//               color: Colors.blue,
//             ),
//           ],

//           //Colors.blue[وهنا بنكتب رقم من 100:900 بيعبر عن مدى غمقان اللون] بيتكتب بالشكل ده colorال
//           backgroundColor: Colors.white,

//           //معناها الصعود وعلشان نعمل ظل تحت حاجة لازم نصعد elevation
//           elevation: 10,
//         ),

//         //علشان اعمل زر عائم
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           child: IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.add),
//           ),
//         ),
//         body: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Container(
//                 alignment: Alignment.center,
//                 height: 200,
//                 width: 100,
//                 // margin: EdgeInsets.all(40),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black),
//                   shape: BoxShape.rectangle,
//                 ),
//                 child: Text("Flutter1"),
//                 // transform: Matrix4.rotationZ(1),
//               ),
//               Container(
//                 alignment: Alignment.center,
//                 height: 200,
//                 width: 200,
//                 // margin: EdgeInsets.all(40),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black),
//                   shape: BoxShape.rectangle,
//                 ),
//                 child: Text("Flutter2"),
//                 // transform: Matrix4.rotationZ(1),
//               ),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     Container(
//                       alignment: Alignment.center,
//                       height: 200,
//                       width: 200,
//                       // margin: EdgeInsets.all(40),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.black),
//                         shape: BoxShape.rectangle,
//                       ),
//                       child: Text("Flutter2"),
//                       // transform: Matrix4.rotationZ(1),
//                     ),
//                     Container(
//                       alignment: Alignment.center,
//                       height: 200,
//                       width: 200,
//                       // margin: EdgeInsets.all(40),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.black),
//                         shape: BoxShape.rectangle,
//                       ),
//                       child: Text("Flutter2"),
//                       // transform: Matrix4.rotationZ(1),
//                     ),
//                     Container(
//                       alignment: Alignment.center,
//                       height: 200,
//                       width: 200,
//                       // margin: EdgeInsets.all(40),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.black),
//                         shape: BoxShape.rectangle,
//                       ),
//                       child: Text("Flutter2"),
//                       // transform: Matrix4.rotationZ(1),
//                     ),
//                     Container(
//                       alignment: Alignment.center,
//                       height: 200,
//                       width: 200,
//                       // margin: EdgeInsets.all(40),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.black),
//                         shape: BoxShape.rectangle,
//                       ),
//                       child: Text("Flutter2"),
//                       // transform: Matrix4.rotationZ(1),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 alignment: Alignment.center,
//                 height: 200,
//                 width: 200,
//                 // margin: EdgeInsets.all(40),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black),
//                   shape: BoxShape.rectangle,
//                 ),
//                 child: Text("Flutter2"),
//                 // transform: Matrix4.rotationZ(1),
//               ),
//               Container(
//                 alignment: Alignment.center,
//                 height: 200,
//                 width: 200,
//                 // margin: EdgeInsets.all(40),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black),
//                   shape: BoxShape.rectangle,
//                 ),
//                 child: Text("Flutter2"),
//                 // transform: Matrix4.rotationZ(1),
//               ),
//             ],
//           ),
//         ));
//   }
// }








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
  اللي عندنا لان اغلب الحاجات اللي انت هتعملها في اي  مشروع هيكونوا تحت بعض ف انت هتحطهم في هذا العامود Widgetsمن اهم ال
Column(تُستخدم لترتيب الـ widgets رأسياً	
        حجم العامود افقيا يتحدد حسب حجم العناصر
        children → List<Widget> => Widgetsاو مجموعةال list

        SingleChildScrollViewاحيانا مش بيشتغلوا كويس لما يتحطوا داخل ال
        mainAxisAlignment → MainAxisAlignment.  => Y للتحكم في طريقة رصف العناصر (داخل العمود) بشكل رأسي اي على المحور المحور الرئيسي محور
        mainAxisAlignment: MainAxisAlignment.center  => يبدأ رصف او وضع العناصر داخل العامود من منتصفه رأسيا
        mainAxisAlignment: MainAxisAlignment.end => (يبدأ رصف او وضع العناصر داخل العامود من أسفله (نهايته رأسيا
        mainAxisAlignment: MainAxisAlignment.start  => (يبدأ رصف او وضع العناصر داخل العامود من أعلاه (بدايته رأسيا
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
Padding(لعمل مسافة خارج الـ widget	
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
ElevatedButton(لإنشاء button	
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
                install flutter_svg  من الموقع هتعرف انهي احدث اصدار
                Edit pubspec.yaml => dependencies  باحدث اصدار dependencyضيف هنا ال
                
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






