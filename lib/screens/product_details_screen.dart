// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:homework_2/models/product_model.dart';

// class ProductDetailsScreen extends StatelessWidget {

//   ProductModel productModel;


//   ProductDetailsScreen(this.productModel);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   width: double.infinity,
//                   height: 300.h,
//                   child: Image.network(productModel.image_url,fit: BoxFit.cover,),
//                 ),
//                 Positioned(
//                   top: 40.h,
//                   child: IconButton(
//                     icon: CircleAvatar(
//                       backgroundColor: Colors.black.withOpacity(0.4),
//                         radius: 25.r,
//                         child: Icon(Icons.arrow_back,color: Colors.white,size: 30.sp,)),
//                     onPressed: (){
//                       Navigator.pop(context);
//                     },
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 10.h,),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 15.w),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Expanded(
//                         flex: 2,
//                         child: Text(
//                           "${productModel.title}",
//                           style: TextStyle(
//                               fontSize: 30.sp,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 1,
//                         child: CircleAvatar(
//                             backgroundColor: Colors.orange,
//                             radius: 35.r,
//                             child: Icon(Icons.play_arrow,color: Colors.white,size: 30.sp,)),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 30.h,),
//                   Container(
//                     width: 350.w,
//                     child: Text(productModel.description,
//                         style: TextStyle(fontSize: 15,color: Colors.grey,wordSpacing: 2),),
//                   ),
//                   SizedBox(height: 30.h,),
//                   ListTile(
//                     contentPadding: EdgeInsets.zero,
//                     leading: CircleAvatar(
//                       radius: 30.r,
//                       backgroundImage: NetworkImage(productModel.user.image_url),
//                     ),
//                     title: Text(productModel.user.name),
//                     subtitle: Text("${productModel.user.followers} Followers"),
//                   ),
//                   SizedBox(height: 50.h,),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: productModel.tags.map((e) {
//                       return Container(
//                         margin: EdgeInsets.only(right: 20.w),
//                         child: Column(
//                           children: [
//                             CircleAvatar(
//                               radius: 26.r,
//                               backgroundColor: Colors.black12,
//                               child: CircleAvatar(
//                                 radius: 25.r,
//                                 backgroundColor: Colors.white,
//                                 child: Image.asset(
//                                   e.image_url,
//                                   height: 20.h,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10.h,
//                             ),
//                             Text(
//                               "${e.name}",
//                               style: TextStyle(color: Colors.black87, fontSize: 12.sp),
//                             ),
//                           ],
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                   SizedBox(height: 20.h,),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

