import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:isave/main.dart';

class ECardView extends StatelessWidget {
  const ECardView({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("e-card" , style: TextStyle(fontSize: 18),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlipCard(
              direction: FlipDirection.HORIZONTAL,
              speed: 100,
              flipOnTouch: true,
              front: _buildFrontECard(context, media.width),
              back: _buildBackECard(context, media.width),
            ),
          ),


          Spacer(),

          _buildDisclaimerCard(),

          Spacer()



        ],
      ),
    );
  }

  // 🔹 FRONT SIDE (your original design)
  Widget _buildFrontECard(BuildContext context, double maxWidth) {
    const cardHeight = 200.0;
    return SizedBox(
      height: cardHeight,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF2B2473), Color(0xFF241B5A)],
          ),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 10, offset: const Offset(0, 6)),
          ],
        ),
        padding: const EdgeInsets.all(18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Left content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Row(
                    children: [
                      Icon(Icons.diamond_outlined, color: Colors.white70, size: 18),
                      SizedBox(width: 8),
                      Text('iSave', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  SizedBox(height: 13),
                  Text('Staff ID', style: TextStyle(color: Colors.white70, fontSize: 14)),
                  SizedBox(height: 5),
                  SizedBox(height: 5),
                  Text('Card holder name', style: TextStyle(color: Colors.white70, fontSize: 14)),
                  SizedBox(height: 5),
                ],
              ),
            ),

            // Right column
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text('ETIHAD', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w700)),
                const SizedBox(height: 8),

              ],
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 BACK SIDE (shows details)
  Widget _buildBackECard(BuildContext context, double maxWidth) {
    const cardHeight = 200.0;
    return SizedBox(
      height: cardHeight,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF2B2473), Color(0xFF241B5A)],
          ),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 10, offset: const Offset(0, 6)),
          ],
        ),
        padding: const EdgeInsets.all(18),
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Left content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Row(
                    children: [
                      Icon(Icons.diamond_outlined, color: Colors.white70, size: 18),
                      SizedBox(width: 8),
                      Text('iSave', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  SizedBox(height: 13),
                  Text('Staff ID', style: TextStyle(color: Colors.white70, fontSize: 14)),
                  SizedBox(height: 5),
                  Text('34335' ,style: TextStyle(color: Colors.white70, fontSize: 25,fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Card holder name', style: TextStyle(color: Colors.white70, fontSize: 14)),
                  SizedBox(height: 5),
                  const Text('Jason Fiedler',style: TextStyle(color: Colors.white70, fontSize: 14)),
                ],
              ),
            ),

            // Right column
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text('ETIHAD', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w700)),
                const SizedBox(height: 8),
                Container(
                  width: 104,
                  height: 124,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: Colors.white24, width: 1),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(''), // <-- put your image here
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),

      ),
    );
  }

  Widget _buildDisclaimerCard() {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Disclaimer', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(
              'The offers posted on this site are solely for the use of Etihad Airways employees, their families, or friends and are subject to vendors honoring their agreement. Etihad Airways or employees responsible for administering this site may not be held accountable if the offer is varied or withdrawn. The information posted on this iSave application is accurate on the day of posting; it is recommended that staff confirm the validity of any offer with the vendor at the time of booking.',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 13, height: 1.4),
            ),
          ],
        ),
      ),
    );
  }
}
