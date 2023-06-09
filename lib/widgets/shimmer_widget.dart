import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget scrollingMoviesAndTVShimmer1(isDark) => Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Shimmer.fromColors(
            baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
            highlightColor:
                isDark ? Colors.grey.shade700 : Colors.grey.shade100,
            direction: ShimmerDirection.ltr,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 20.0),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: 100.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 8.0, bottom: 20.0),
                          child: Container(
                            width: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: 10,
            ),
          ),
        ),
      ],
    );

Widget watchProvidersShimmer(isDark) => Container(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            childAspectRatio: 0.65,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Shimmer.fromColors(
              baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
              highlightColor:
                  isDark ? Colors.grey.shade700 : Colors.grey.shade100,
              direction: ShimmerDirection.ltr,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Container(
                              height: 10, width: 80, color: Colors.white),
                        )),
                  ],
                ),
              ),
            );
          }),
    );

Widget watchProvidersImageShimmer(isDark) => Shimmer.fromColors(
      baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
      highlightColor: isDark ? Colors.grey.shade700 : Colors.grey.shade100,
      direction: ShimmerDirection.ltr,
      child: Container(
        color: Colors.white,
      ),
    );

Widget scrollingMoviesAndTVShimmer() => Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            direction: ShimmerDirection.ltr,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 20.0),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: 100.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 8.0, bottom: 20.0),
                          child: Container(
                            width: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: 10,
            ),
          ),
        ),
      ],
    );

Widget mainPageVerticalScrollShimmer(isLoading, scrollController) => Container(
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
                        controller: scrollController,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            color: const Color(0xFFFFFFFF),
                            child: Shimmer.fromColors(
                              baseColor: Colors.grey.shade300,
                              highlightColor: Colors.grey.shade100,
                              direction: ShimmerDirection.ltr,
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
                                          padding: const EdgeInsets.only(
                                              right: 10.0),
                                          child: SizedBox(
                                            width: 85,
                                            height: 130,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8.0),
                                                child: Container(
                                                  width: 150,
                                                  height: 20,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 1.0),
                                                    child: Container(
                                                      height: 20,
                                                      width: 20,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 30,
                                                    height: 20,
                                                    color: Colors.white,
                                                  )
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
      ),
    );

Widget mainPageVerticalScrollShimmer1({isDark, isLoading, scrollController}) =>
    Container(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        controller: scrollController,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Shimmer.fromColors(
                              baseColor: isDark
                                  ? Colors.grey.shade800
                                  : Colors.grey.shade300,
                              highlightColor: isDark
                                  ? Colors.grey.shade700
                                  : Colors.grey.shade100,
                              direction: ShimmerDirection.ltr,
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
                                          padding: const EdgeInsets.only(
                                              right: 10.0),
                                          child: SizedBox(
                                            width: 85,
                                            height: 130,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8.0),
                                                child: Container(
                                                  width: 150,
                                                  height: 20,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 1.0),
                                                    child: Container(
                                                      height: 20,
                                                      width: 20,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 30,
                                                    height: 20,
                                                    color: Colors.white,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Divider(
                                      color: !isDark
                                          ? Colors.black54
                                          : Colors.white54,
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
                child: Center(child: LinearProgressIndicator()),
              )),
        ],
      ),
    );

Widget mainPageVerticalScrollImageShimmer() => Shimmer.fromColors(
    baseColor: Colors.grey.shade800,
    highlightColor: Colors.grey.shade100,
    direction: ShimmerDirection.ltr,
    child: Container(
      width: 85.0,
      height: 130.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
    ));

Widget mainPageVerticalScrollImageShimmer1(isDark) => Shimmer.fromColors(
    baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
    highlightColor: isDark ? Colors.grey.shade700 : Colors.grey.shade100,
    direction: ShimmerDirection.ltr,
    child: Container(
      width: 85.0,
      height: 130.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
    ));

Widget scrollingImageShimmer() => Shimmer.fromColors(
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade100,
    direction: ShimmerDirection.ltr,
    child: Container(
      width: 120.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), color: Colors.white),
    ));

Widget scrollingImageShimmer1(isDark) => Shimmer.fromColors(
    baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
    highlightColor: isDark ? Colors.grey.shade700 : Colors.grey.shade100,
    direction: ShimmerDirection.ltr,
    child: Container(
      width: 120.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), color: Colors.white),
    ));

