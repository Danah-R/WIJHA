# WIJHA🧭

# WIJHA, Saudi Your Way🫵

A Flutter travel-planning app that creates a personalized Saudi experience based on the user's travel preferences.

WIJHA helps users choose how long they are staying, which Saudi cities they are visiting, what interests them, their preferred pace, and who they are traveling with. Based on these choices, the app provides a personalized itinerary with places and activities that match their preferences.

---

## Project Overview -- Why WIJHA?🤔

When traveling, people often follow generic or random itineraries that do not match their interests or travel style. This can lead to spending time on activities they are not interested in, feeling unsatisfied with their trip, or feeling like they didn't make the most of it.

There are also many local spots and experiences that travelers may not know about or find easily when planning a trip.

WIJHA aims to solve these problems by creating a personalized Saudi travel experience. Users can choose their trip duration, cities, interests, pace, and who they are traveling with. Based on these choices, WIJHA provides an itinerary with places and activities that better match what the user wants, while helping them discover places they may not have found on their own.


---


## What's Included

### Personalization Page

The first page allows the user to select:

Number of days⏱️
- 1–3 days
- 4–7 days
- 1–2 weeks
- 2+ weeks

What cities they are visiting?🏙️
- Riyadh
- Neom
- Abha
- AlUla
- Jeddah
- '+' (if the city is not mentioned)

What interests them? (The user can choose up to 3 interests.)💫

- Heritage
- Cuisine
- Future
- Nature
- Shopping

Their preferred pace
- Calm✨
- Active⚡️

Who they are traveling with?
- Solo🧍
- Family🧑‍🧑‍🧒
- Friends👭

After making their choices, the user can select **Find my WIJHA** to view their personalized itinerary.🗺️
| Personalization Page | Personalization Page |
|:---:|:---:|
| <img width="1080" height="2400" alt="Screenshot_1788054611" src="https://github.com/user-attachments/assets/a8a0e023-affe-4e43-b3fc-dd28c3ad041b" /> |<img width="1080" height="2400" alt="Screenshot_1788054619" src="https://github.com/user-attachments/assets/62ee5d18-b9fa-4be7-931f-33eacc134ba5" /> |

---

## Personalized Itinerary

The second page displays an itinerary based on the choices selected by the user on the first page.

The current prototype demonstrates a 3-day Riyadh itinerary with activities and places selected to match the user's preferences.

Each recommendation is displayed using an interactive card that includes:

- Images of the place that is recommended for them
- The place's name
- A location icon
- A favorite icon
- A description of the place and why the place satisfies their interests

Users can tap a card to expand it and view more information. The other cards shrink when a card is selected.

Users can also swipe through multiple images within each recommendation card.

| Day 1 location 1 | Day 1 location 2| Day 1 location 3|
|:---:|:---:|:---:|
|<img width="1080" height="2400" alt="Screenshot_1788054650" src="https://github.com/user-attachments/assets/7961f09d-659d-4197-879d-f7cc36952789" /> | <img width="1080" height="2400" alt="Screenshot_1788056286" src="https://github.com/user-attachments/assets/0c421a6e-181a-40c8-88d5-139987149123" /> | <img width="1080" height="2400" alt="Screenshot_1788056297" src="https://github.com/user-attachments/assets/9edd080b-ef09-4e9f-8319-7a8c3ee8c711" /> | 
| Day 2 location 1 | Day 2 location 2| Day 2 location 3|
<img width="1080" height="2400" alt="Screenshot_1788056312" src="https://github.com/user-attachments/assets/fa9faa18-6cbd-4aa2-adbc-45c218ea5553" /> | <img width="1080" height="2400" alt="Screenshot_1788056926" src="https://github.com/user-attachments/assets/0e850cd6-4fc4-4afe-9f4e-a691cfe6cac6" /> | <img width="1080" height="2400" alt="Screenshot_1788056341" src="https://github.com/user-attachments/assets/faf4d37a-d0db-4c4e-bd37-50480f218685" /> | 
| Day 3 location 1 | Day 3 location 2| Day 3 location 3|
<img width="1080" height="2400" alt="Screenshot_1788056354" src="https://github.com/user-attachments/assets/e9bfdf51-4764-4d8d-a0be-25c6be432eb4" /> | <img width="1080" height="2400" alt="Screenshot_1788056358" src="https://github.com/user-attachments/assets/df671bb4-7202-48ab-bbd4-9403c8e82c5b" /> | <img width="1080" height="2400" alt="Screenshot_1788054694" src="https://github.com/user-attachments/assets/afcb16b3-8346-4de2-ab90-d5003459ed6d" />
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
