# WIJHA🧭

# WIJHA, Saudi Your Way

A Flutter travel-planning app that creates a personalized Saudi experience based on the user's travel preferences.

WIJHA helps users choose how long they are staying, which Saudi cities they are visiting, what interests them, their preferred pace, and who they are traveling with. Based on these choices, the app provides a personalized itinerary with places and activities that match their preferences.

---

## Project Overview

WIJHA is designed to make planning a trip around Saudi Arabia easier and more personalized.

Instead of giving every traveler the same recommendations, the app asks the user about their preferences and uses their choices to create a personalized itinerary.

The current prototype demonstrates a 3-day Riyadh itinerary based on the selected preferences.

The itinerary is displayed using interactive cards containing images, descriptions, location icons, and favorite icons.

---

## What's Included

### Personalization Page

<img width="1080" height="2400" alt="Screenshot_1788054619" src="https://github.com/user-attachments/assets/62ee5d18-b9fa-4be7-931f-33eacc134ba5" />
<img width="1080" height="2400" alt="Screenshot_1788054611" src="https://github.com/user-attachments/assets/a8a0e023-affe-4e43-b3fc-dd28c3ad041b" />
The first page allows the user to select:

Number of days
- 1–3 days
- 4–7 days
- 1–2 weeks
- 2+ weeks

What cities they are visiting?
- Riyadh
- Neom
- Abha
- AlUla
- Jeddah

What interests them? (The user can choose up to 3 interests.)

- Heritage
- Cuisine
- Future
- Nature
- Shopping

Their preferred pace
- Calm
- Active

Who they are traveling with?
- Solo
- Family
- Friends

After making their choices, the user can select **Find my WIJHA** to view their personalized itinerary.

---

## Personalized Itinerary
<img width="1080" height="2400" alt="Screenshot_1788054721" src="https://github.com/user-attachments/assets/9cb65665-f06e-495e-a430-b4fbb72c0733" />
<img width="1080" height="2400" alt="Screenshot_1788054694" src="https://github.com/user-attachments/assets/a1623fb3-6a0b-4aa5-bef1-48b1ff5dd367" />
<img width="1080" height="2400" alt="Screenshot_1788054681" src="https://github.com/user-attachments/assets/e02a16a6-dfb9-4915-8c3f-20a7ad7e9627" />
<img width="1080" height="2400" alt="Screenshot_1788054650" src="https://github.com/user-attachments/assets/473a62ec-6436-41ba-9015-20aa9f5cc9a8" />
<img width="1080" height="2400" alt="Screenshot_1788054643" src="https://github.com/user-attachments/assets/74265154-7a1f-49e8-ba11-ba47ab0dda4b" />

The second page displays an itinerary based on the choices selected by the user on the first page.

The current prototype demonstrates a 3-day Riyadh itinerary with activities and places selected to match the user's preferences.

Each recommendation is displayed using an interactive card that includes:

- Images of the place that is recommendedfor them
- The place's name
- A location icon
- A favorite icon
- A description of the place and why the place satisfies their interests

Users can tap a card to expand it and view more information. The other cards shrink when a card is selected.

Users can also swipe through multiple images within each recommendation card.

---

## Flutter Widgets Used

The project was built using Flutter and focuses on practicing core Flutter widgets and layout concepts.

### Layout Widgets

- `Scaffold`
- `Container`
- `Row`
- `Column`
- `Padding`
- `Center`
- `SizedBox`
- `Expanded`

### Text & Styling

- `Text`
- `Text.rich`
- `TextStyle`
- `GoogleFonts.poppins`
- Font sizes
- Font weights
- Colors
- Letter spacing
- Shadows

### Interactive Widgets

- `InkWell`
- `ElevatedButton`
- `setState()`

### Media Widgets

- `Image.asset`
- `PageView`

### Animated Widgets

- `AnimatedContainer`

`AnimatedContainer` is used to expand the selected itinerary card while shrinking the other cards.

### Other Features

- `SingleChildScrollView`
- `AppBar`
- `Icon`
- `GlobalKey`
- `Scrollable.ensureVisible`
- `Navigator.push`
- `MaterialPageRoute`
- `StatefulWidget`

---

## Project Structure

```text
wjha/
│
├── lib/
│ ├── main.dart
│ └── pages/
│ ├── page_1.dart
│ └── page_2.dart
│
├── assets/
│ └── images/
│
├── pubspec.yaml
└── README.md
