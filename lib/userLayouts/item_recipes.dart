import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemRecipes extends StatelessWidget {
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage('images/Burger.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 10,
            top: 10,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  shape: BoxShape.circle),
              child: Center(
                child: Icon(Icons.favorite),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Crispy Beef Burger',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontFamily: 'PoppinsSemiBold',
                    fontSize: 13,
                  ),
                ),
                Text(
                  'by Jhon Jones',
                  style: TextStyle(
                    color: Color(0xffCACACA),
                    fontSize: 9,
                    fontFamily: 'PoppinsRegular',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 12,
                            itemCount: 5,
                            allowHalfRating: true,
                            ignoreGestures: true,
                            initialRating: 4.5,
                            direction: Axis.horizontal,
                            minRating: 1,
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return Icon(
                                Icons.star,
                                // size: 5,
                                color: Color(0xffF7BB0E),
                              );
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '4.5',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontFamily: 'PoppinsMedium',
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '30 min',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ItemRecipes({
    required this.index,
  });
}
