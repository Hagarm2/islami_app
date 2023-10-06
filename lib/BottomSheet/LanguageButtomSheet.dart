import 'package:flutter/material.dart';
import 'package:islami_app/providers/myprovider.dart';
import 'package:islami_app/themdata.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageButtonSheet extends StatelessWidget {
  const LanguageButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                provider.changelanguage('en');
              },
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.english,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: provider.languagecode == 'en'
                              ? mythemdata.primarycolor
                              : Colors.black,
                        ),
                  ),
                  Spacer(),
                  provider.languagecode == 'en'
                      ? Icon(
                          Icons.done,
                          color: provider.languagecode == 'en'
                              ? mythemdata.primarycolor
                              : Colors.black,
                          size: 35,
                        )
                      : SizedBox.shrink()
                ],
              ),
            ),
            InkWell(
              onTap: () {
                provider.changelanguage('ar');
              },
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.languagecode == 'en'
                            ? Colors.black
                            : mythemdata.primarycolor),
                  ),
                  Spacer(),
                  provider.languagecode == 'en'
                      ? SizedBox.shrink()
                      : Icon(
                          Icons.done,
                          size: 35,
                          color: provider.languagecode == 'en'
                              ? Colors.black
                              : mythemdata.primarycolor,
                        )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
