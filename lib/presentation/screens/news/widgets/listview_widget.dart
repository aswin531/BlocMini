
// import 'package:flutter/material.dart';

// class NewsList extends StatelessWidget {
//   final List<News> newsList;

//   const NewsList({Key? key, required this.newsList}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       scrollDirection: Axis.horizontal,
//       itemCount: newsList.length,
//       itemBuilder: (context, index) {
//         return NewsItem(news: newsList[index]);
//       },
//       separatorBuilder: (context, index) {
//         return const SizedBox(width: 10); // Adjust spacing between items
//       },
//     );
//   }
// }

// class NewsItem extends StatelessWidget {
//   final News news;

//   const NewsItem({Key? key, required this.news}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           news.urlToImage != null
//               ? Image.network(
//                   news.urlToImage!,
//                   height: 150,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 )
//               : FadeInImage.assetNetwork(
//                   placeholder: 'assets/placeholder_image.png',
//                   image: 'assets/placeholder_image.png',
//                   height: 150,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//           const SizedBox(height: 10),
//           Text(
//             "${news.title}",
//             style: const TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             "${news.description}",
//             style: const TextStyle(fontSize: 14),
//           ),
//         ],
//       ),
//     );
//   }
// }
// class News {
//   final String? urlToImage;
//   final String title;
//   final String description;

//   News({this.urlToImage, required this.title, required this.description});
// }
