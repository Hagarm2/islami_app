import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/BottomSheet/LanguageButtomSheet.dart';
import 'package:islami_app/providers/myprovider.dart';
import 'package:islami_app/themdata.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Language"),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: mythemdata.primarycolor)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      showLanguageBottomSheet();
                    },
                    child: Text(provider.languagecode == 'en'
                        ? AppLocalizations.of(context)!.english
                        : AppLocalizations.of(context)!.arabic)),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Theme"),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: mythemdata.primarycolor)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      showThemingBottomSheet();
                    },
                    child: Text("Light")),
              )),
        )
      ],
    );
  }

  showLanguageBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            borderSide: BorderSide(color: Colors.transparent)),
        builder: (context) {
          return LanguageButtonSheet();
        });
  }

  showThemingBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          borderSide: BorderSide(color: Colors.transparent)),
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * .7,
      ),
    );
  }
}
