import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:veggie_go_malaysia/constants/colors.dart';
import 'package:veggie_go_malaysia/ui/views/home/home_viewmodel.dart';

class LocationSelector extends ViewModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return SizedBox(
      height: 40,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        color: ThemeColors.searchBar,
        splashColor: Colors.white,
        onPressed: () => model.navigateToSearch(),
        child: Align(
          alignment: Alignment.centerLeft,
          child: RichText(
            text: TextSpan(
              children: <InlineSpan>[
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
                WidgetSpan(
                  child: SizedBox(width: 7),
                ),
                TextSpan(
                    text: 'Dishes, food types or places',
                    style: TextStyle(
                        fontFamily: 'Lato', color: Colors.grey, fontSize: 13)),
              ],
            ),
          ),
        ),
        textColor: Colors.black45,
      ),
    );
  }
}