Widget genreListGridShimmer() => Shimmer.fromColors(
      direction: ShimmerDirection.ltr,
      baseColor: Colors.grey.shade800,
      highlightColor: Colors.grey.shade100,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 125,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white),
              ),
            );
          }),
    );

    Widget genreListGridShimmer1(isDark) => Shimmer.fromColors(
      direction: ShimmerDirection.ltr,
      baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
      highlightColor: isDark ? Colors.grey.shade700 : Colors.grey.shade100,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 125,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white),
              ),
            );
          }),
    );

Widget detailGenreShimmer1(isDark) => Shimmer.fromColors(
      baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
      highlightColor: isDark ? Colors.grey.shade700 : Colors.grey.shade100,
      direction: ShimmerDirection.ltr,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Chip(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  width: 2, style: BorderStyle.solid, color: Colors.white),
              borderRadius: BorderRadius.circular(20.0),
            ),
            label: const Text(
              'Placeholder',
            ),
            backgroundColor:
                isDark ? const Color(0xFF2b2c30) : const Color(0xFFDFDEDE),
          ),
        ),
      ),
    );

Widget detailGenreShimmer() => Shimmer.fromColors(
      baseColor: Colors.grey.shade800,
      highlightColor: Colors.grey.shade100,
      direction: ShimmerDirection.ltr,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Chip(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  width: 2, style: BorderStyle.solid, color: Colors.white),
              borderRadius: BorderRadius.circular(20.0),
            ),
            label: const Text(
              'Placeholder',
            ),
            backgroundColor: const Color(0xFFDFDEDE),
          ),
        ),
      ),
    );

Widget horizontalLoadMoreShimmer1(isDark) => Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Shimmer.fromColors(
        baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
        highlightColor: isDark ? Colors.grey.shade700 : Colors.grey.shade100,
        direction: ShimmerDirection.ltr,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 20.0),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 3.0),
                      child: Container(
                        width: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
                      child: Container(
                        width: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          itemCount: 1,
        ),
      ),
    );
Widget horizontalLoadMoreShimmer() => Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade700,
        direction: ShimmerDirection.ltr,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 20.0),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 3.0),
                      child: Container(
                        width: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
                      child: Container(
                        width: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          itemCount: 1,
        ),
      ),
    );

Widget detailCastShimmer() => Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            direction: ShimmerDirection.ltr,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 100,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Container(
                          width: 75.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: Colors.white),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 30),
                          child: Container(
                            width: 75.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: 5,
            ),
          ),
        ),
      ],
    );

Widget detailCastShimmer1(isDark) => Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Shimmer.fromColors(
            baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
            highlightColor:
                isDark ? Colors.grey.shade700 : Colors.grey.shade100,
            direction: ShimmerDirection.ltr,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 100,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Container(
                          width: 75.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: Colors.white),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 30),
                          child: Container(
                            width: 75.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: 5,
            ),
          ),
        ),
      ],
    );

Widget detailVideoImageShimmer1(isDark) => Shimmer.fromColors(
    baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
    highlightColor: isDark ? Colors.grey.shade700 : Colors.grey.shade100,
    direction: ShimmerDirection.ltr,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), color: Colors.white),
    ));

Widget detailCastImageShimmer1(isDark) => Shimmer.fromColors(
    baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
    highlightColor: isDark ? Colors.grey.shade700 : Colors.grey.shade100,
    direction: ShimmerDirection.ltr,
    child: Container(
      width: 75.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0), color: Colors.white),
    ));

Widget detailVideoShimmer1(isDark) => SizedBox(
      width: double.infinity,
      child: Shimmer.fromColors(
        baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
        highlightColor: isDark ? Colors.grey.shade700 : Colors.grey.shade100,
        direction: ShimmerDirection.ltr,
        child: CarouselSlider.builder(
          options: CarouselOptions(
            disableCenter: true,
            viewportFraction: 0.8,
            enlargeCenterPage: false,
            autoPlay: true,
          ),
          itemBuilder: (context, index, pageViewIndex) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 205,
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white),
                      padding: const EdgeInsets.all(8),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ),
          itemCount: 5,
        ),
      ),
    );

Widget detailImageImageSimmer1(isDark) => Shimmer.fromColors(
    baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
    highlightColor: isDark ? Colors.grey.shade700 : Colors.grey.shade100,
    direction: ShimmerDirection.ltr,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), color: Colors.white),
    ));

