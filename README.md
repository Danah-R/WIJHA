# WIJHA🧭

# WIJHA, ##Saudi Your Way

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

The first page allows the user to select:

- Number of days
- 1–3 days
- 4–7 days
- 1–2 weeks
- 2+ weeks

- Cities
- Riyadh
- Neom
- Abha
- AlUla
- Jeddah

- What interests them
- Heritage
- Cuisine
- Future
- Nature
- Shopping

- Preferred pace
- Calm
- Active

- Who they are traveling with
- Solo
- Family
- Friends

The user can choose up to 3 interests.

After making their choices, the user can select **Find my WIJHA** to view their personalized itinerary.

---

## Personalized Itinerary

The second page displays an itinerary based on the choices selected by the user on the first page.

The current prototype demonstrates a 3-day Riyadh itinerary with activities and places selected to match the user's preferences.

Each recommendation is displayed using an interactive card that includes:

- Multiple images
- Place name
- Location icon
- Favorite icon
- Short description

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

## Key Flutter Concepts

- Everything in Flutter is built using widgets.
- Widgets are combined by nesting them inside one another.
- `Row` and `Column` organize widgets horizontally and vertically.
- `Expanded` allows widgets to share available space.
- `Container` controls size, color, borders, and decoration.
- `setState()` updates the UI when the user makes a selection.
- `InkWell` allows parts of the interface to respond to taps.
- `PageView` allows users to swipe through multiple images.
- `AnimatedContainer` creates a smooth transition when a recommendation is selected.
- `SingleChildScrollView` allows the content to fit on smaller screens.
- `Navigator.push` is used to move from the personalization page to the itinerary page.
- `GlobalKey` is used to identify individual itinerary cards.
- `Scrollable.ensureVisible` moves the selected card into view.

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
