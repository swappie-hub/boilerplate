import 'package:boilerplate/utils/color.dart';
import 'package:boilerplate/utils/demins.dart';
import 'package:boilerplate/utils/themes.dart';
import 'package:boilerplate/ui/searchByName/search_by_name_viewModel.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:stacked/stacked.dart';

class SearchByNameView extends StatefulWidget {
  @override
  _SearchByNameViewState createState() => _SearchByNameViewState();
}

class _SearchByNameViewState extends State<SearchByNameView> {
  PanelController _slidingPanelController = new PanelController();
  TextEditingController _controller = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String query;
  @override
  void initState() {
    query = "";
    // _slidingPanelController.
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchByNameViewModel>.reactive(
      viewModelBuilder: () => SearchByNameViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          elevation: 0,
          title: Text(
            "Search By Name",
            style: TextStyle(
                color: kWhite,
                fontSize: appTheme.textTheme.bodyText1.fontSize,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                alignment: Alignment.center,
                height: 76,
                width: 76,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFFAAE0B),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Bookmarks",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: appTheme.textTheme.button.color),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SlidingUpPanel(
          body: Container(
            color: kPrimaryColor,
          ),
          controller: _slidingPanelController,
          minHeight: MediaQuery.of(context).size.height - 80,
          maxHeight: MediaQuery.of(context).size.height,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              blurRadius: 0.0,
              color: Color.fromRGBO(0, 0, 0, 0.0),
            )
          ],
          panel: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(kAppPadding),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        query = value;
                      });
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFECECEC),
                        hintText: "Search for your Batches",
                        hintStyle:
                            GoogleFonts.poppins(color: Color(0xFF9188A4)),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xFF9188A4),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                                Radius.circular(kAppCornerRadius)))),
                  ),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: model.getCountriesByNameResponse.length,
                    itemBuilder: (BuildContext context, int index) {
                      //   if ((model.getCountriesByNameResponse[index].name??"")
                      //       .toUpperCase()
                      //       .contains(query.toUpperCase()))
                      //     return classTile(
                      //       model: model.getCountriesByNameResponse[index].name,
                      //     );
                      //   else
                      //     return Container();
                      // },
                      for (int i = 0;
                          i < model.getCountriesByNameResponse.length;
                          i++) {
                        if ((model.getCountriesByNameResponse[index].name ?? "")
                            .toUpperCase()
                            .contains(query.toUpperCase()))
                          return classTile(
                            model: model.getCountriesByNameResponse[index].name,
                          );
                        else
                          return Container();
                      }
                      ;
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget classTile({model

      // bool check
      }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () {},
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kAppCornerRadius),
          ),
          elevation: 4,
          color: Color(0xFFF2EBEB),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              subtitle: Text(model ?? "",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                      color: kBlack)),
              title: Text(model ?? "",
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: kBlack)),
            ),
          ),
        ),
      ),
    );
  }
}
