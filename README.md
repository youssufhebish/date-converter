# date_converter

A class that converts PublishedAt query in newsAPI, wordpressApi, blogspotApi, etc. to common dater forms.

## Getting Started With DateConverter Class

Add date_converter.dart file to your project and use the methods inside it.

- dateConverterMonth method convert dateForm from: 2021-08-26T13:21:00Z to 26 Aug 2021
- dateConverterOnly method convert dateForm from: 2021-08-26T13:21:00Z to 2021-08-26
- dateConverterSince method convert dateForm from: 2021-08-26T13:21:00Z to today
- dateConverterHours24Mode method convert dateForm from: 2021-08-26T13:21:00Z to 13:21
- dateConverterHoursAmPmMode method convert dateForm from: 2021-08-26T13:21:00Z to 01:21 PM

Note:
    - you can merge two methods to get complete date form date & time