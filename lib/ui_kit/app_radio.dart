// import 'package:everlook_mobile/source/imports.dart';
//
// class AppRadio extends StatelessWidget {
//   const AppRadio({
//     Key? key,
//     required this.isActive,
//     required this.onTap,
//     this.size = 24,
//     this.color,
//   }) : super(key: key);
//
//   final bool isActive;
//   final Function() onTap;
//   final double size;
//   final Color? color;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         height: size,
//         width: size,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(size / 2),
//           color: color,
//           gradient: isActive
//               ? color != null
//                   ? null
//                   : LinearGradient(
//                       begin: Alignment.bottomLeft,
//                       end: Alignment.topRight,
//                       colors: gradientColors,
//                     )
//               : null,
//           border: !isActive
//               ? Border.all(
//                   color: AppColors.additional2,
//                 )
//               : null,
//         ),
//         child: isActive
//             ? Center(
//                 child: SvgPicture.asset(
//                   Assets.icons.ok,
//                   colorFilter: ColorFilter.mode(
//                     color != null ? AppColors.background : Colors.white,
//                     BlendMode.srcIn,
//                   ),
//                   width: size / 1.7,
//                 ),
//               )
//             : const SizedBox(),
//       ),
//     );
//   }
// }
