import 'package:flutter/material.dart';
import 'package:caffiene/api/tv_api.dart';
import 'package:caffiene/models/tv.dart';
import 'package:caffiene/provider/settings_provider.dart';
import 'package:caffiene/screens/tv_screens/widgets/tv_grid_view.dart';
import 'package:caffiene/screens/tv_screens/widgets/tv_list_view.dart';
import 'package:caffiene/utils/config.dart';
import 'package:caffiene/widgets/shimmer_widget.dart';
import 'package:provider/provider.dart';

class DiscoverTVResult extends StatefulWidget {
  const DiscoverTVResult({required this.api, required this.page, Key? key})
      : super(key: key);
  final String api;
  final int page;

  @override
  State<DiscoverTVResult> createState() => _DiscoverTVResultState();
}

class _DiscoverTVResultState extends State<DiscoverTVResult> {
  List<TV>? tvList;
  final _scrollController = ScrollController();
  int pageNum = 2;
  bool isLoading = false;

  void getMoreData() async {
    _scrollController.addListener(() async {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        setState(() {
          isLoading = true;
        });

        tvApi().fetchTV('${widget.api}&page=$pageNum').then((value) {
          if (mounted) {
            setState(() {
              tvList!.addAll(value);
              isLoading = false;
              pageNum++;
            });
          }
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    tvApi().fetchTV('${widget.api}&page=${widget.page}}').then((value) {
      if (mounted) {
        setState(() {
          tvList = value;
        });
      }
    });
    getMoreData();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Provider.of<SettingsProvider>(context).darktheme;
    final imageQuality = Provider.of<SettingsProvider>(context).imageQuality;
    final viewType = Provider.of<SettingsProvider>(context).defaultView;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Discover TV series',
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
            child: tvList == null && viewType == 'grid'
                ? moviesAndTVShowGridShimmer(isDark)
                : tvList == null && viewType == 'list'
                    ? Container(
                        child: mainPageVerticalScrollShimmer1(
                            isDark: isDark,
                            isLoading: isLoading,
                            scrollController: _scrollController))
                    : tvList!.isEmpty
                        ? Container(
                            padding: const EdgeInsets.all(8),
                            child: const Center(
                              child: Text(
                                'Oops! TV series for the parameters you specified doesn\'t exist :(',
                                style: kTextHeaderStyle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        : Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: viewType == 'grid'
                                            ? TVGridView(
                                                tvList: tvList,
                                                imageQuality: imageQuality,
                                                isDark: isDark,
                                                scrollController:
                                                    _scrollController,
                                              )
                                            : TVListView(
                                                scrollController:
                                                    _scrollController,
                                                tvList: tvList,
                                                isDark: isDark,
                                                imageQuality: imageQuality),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Visibility(
                                  visible: isLoading,
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                        child: LinearProgressIndicator()),
                                  )),
                            ],
                          )));
  }
}
