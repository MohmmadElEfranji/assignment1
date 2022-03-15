import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('عاصمة فلسطين'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/jerusalem.jpg',
              fit: BoxFit.cover,
              height: size.height * .3,
              width: size.width,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'مدينة القدس',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.black45),
            ),
            const SizedBox(
              height: 10,
            ),
            const BoxTextStyle(
              textKey: 'الإسم',
              textValue: 'القدس',
            ),
            const SizedBox(
              height: 10,
            ),
            const BoxTextStyle(
              textKey: 'المساحة',
              textValue: '١٢٥ كم',
            ),
            const SizedBox(
              height: 10,
            ),
            const BoxTextStyle(
              textKey: 'السكان',
              textValue: '٣٥٨٠٠٠ نسمة',
            ),
            const SizedBox(
              height: 10,
            ),
            const BoxTextStyle(
              textKey: 'الدولة',
              textValue: 'فلسطين',
            ),
            const SizedBox(
              height: 10,
            ),
            const BoxTextStyle(
              textKey: 'اسم الطالب',
              textValue: 'عمر أحمد علي',
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class BoxTextStyle extends StatelessWidget {
  final String? textKey, textValue;

  const BoxTextStyle({
    Key? key,
    this.textKey,
    this.textValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * .07,
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * .6,
            height: size.height * .1,
            child: Center(
              child: Text(
                textValue!,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.black45,
                    ),
              ),
            ),
            margin: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.black26),
            ),
          ),
          Container(
            width: size.width * .29,
            height: size.height * .5,
            child: Center(
              child: Text(
                textKey!,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.black45,
                    ),
              ),
            ),
            margin: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.black26),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.black26),
      ),
    );
  }
}