Widget detailImageShimmer1(isDark) => Shimmer.fromColors(
      baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
      highlightColor: isDark ? Colors.grey.shade700 : Colors.grey.shade100,
      direction: ShimmerDirection.ltr,
      child: CarouselSlider(
        options: CarouselOptions(
          enableInfiniteScroll: false,
          viewportFraction: 1,
        ),
        items: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                        alignment: AlignmentDirectional.bottomStart,
                        children: [
                          SizedBox(
                            height: 180,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.black38,
                              height: 40,
                            ),
                          )
                        ]),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            SizedBox(
                              height: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.black38,
                                height: 40,
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

Widget detailImageShimmer() => Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      direction: ShimmerDirection.ltr,
      child: CarouselSlider(
        options: CarouselOptions(
          enableInfiniteScroll: false,
          viewportFraction: 1,
        ),
        items: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                        alignment: AlignmentDirectional.bottomStart,
                        children: [
                          SizedBox(
                            height: 180,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.black38,
                              height: 40,
                            ),
                          )
                        ]),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            SizedBox(
                              height: 180,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.black38,
                                height: 40,
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

Widget detailCastImageShimmer() => Shimmer.fromColors(
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade100,
    direction: ShimmerDirection.ltr,
    child: Container(
      width: 75.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0), color: Colors.white),
    ));

Widget detailImageImageSimmer() => Shimmer.fromColors(
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade100,
    direction: ShimmerDirection.ltr,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), color: Colors.white),
    ));

Widget detailVideoShimmer() => SizedBox(
      width: double.infinity,
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        direction: ShimmerDirection.ltr,
        child: CarouselSlider.builder(
          options: CarouselOptions(
            disableCenter: true,
            viewportFraction: 0.8,
            enlargeCenterPage: false,
            autoPlay: true,
          ),
          itemBuilder: (context, index, pageViewIndex) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 205,
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white),
                      padding: const EdgeInsets.all(8),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ),
          itemCount: 5,
        ),
      ),
    );

Widget personImageShimmer() => Row(
      children: [
        Expanded(
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            direction: ShimmerDirection.ltr,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 8.0),
                  child: SizedBox(
                    width: 100,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 6,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );

Widget personAboutSimmer() => Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8),
          child: Text(
            'Biography',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          direction: ShimmerDirection.ltr,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  width: double.infinity,
                  height: 20,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  width: double.infinity,
                  height: 20,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  width: double.infinity,
                  height: 20,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  width: double.infinity,
                  height: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );

Widget moviesAndTVShowGridShimmer(isDark) => Container(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          Expanded(
            child: Shimmer.fromColors(
              baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
              highlightColor:
                  isDark ? Colors.grey.shade700 : Colors.grey.shade100,
              direction: ShimmerDirection.ltr,
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    childAspectRatio: 0.48,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.white),
                                ),
                              )),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );

Widget personMoviesAndTVShowShimmer1(isDark) => Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Shimmer.fromColors(
              baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
              highlightColor:
                  isDark ? Colors.grey.shade700 : Colors.grey.shade100,
              direction: ShimmerDirection.ltr,
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 20,
                    width: 100,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 8.0, top: 0),
          child: Row(
            children: [
              Expanded(
                child: Shimmer.fromColors(
                  baseColor:
                      isDark ? Colors.grey.shade800 : Colors.grey.shade300,
                  highlightColor:
                      isDark ? Colors.grey.shade700 : Colors.grey.shade100,
                  direction: ShimmerDirection.ltr,
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 150,
                        childAspectRatio: 0.48,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                      ),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 6,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          color: Colors.white),
                                    ),
                                  )),
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ],
    );

Widget personMoviesAndTVShowShimmer() => Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              direction: ShimmerDirection.ltr,
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 20,
                    width: 100,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, bottom: 8.0, top: 0),
            child: Row(
              children: [
                Expanded(
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    direction: ShimmerDirection.ltr,
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 150,
                          childAspectRatio: 0.48,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                        ),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        color: Colors.white),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Container(
                                        height: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            color: Colors.white),
                                      ),
                                    )),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

Widget detailVideoImageShimmer() => Shimmer.fromColors(
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade100,
    direction: ShimmerDirection.ltr,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), color: Colors.white),
    ));

Widget personDetailInfoTableShimmer() => DataTable(dataRowHeight: 40, columns: [
      DataColumn(label: detailInfoTableItemShimmer()),
      DataColumn(label: detailInfoTableItemShimmer()),
    ], rows: [
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer()),
        DataCell(detailInfoTableItemShimmer()),
      ]),
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer()),
        DataCell(detailInfoTableItemShimmer()),
      ]),
    ]);

Widget detailInfoTableItemShimmer() => Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      direction: ShimmerDirection.ltr,
      child: Container(
        color: Colors.white,
        height: 15,
        width: 75,
      ),
    );

Widget socialMediaShimmer1(isDark) => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isDark ? Colors.transparent : const Color(0xFFDFDEDE),
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Shimmer.fromColors(
              baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
              highlightColor:
                  isDark ? Colors.grey.shade700 : Colors.grey.shade100,
              direction: ShimmerDirection.ltr,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 40,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }),
    );

