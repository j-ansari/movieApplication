import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_application/provider/slider_provider.dart';
import 'package:provider/provider.dart';

class SliderMovie extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final sliderProvider = Provider.of<SliderProvider>(context, listen: false);
    sliderProvider.fetchSliderData();

    return Consumer<SliderProvider>(
      builder: (context, data, child) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 4/2,
            reverse: true,
            disableCenter: true,
            autoPlayInterval: Duration(seconds: 10),
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          itemCount: data.sliderModel.length,
          itemBuilder: (context, position, _) {
            if(sliderProvider.sliderModel.isEmpty){
              return Center(child: CircularProgressIndicator());
            }
            return Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(data.sliderModel[position].imageUrl),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(data.sliderModel[position].movieName,
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}