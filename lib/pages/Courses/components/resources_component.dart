import 'package:Apollo/pages/Courses/models/resource.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourcesComponent extends StatelessWidget {
  List<Resource> resources;
  launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  ResourcesComponent({@required this.resources});
  @override
  Widget build(BuildContext context) {
    return resources != null && resources.length > 0
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  "المصادر",
                  style: TextStyle(fontSize: 20, color: AppColors.darkBlue),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SizedBox(
                  width: 1,
                  height: 1,
                  child: Container(
                      color: AppColors.neutrals[800].withOpacity(0.4)),
                ),
              ),
              ListView.separated(
                separatorBuilder: (context, index) {
                  return Container(
                    height: 1,
                    color: AppColors.neutrals[800].withOpacity(0.4),
                    width: double.infinity,
                  );
                },
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  if (resources[index].itemType == "link")
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            resources[index].link.title,
                          ),
                          Icon(Icons.open_in_browser_rounded)
                        ],
                      ),
                      onTap: () {
                        launchURL(resources[index].link.url);
                      },
                    );
                  return Container();
                },
                itemCount: resources.length,
              ),
            ],
          )
        : SizedBox();
  }
}
