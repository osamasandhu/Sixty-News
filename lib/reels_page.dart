




import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sixty_app/reel_model.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({super.key});

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (c, i) {
          return Column(
            children: [
              _buildImageWithDecoration(url: reelModel[i].img),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                  top: 30,
                  bottom: 10,
                ),
                child: Text(
                  reelModel[i].title,
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  reelModel[i].description,
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: reelModel.length,
      ),
    );
  }

  Widget _buildImageWithDecoration({required String url}) {
    return Container(
      width: double.infinity,
      height: 241,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.45),
            blurRadius: 31,
            spreadRadius: 4,
            offset: const Offset(0, 4),
          )
        ],
        image: DecorationImage(
          image: AssetImage(url),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

Color scaffoldColor = const Color(0xffFFFEF5);





