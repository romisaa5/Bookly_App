import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomBoxAction extends StatelessWidget {
  const CustomBoxAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButton(
          onPressed: () async {
            Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            } else {
              print("لا يمكن فتح الرابط");
            }
          },
          text: r'Free Preview',
          backgroundcolor: Colors.white,
          textcolor: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
        )),
        Expanded(
            child: CustomButton(
            onPressed: () async {
            Uri uri = Uri.parse(bookModel.accessInfo?.webReaderLink??'');
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            } else {
              print("لا يمكن فتح الرابط");
            }
          },
          text: r'Google Play',
          backgroundcolor: Color(0xffEF8262),
          textcolor: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
        ))
      ],
    );
  }
}
