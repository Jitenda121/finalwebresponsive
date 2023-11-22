//class with defined function for displaying what the site offers
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SiteCard extends StatefulWidget {
  const SiteCard({
    super.key,
  });

  @override
  State<SiteCard> createState() => _SiteCardState();
}

//definig variables for using them in changing the design
double upwardWeb = 0;
var designWeb = Colors.white;
bool visitCardWeb = false;
bool shareMediaWeb = false;
bool groupWeb = false;

class _SiteCardState extends State<SiteCard> {
  //function for returning the card to display text

  Widget infoProfileCardWeb(
      IconData icon,
      String text,
      String text2,
      VoidCallback onTap,
      bool isSelected,
      void Function(PointerEnterEvent)? onEnter,
      void Function(PointerExitEvent)? onExit) {
    return SizedBox(
      width: 200,
      child: MouseRegion(
        onEnter: onEnter,
        onExit: onExit,
        child: GestureDetector(
          onTap: onTap,
          child: Card(
            elevation: upwardWeb,
            color: isSelected ? Colors.blue : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 10, 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    color: isSelected ? Colors.black : Colors.blue,
                    shadowColor: isSelected ? Colors.black : Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        icon,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.white : Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                      fontSize: 20,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      //using of wrap to automatically get the size of the screen and adjust according to that
      children: [
        //calling the function to display the properties
        infoProfileCardWeb(
            Icons.badge,
            'Visiting\nCard',
            'Share your visiting cards with the best connections all around the country.',
            () {
              //defining the set state to change properties when clicked
              setState(() {
                visitCardWeb = true;
                shareMediaWeb = false;
                groupWeb = false;
              });
            },
            visitCardWeb,
            (_) {
              setState(() {
                visitCardWeb = true;
              });
            },
            (_) {
              setState(() {
                visitCardWeb = false;
              });
            }),
        const SizedBox(
          width: 50,
        ),
        //calling the function to display the properties
        infoProfileCardWeb(
            Icons.share,
            'Share\nMedia',
            'Share your favourite images,video or any link yo feel like sharing with your connections or community.',
            () {
              //defining the set state to change properties when clicked
              setState(() {
                visitCardWeb = false;
                shareMediaWeb = true;
                groupWeb = false;
              });
            },
            shareMediaWeb,
            (_) {
              setState(() {
                shareMediaWeb = true;
              });
            },
            (_) {
              setState(() {
                shareMediaWeb = false;
              });
            }),
        const SizedBox(
          width: 50,
        ),
        //calling the function to display the properties
        infoProfileCardWeb(
            Icons.group,
            'Multiple\nProfile',
            'You can choose to make multiple profiles for your accounts.',
            () {
              setState(() {
                //defining the set state to change properties when clicked
                visitCardWeb = false;
                shareMediaWeb = false;
                groupWeb = true;
              });
            },
            groupWeb,
            (_) {
              setState(() {
                groupWeb = true;
              });
            },
            (_) {
              setState(() {
                groupWeb = false;
              });
            }),
      ],
    );
  }
}
