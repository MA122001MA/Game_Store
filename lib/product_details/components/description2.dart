import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:readmore/readmore.dart';

class DescriptionText2 extends StatefulWidget {
  const DescriptionText2({super.key});

  @override
  State<DescriptionText2> createState() => _DescriptionText2State();
}

class _DescriptionText2State extends State<DescriptionText2> {
  String text =
      "Michel Ancel, the celebrated creator of Rayman®, Beyond Good & Evil®, and the Raving Rabbids®, returns to unleash his innovative creativity on this new entry into the Rayman® franchise.\n When Rayman, Globox, and the Teensies discover a mysterious tent filled with captivating paintings, they are suddenly transported to a series of mythical new worlds! \n Join them as they run, jump, and slap their way through each world to get home, save the day, and discover the secrets of the legendary paintings!";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ReadMoreText(
        text,
        trimLines: 3,
        style: TextStyle(fontSize: 16),
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Read More',
        trimExpandedText: ' Less ',
      ),
    );
  }
}
