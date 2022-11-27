import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:login/api/movies_api.dart';
import 'package:login/models/movie_models.dart';
import 'package:http/http.dart' as http;
import 'package:login/provider/imagequality_provider.dart';
import 'package:login/utils/config.dart';
import 'package:login/widgets/shimmer_widget.dart';
import 'package:provider/provider.dart';

class ParticularStreamingServiceMovies extends StatefulWidget {
  final String api;
  final int providerID;
  const ParticularStreamingServiceMovies({
    Key? key,
    required this.api,
    required this.providerID,
  }) : super(key: key);
  @override
  ParticularStreamingServiceMoviesState createState() =>
      ParticularStreamingServiceMoviesState();
}

class ParticularStreamingServiceMoviesState
    extends State<ParticularStreamingServiceMovies> {
  List<Movie>? moviesList;
  final _scrollController = ScrollController();
  int pageNum = 2;
  bool isLoading = false;
  bool requestFailed = false;

  Future<String> getMoreData() async {
    _scrollController.addListener(() async {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        setState(() {
          isLoading = true;
        });

        var response = await http.get(Uri.parse('$TMDB_API_BASE_URL'
            '/discover/movie?api_key='
            '$TMDB_API_KEY'
            '&language=en-US&sort_by=popularity'
            '.desc&include_adult=false&include_video=false&page=$pageNum'
            '&with_watch_providers=${widget.providerID}'
            '&watch_region=US'));
        setState(() {
          pageNum++;
          isLoading = false;
          var newlistMovies = (json.decode(response.body)['results'] as List)
              .map((i) => Movie.fromJson(i))
              .toList();
          moviesList!.addAll(newlistMovies);
        });
      }
    });

    return "success";
  }

  @override
  void initState() {
    super.initState();
    getData();
    getMoreData();
  }

  void getData() {
    moviesApi().fetchMovies('${widget.api}&include_adult=false')
        .then((value) {
      setState(() {
        moviesList = value;
      });
    });
    Future.delayed(const Duration(seconds: 11), () {
      if (moviesList == null) {
        setState(() {
          requestFailed = true;
          moviesList = [Movie()];
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final imageQuality =
        Provider.of<ImagequalityProvider>(context).imageQuality;
    return moviesList == null
        ? Container(
            color:const Color(0xFFFFFFFF),
            child: mainPageVerticalScrollShimmer(
                isLoading, _scrollController))
        : moviesList!.isEmpty
            ? Container(
                color:
                   const Color(0xFFFFFFFF),
                child: const Center(
                  child: Text(
                      'Oops! movies for this watch provider doesn\'t exist :('),
                ),
              )
            : requestFailed == true
                ? retryWidget()
                : Container(
                    color: const Color(0xFFFFFFFF),
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListView.builder(
                                      controller: _scrollController,
                                      physics: const BouncingScrollPhysics(),
                                      itemCount: moviesList!.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return GestureDetector(
                                          onTap: () {
                                            // Navigator.push(context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) {
                                            //   return MovieDetailPage(
                                            //     movie: moviesList![index],
                                            //     heroId:
                                            //         '${moviesList![index].id}',
                                            //   );
                                            // }));
                                          },
                                          child: Container(
                                            color: const Color(0xFFFFFFFF),
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
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 10.0),
                                                        child: SizedBox(
                                                          width: 85,
                                                          height: 130,
                                                          child: Hero(
                                                            tag:
                                                                '${moviesList![index].id}',
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                              child: moviesList![
                                                                              index]
                                                                          .posterPath ==
                                                                      null
                                                                  ? Image.asset(
                                                                      'assets/images/na_logo.png',
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    )
                                                                  : CachedNetworkImage(
                                                                      fadeOutDuration:
                                                                          const Duration(
                                                                              milliseconds: 300),
                                                                      fadeOutCurve:
                                                                          Curves
                                                                              .easeOut,
                                                                      fadeInDuration:
                                                                          const Duration(
                                                                              milliseconds: 700),
                                                                      fadeInCurve:
                                                                          Curves
                                                                              .easeIn,
                                                                      imageUrl: TMDB_BASE_IMAGE_URL +
                                                                          imageQuality +
                                                                          moviesList![index]
                                                                              .posterPath!,
                                                                      imageBuilder:
                                                                          (context, imageProvider) =>
                                                                              Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          image:
                                                                              DecorationImage(
                                                                            image:
                                                                                imageProvider,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      placeholder: (context,
                                                                              url) =>
                                                                          mainPageVerticalScrollImageShimmer(
                                                                              ),
                                                                      errorWidget: (context,
                                                                              url,
                                                                              error) =>
                                                                          Image
                                                                              .asset(
                                                                        'assets/images/na_logo.png',
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              moviesList![index]
                                                                  .title!,
                                                              style: const TextStyle(
                                                                  fontFamily:
                                                                      'PoppinsSB',
                                                                  fontSize: 15,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis),
                                                            ),
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                const Icon(
                                                                    Icons.star,
                                                                    color: Color(
                                                                        0xFFF57C00)),
                                                                Text(
                                                                  moviesList![
                                                                          index]
                                                                      .voteAverage!
                                                                      .toStringAsFixed(
                                                                          1),
                                                                  style: const TextStyle(
                                                                      fontFamily:
                                                                          'Poppins'),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Divider(
                                                    color: Colors.white54,
                                                    thickness: 1,
                                                    endIndent: 20,
                                                    indent: 10,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                            visible: isLoading,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(child: CircularProgressIndicator()),
                            )),
                      ],
                    ));
  }

  Widget retryWidget() {
    return Container(
      color:const Color(0xFFF7F7F7),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/network-signal.png',
              width: 60, height: 60),
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text('Please connect to the Internet and try again',
                textAlign: TextAlign.center),
          ),
          TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0x0DF57C00)),
                  maximumSize: MaterialStateProperty.all(const Size(200, 60)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: const BorderSide(color: Color(0xFFF57C00))))),
              onPressed: () {
                setState(() {
                  requestFailed = false;
                  moviesList = null;
                });
                getData();
              },
              child: const Text('Retry')),
        ],
      )),
    );
  }
}