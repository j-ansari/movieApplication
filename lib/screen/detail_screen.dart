import 'package:flutter/material.dart';
import 'package:movie_application/item/detailItem/content_detail.dart';
import 'package:movie_application/item/detailItem/description_detail.dart';
import 'package:movie_application/item/detailItem/movie_star.dart';
import 'package:movie_application/item/detailItem/related_movie.dart';
import 'package:movie_application/item/detailItem/series_season.dart';
import 'package:movie_application/item/detailItem/top_cover_detail.dart';
import 'package:movie_application/provider/detail_provider.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {

  final String itemIdKey;
  final String directorName;
  final String published;
  final String genreName;
  final String movieName;
  final String movieTime;
  final String imdbRate;
  final String categoryName;

  DetailScreen({
    required this.itemIdKey,
    required this.directorName,
    required this.published,
    required this.genreName,
    required this.movieName,
    required this.movieTime,
    required this.imdbRate,
    required this.categoryName,
  });

  @override
  State<StatefulWidget> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>{
  late DetailProvider detailProvider;

  @override
  void initState() {
    super.initState();
    detailProvider = Provider.of(context, listen: false);
    detailProvider.detailUrlKey = widget.itemIdKey;
    detailProvider.fetchDetailModelData();
  }

  @override
  void dispose() {
    if(detailProvider.detailModel.isEmpty){
      detailProvider.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;

    return Consumer<DetailProvider>(
      builder: (context, data, child) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Color(0xff211421),
            title: Text('Movie Details',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: size.height * 0.28,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: data.detailModel.length,
                  itemBuilder: (context, position) {
                    return TopCoverDetail(
                      size: size,
                      detailModel: data.detailModel[position],
                      movieName: widget.movieName,
                    );
                  },
                ),
              ),
              SizedBox(height: size.height * 0.015),
              widget.categoryName == 'series' || widget.categoryName == 'iranian_series'
                  ? series(size, data)
                  : movies(size, data),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Related Movie:',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: size.width,
                height: size.height * 0.3,
                child: RelatedMovie(
                  size: size,
                  relatedCategoryKey: widget.categoryName,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  Widget movies(size, data){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(right: 30),
      height: size.height * 0.58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: Colors.grey[900],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContentDetail(
            imdbRate: widget.imdbRate,
            genreName: widget.genreName,
            published: widget.published,
            directorName: widget.directorName,
            movieTime: widget.movieTime,
            movieName: widget.movieName,
            size: size,
            categoryName: widget.categoryName,
          ),
          SizedBox(height: 10),
          SizedBox(
            width: size.width,
            height: size.height * 0.1,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: data.detailModel.length,
              itemBuilder: (context, position) {
                return DescriptionDetail(
                  size: size,
                  detailModel: data.detailModel[position],
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Text('Stars:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: size.height * 0.2,
            child: MovieStarDetail(
              idKey: widget.itemIdKey,
              size: size,
            ),
          ),
        ],
      ),
    );
  }

  Widget series(size, data){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(right: 30),
      height: size.height * 0.84,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: Colors.grey[900],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContentDetail(
            imdbRate: widget.imdbRate,
            genreName: widget.genreName,
            published: widget.published,
            directorName: widget.directorName,
            movieTime: widget.movieTime,
            movieName: widget.movieName,
            size: size,
            categoryName: widget.categoryName,
          ),
          SizedBox(height: 10),
          SizedBox(
            width: size.width,
            height: size.height * 0.1,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: data.detailModel.length,
              itemBuilder: (context, position) {
                return DescriptionDetail(
                  size: size,
                  detailModel: data.detailModel[position],
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Text('Stars:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: size.height * 0.2,
            child: MovieStarDetail(
              idKey: widget.itemIdKey,
              size: size,
            ),
          ),
          Text('Episodes:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: size.width,
            height: size.height * 0.2,
            child: EpisodeSeriesDetail(
              seriesSeasonItemIdKey: widget.itemIdKey,
            ),
          ),
        ],
      ),
    );
  }
}