Widget socialMediaShimmer() => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFDFDEDE),
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              direction: ShimmerDirection.ltr,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 40,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }),
    );

  

Widget detailInfoTableItemShimmer1(isDark) => Shimmer.fromColors(
      baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
      highlightColor: isDark ? Colors.grey.shade700 : Colors.grey.shade100,
      direction: ShimmerDirection.ltr,
      child: Container(
        color: Colors.white,
        height: 15,
        width: 75,
      ),
    );

Widget detailInfoTableShimmer1(isDark) =>
    DataTable(dataRowHeight: 40, columns: [
      // const DataColumn(
      //     label: Text(
      //   'Original Title',
      //   style: TextStyle(overflow: TextOverflow.ellipsis),
      // )),
      DataColumn(label: detailInfoTableItemShimmer1(isDark)),
      DataColumn(label: detailInfoTableItemShimmer1(isDark)),
    ], rows: [
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer1(isDark)),
        DataCell(detailInfoTableItemShimmer1(isDark)),
      ]),
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer1(isDark)),
        DataCell(detailInfoTableItemShimmer1(isDark)),
      ]),
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer1(isDark)),
        DataCell(SizedBox(
            height: 20,
            width: 200,
            child: detailInfoTableItemShimmer1(isDark))),
      ]),
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer1(isDark)),
        DataCell(detailInfoTableItemShimmer1(isDark)),
      ]),
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer1(isDark)),
        DataCell(detailInfoTableItemShimmer1(isDark)),
      ]),
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer1(isDark)),
        DataCell(detailInfoTableItemShimmer1(isDark)),
      ]),
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer1(isDark)),
        DataCell(SizedBox(
                height: 20,
                width: 200,
                child: detailInfoTableItemShimmer1(isDark))
            // movieDetails!.productionCompanies!.isEmpty
            //     ? const Text('-')
            //     : Text(
            //         movieDetails!.productionCompanies![0].name!),
            ),
      ]),
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer1(isDark)),
        DataCell(SizedBox(
                height: 20,
                width: 200,
                child: detailInfoTableItemShimmer1(isDark))
            // movieDetails!.productionCompanies!.isEmpty
            //     ? const Text('-')
            //     : Text(
            //         movieDetails!.productionCountries![0].name!),
            ),
      ]),
    ]);

Widget detailInfoTableShimmer() => DataTable(dataRowHeight: 40, columns: [
      // const DataColumn(
      //     label: Text(
      //   'Original Title',
      //   style: TextStyle(overflow: TextOverflow.ellipsis),
      // )),
      DataColumn(label: detailInfoTableItemShimmer()),
      DataColumn(label: detailInfoTableItemShimmer()),
    ], rows: [
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer()),
        DataCell(detailInfoTableItemShimmer()),
      ]),
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer()),
        DataCell(detailInfoTableItemShimmer()),
      ]),
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer()),
        DataCell(SizedBox(
            height: 20, width: 200, child: detailInfoTableItemShimmer())),
      ]),
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer()),
        DataCell(detailInfoTableItemShimmer()),
      ]),
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer()),
        DataCell(detailInfoTableItemShimmer()),
      ]),
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer()),
        DataCell(detailInfoTableItemShimmer()),
      ]),
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer()),
        DataCell(SizedBox(
                height: 20, width: 200, child: detailInfoTableItemShimmer())
            // movieDetails!.productionCompanies!.isEmpty
            //     ? const Text('-')
            //     : Text(
            //         movieDetails!.productionCompanies![0].name!),
            ),
      ]),
      DataRow(cells: [
        DataCell(detailInfoTableItemShimmer()),
        DataCell(SizedBox(
                height: 20, width: 200, child: detailInfoTableItemShimmer())
            // movieDetails!.productionCompanies!.isEmpty
            //     ? const Text('-')
            //     : Text(
            //         movieDetails!.productionCountries![0].name!),
            ),
      ]),
    ]);

Widget castAndCrewTabImageShimmer() => Shimmer.fromColors(
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade100,
    direction: ShimmerDirection.ltr,
    child: Container(
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0), color: Colors.white),
    ));

Widget castAndCrewTabImageShimmer1(isDark) => Shimmer.fromColors(
    baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
    highlightColor: isDark ? Colors.grey.shade700 : Colors.grey.shade100,
    direction: ShimmerDirection.ltr,
    child: Container(
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0), color: Colors.white),
    ));

