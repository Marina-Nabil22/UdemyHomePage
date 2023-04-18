import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          height: 200,
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey.shade700),
            borderRadius: BorderRadius.circular(6)

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
               Text('Top Companies trust',
                style: GoogleFonts.abhayaLibre(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                ),),
              Center(
                child: Text('Udemy',
                  style: GoogleFonts.abhayaLibre(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                  ),),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text('box',style: GoogleFonts.abhayaLibre(color: Colors.white),),
                  const SizedBox(
                    width: 20,
                  ),
                   Text('Nasdaq',style: GoogleFonts.abhayaLibre(color: Colors.white),),
                  const SizedBox(
                    width: 20,
                  ),
                   Text('Nasdaq',style: GoogleFonts.abhayaLibre(color: Colors.white),),
                ],
              ),
              const Spacer(),
               Text('Try Udemy Business',
                style: GoogleFonts.openSans(
                  color: Colors.purple.shade100,
                  fontSize: 16.0,
                ),),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
