import 'package:fligth_app/presentation/core/constants/colors.dart';
import 'package:fligth_app/presentation/core/widgets/appbar_text.dart';
import 'package:flutter/material.dart';
import 'package:ikchatbot/ikchatbot.dart';

class CustomerServiceView extends StatefulWidget {
  const CustomerServiceView({super.key});

  @override
  State<CustomerServiceView> createState() => _CustomerServiceViewState();
}

class _CustomerServiceViewState extends State<CustomerServiceView> {

  final chatBotConfig = IkChatBotConfig(
    //SMTP Rating to your mail Settings
    ratingIconYes: const Icon(Icons.star),
    ratingIconNo: const Icon(Icons.star_border),
    ratingIconColor: Colors.yellow,
    ratingBackgroundColor: Colors.white,
    ratingButtonText: 'Submit Rating',
    thankyouText: 'Thanks for your rating!',
    ratingText: 'Rate your experience:',
    ratingTitle: 'Thank you for using the chatbot!',
    body: 'This is a test email sent from Flutter and Dart.',
    subject: 'Test Rating',
    recipient: 'recipient@example.com',
    isSecure: false,
    senderName: 'Your Name',
    smtpUsername: 'Your Email',
    smtpPassword: 'your password',
    smtpServer: 'stmp.gmail.com',
    smtpPort: 587,
    //Settings to your system Configurations
    sendIcon: const Icon(Icons.send, color: AppColors.primaryColor),
    userIcon: const Icon(Icons.person, color: Colors.white),
    botIcon: const Icon(Icons.airplanemode_on, color: Colors.white),
    botChatColor: const Color.fromARGB(255, 121, 121, 253),
    delayBot: 100,
    closingTime: 1,
    delayResponse: 1,
    userChatColor:  const Color.fromARGB(255, 121, 121, 253),
    waitingTime: 1,
    keywords: [
      'who are you',
      'what is flutter',
      'sorry',
      'what do you do',
      'thanks'
    ],
    responses: [
      'I am a bot created by Iksoft Original, a proud Ghanaian',
      'Flutter transforms the app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.',
      'Good! i have forgiven you. dont do that again!',
      'I am here to help you, what is your issue?',
      'not at all , I am happy to help you!'
    ],
    backgroundColor: AppColors.secondaryColor,
    backgroundImage:
    'https://i.pinimg.com/736x/d2/bf/d3/d2bfd3ea45910c01255ae022181148c4.jpg',
    backgroundAssetimage: "lib/assets/bg.jpeg",
    initialGreeting:
    "Hello! \nWelcome to IkChatBot.\nHow can I assist you today?",
    defaultResponse: "Sorry, I didn't understand your response.",
    inactivityMessage: "Is there anything else you need help with?",
    closingMessage: "This conversation will now close.",
    inputHint: 'Send a message',
    waitingText: 'Please wait...',
    useAsset: false,
  );

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        title: AppBarText(text: 'Customer Services',),
        centerTitle: true,
      ),
      body: ikchatbot(config: chatBotConfig,),
    );
  }
}

