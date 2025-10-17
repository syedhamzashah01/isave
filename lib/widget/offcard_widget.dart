
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget offerCard(
    String title, String location, String desc, String imagePath) {
  return Container(

    width: 170,
    margin: const EdgeInsets.only(right: 10),
    decoration: BoxDecoration(
      color: const Color(0xFF2D2A6E),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          height: 130,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(height: 8),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),


              Text(
                location,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 11,
                ),
              ),
              const SizedBox(height: 3),

              // 📝 Description
              Text(
                desc,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    )

    ,
  );
}