Widget movieCastAndCrewTabShimmer() => Container(
    color: const Color(0xFFFFFFFF),
    child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: const Color(0xFFFFFFFF),
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              direction: ShimmerDirection.ltr,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 0.0,
                  bottom: 5.0,
                  left: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0, left: 10),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                  width: 150,
                                  height: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 20,
                                color: Colors.white,
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
        }));

Widget detailsRecommendationsAndSimilarShimmer(scrollController, isLoading) =>
    Column(
      children: [
        Expanded(
          child: ListView.builder(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: const Color(0xFFFFFFFF),
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    direction: ShimmerDirection.ltr,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 0.0,
                        bottom: 3.0,
                        left: 10,
                      ),
                      child: Column(
                        children: [
                          Row(
                            // crossAxisAlignment:
                            //     CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: SizedBox(
                                  width: 85,
                                  height: 130,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Container(
                                          height: 20,
                                          width: 150,
                                          color: Colors.white),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 1.0),
                                          child: Container(
                                            height: 20,
                                            width: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                            height: 20,
                                            width: 30,
                                            color: Colors.white),
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
        Visibility(
            visible: isLoading,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: CircularProgressIndicator()),
            )),
      ],
    );

Widget recommendationAndSimilarTabImageShimmer() => Shimmer.fromColors(
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade100,
    direction: ShimmerDirection.ltr,
    child: Container(
      width: 85.0,
      height: 130.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
    ));

Widget discoverImageShimmer1(isDark) => Shimmer.fromColors(
      direction: ShimmerDirection.ltr,
      baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
      highlightColor: isDark ? Colors.grey.shade700 : Colors.grey.shade100,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), color: Colors.white),
      ),
    );

Widget discoverMoviesAndTVShimmer1(isDark) => Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Shimmer.fromColors(
            baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
            highlightColor:
                isDark ? Colors.grey.shade700 : Colors.grey.shade100,
            direction: ShimmerDirection.ltr,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                disableCenter: true,
                viewportFraction: 0.6,
                enlargeCenterPage: true,
                autoPlay: true,
              ),
              itemBuilder: (context, index, pageViewIndex) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white),
              ),
              itemCount: 10,
            ),
          ),
        ),
        Shimmer.fromColors(
          baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
          highlightColor: isDark ? Colors.grey.shade700 : Colors.grey.shade100,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0), color: Colors.white),
          ),
        )
      ],
    );

Widget discoverMoviesAndTVShimmer() => Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            direction: ShimmerDirection.ltr,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                disableCenter: true,
                viewportFraction: 0.6,
                enlargeCenterPage: true,
                autoPlay: true,
              ),
              itemBuilder: (context, index, pageViewIndex) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white),
              ),
              itemCount: 10,
            ),
          ),
        ),
        Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0), color: Colors.white),
          ),
        )
      ],
    );

Widget discoverImageShimmer() => Shimmer.fromColors(
      direction: ShimmerDirection.ltr,
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), color: Colors.white),
      ),
    );

Widget horizontalScrollingSeasonsList1(isDark) => Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Shimmer.fromColors(
            baseColor: isDark ? Colors.grey.shade800 : Colors.grey.shade300,
            highlightColor:
                isDark ? Colors.grey.shade700 : Colors.grey.shade100,
            direction: ShimmerDirection.ltr,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 20.0),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Container(
                          width: 105.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 8.0, bottom: 30.0),
                          child: Container(
                            width: 105.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: 10,
            ),
          ),
        ),
      ],
    );

Widget horizontalScrollingSeasonsList() => Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            direction: ShimmerDirection.ltr,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 20.0),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Container(
                          width: 105.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 8.0, bottom: 30.0),
                          child: Container(
                            width: 105.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: 10,
            ),
          ),
        ),
      ],
    );
Widget tvDetailsSeasonsTabShimmer() => Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: const Color(0xFFFFFFFF),
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    direction: ShimmerDirection.ltr,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 0.0,
                        bottom: 5.0,
                        left: 15,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 30.0),
                                child: SizedBox(
                                  width: 85,
                                  height: 130,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Container(color: Colors.white)),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        color: Colors.white,
                                        height: 20,
                                        width: 115)
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
    );

Widget tvCastAndCrewTabShimmer() => Container(
    color: const Color(0xFFFFFFFF),
    child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: const Color(0xFFFFFFFF),
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              direction: ShimmerDirection.ltr,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 0.0,
                  bottom: 5.0,
                  left: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0, left: 10),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: Container(
                                  width: 150,
                                  height: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: Container(
                                  width: 130,
                                  height: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 20,
                                color: Colors.white,
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
        }));
