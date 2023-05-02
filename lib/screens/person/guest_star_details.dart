import 'package:login/provider/settings_provider.dart';
import 'package:login/screens/movie_screens/widgets/sabth.dart';
import 'package:login/screens/person/widgets/guest_star_detail_about.dart';
import 'package:login/screens/person/widgets/guest_star_detail_quick.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '/models/credits.dart';


class GuestStarDetailPage extends StatefulWidget {
  final TVEpisodeGuestStars? cast;
  final String heroId;

  const GuestStarDetailPage({
    Key? key,
    this.cast,
    required this.heroId,
  }) : super(key: key);
  @override
  GuestStarDetailPageState createState() => GuestStarDetailPageState();
}

class GuestStarDetailPageState extends State<GuestStarDetailPage>
    with
        SingleTickerProviderStateMixin,
        AutomaticKeepAliveClientMixin<GuestStarDetailPage> {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    // mixpanelUpload(context);
  }

  // void mixpanelUpload(BuildContext context) {
  //   final mixpanel =
  //       Provider.of<SettingsProvider>(context, listen: false).mixpanel;
  //   mixpanel.track('Most viewed person pages', properties: {
  //     'Person name': '${widget.cast!.name}',
  //     'Person id': '${widget.cast!.id}'
  //   });
  // }

  int selectedIndex = 0;
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final isDark = Provider.of<SettingsProvider>(context).darktheme;
    final imageQuality = Provider.of<SettingsProvider>(context).imageQuality;
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 1,
            shadowColor: isDark ? Colors.white : Colors.black,
            forceElevated: true,
            backgroundColor: isDark ? Colors.black : Colors.white,
            leading: SABTN(
              onBack: () {
                Navigator.pop(context);
              },
            ),
            title: SABT(
                child: Text(
              widget.cast!.name!,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            )),
            expandedHeight: 210,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Column(
                children: [
                  GuestStarDetailQuickInfo(
                    widget: widget,
                    imageQuality: imageQuality,
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                GuestStarDetailAbout(
                    cast: widget.cast,
                    selectedIndex: selectedIndex,
                    tabController: tabController)
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
