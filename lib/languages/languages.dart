import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'bn_BD': {
          'ভূমি সেবাসমূহ': 'ভূমি সেবাসমূহ',
          "সব দেখুন": "সব দেখুন",
          "সেবা প্রদান পদ্ধতি (সংক্ষেপে)": "সেবা প্রদান পদ্ধতি (সংক্ষেপে)",
          "সেবা প্রাপ্তি সময়": "সেবা প্রাপ্তি সময়",
          "প্রয়োজনীয় ফি": "প্রয়োজনীয় ফি",
          "সেবা প্রাপ্তির স্থান": "সেবা প্রাপ্তির স্থান",
          "দায়িত্বপ্রাপ্ত কর্মকর্তা/কর্মচারী":
              "দায়িত্বপ্রাপ্ত কর্মকর্তা/কর্মচারী",
          "প্রয়োজনীয় কাগজপত্র": "প্রয়োজনীয় কাগজপত্র",
          "সেবা প্রাপ্তির শর্তাবলি": "সেবা প্রাপ্তির শর্তাবলি",
          "সংশ্লিষ্ট আইন ও বিধি": "সংশ্লিষ্ট আইন ও বিধি",
          "সেবা প্রদানে ব্যর্থ হলে প্রতিকারকারী কর্মকর্তা":
              "সেবা প্রদানে ব্যর্থ হলে প্রতিকারকারী কর্মকর্তা",
          "পদ্ধতি চিত্র": "পদ্ধতি চিত্র",
          "ক্লিক করুন": "ক্লিক করুন",
        },
        'en_US': {
          'ভূমি সেবাসমূহ': 'Land Services',
          "সব দেখুন": "View All",
          "সেবা প্রদান পদ্ধতি (সংক্ষেপে)":
              "Service Delivery Procedures (In Brief)",
          "সেবা প্রাপ্তি সময়": "Service Availability Time",
          "প্রয়োজনীয় ফি": "Required Fee",
          "সেবা প্রাপ্তির স্থান": "Place of Receipt of Service",
          "দায়িত্বপ্রাপ্ত কর্মকর্তা/কর্মচারী": "Responsible Officer/Employee",
          "প্রয়োজনীয় কাগজপত্র": "Required Documents",
          "সেবা প্রাপ্তির শর্তাবলি": "Terms of Service",
          "সংশ্লিষ্ট আইন ও বিধি": "Relevant Laws and Regulations",
          "সেবা প্রদানে ব্যর্থ হলে প্রতিকারকারী কর্মকর্তা":
              "Remedial Officer in case of failure to render service",
          "পদ্ধতি চিত্র": "Process Map",
          "ক্লিক করুন": "Click",
        },
      };

  static translate(var text) {
    text = text.toString();
    if (text == "0") {
      return "০";
    } else if (text == "1") {
      return "১";
    } else if (text == "2") {
      return "২";
    } else if (text == "3") {
      return "৩";
    } else if (text == "4") {
      return "৪";
    } else if (text == "5") {
      return "৫";
    } else if (text == "6") {
      return "৬";
    } else if (text == "7") {
      return "৭";
    } else if (text == "8") {
      return "৮";
    } else if (text == "9") {
      return "৯";
    }
  }
}
