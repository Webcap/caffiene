import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:caffiene/models/tv.dart';
import 'package:caffiene/screens/tv_screens/tv_detail_page.dart';
import 'package:caffiene/utils/config.dart';
import 'package:caffiene/widgets/shimmer_widget.dart';

class TVListView extends StatelessWidget {
  const TVListView({
    Key? key,
    required ScrollController scrollController,
    required this.tvList,
    required this.isDark,
    required this.imageQuality,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;
  final List<TV>? tvList;
  final bool isDark;
  final String imageQuality;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        itemCount: tvList!.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return TVDetailPage(
                  tvSeries: tvList![index],
                  heroId: '${tvList![index].id}',
                );
              }));
            },
            child: Container(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 0.0,
                  bottom: 3.0,
                  left: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: SizedBox(
                            width: 85,
                            height: 130,
                            child: Hero(
                              tag: '${tvList![index].id}',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: tvList![index].posterPath == null
                                    ? Image.asset(
                                        'assets/images/na_logo.png',
                                        fit: BoxFit.cover,
                                      )
                                    : CachedNetworkImage(
                                        fadeOutDuration:
                                            const Duration(milliseconds: 300),
                                        fadeOutCurve: Curves.easeOut,
                                        fadeInDuration:
                                            const Duration(milliseconds: 700),
                                        fadeInCurve: Curves.easeIn,
                                        imageUrl: TMDB_BASE_IMAGE_URL +
                                            imageQuality +
                                            tvList![index].posterPath!,
                                        imageBuilder:
                                            (context, imageProvider) =>
                                                Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        placeholder: (context, url) =>
                                            mainPageVerticalScrollImageShimmer1(
                                                isDark),
                                        errorWidget: (context, url, error) =>
                                            Image.asset(
                                          'assets/images/na_logo.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tvList![index].name!,
                                style: const TextStyle(
                                    fontFamily: 'PoppinsSB',
                                    fontSize: 15,
                                    overflow: TextOverflow.ellipsis),
                              ),
                              Row(
                                children: <Widget>[
                                  const Icon(
                                    Icons.star,
                                  ),
                                  Text(
                                    tvList![index]
                                        .voteAverage!
                                        .toStringAsFixed(1),
                                    style:
                                        const TextStyle(fontFamily: 'Poppins'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: !isDark ? Colors.black54 : Colors.white54,
                      thickness: 1,
                      endIndent: 20,
                      indent: 10,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
