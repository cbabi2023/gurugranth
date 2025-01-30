import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurugranth/constants/constants.dart';
import 'package:gurugranth/database/krithi_database.dart';
import 'package:gurugranth/extensions/font_extensions/font_extensions.dart';
import 'package:gurugranth/view/krithi_page/krithi_page.dart';

class KrithiCategoryPage extends StatelessWidget {
  const KrithiCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            HapticFeedback.heavyImpact();
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: false,
        shadowColor: Colors.grey,
        backgroundColor: Colors.blue,
        surfaceTintColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: Text('ഗുരുദേവ കൃതികൾ',
            style: context.anekMalayalamSemiBold20
                .copyWith(fontSize: 20.sp, color: Colors.white)),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10.r),
        child: ListView.separated(
            addAutomaticKeepAlives: true,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    HapticFeedback.selectionClick();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => KrithiPage(indexCount: index),
                        ));
                  },
                  child: KrithikalContainer(
                    index: index,
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10.h,
                ),
            itemCount: KrithiDatabase.krithiDatabase.length),
      ),
    );
  }
}

class KrithikalContainer extends StatelessWidget {
  final int index;
  const KrithikalContainer({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.r),
      child: Container(
        height: 70.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 10.r),
        decoration: BoxDecoration(
          color: pureWhite,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25.r,
                    backgroundImage: AssetImage(
                      KrithiDatabase.krithiDatabase[index]['image'],
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    KrithiDatabase.krithiDatabase[index]['title'].length > 16
                        ? KrithiDatabase.krithiDatabase[index]['title']
                                .substring(0, 15) +
                            '...'
                        : KrithiDatabase.krithiDatabase[index]['title'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.anekMalayalamRegular16
                        .copyWith(fontSize: 16.sp),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 18.sp),
          ],
        ),
      ),
    );
  }
}
