# Comment Generator API - Dart/Flutter Client

Comment Generator produces social media comments formatted for text or image posts across positive, negative, and neutral tones. Each request returns generated comment text with optional emoji support, while paid plans can request batches up to 10.

[![pub package](https://img.shields.io/pub/v/apiverve_commentgenerator.svg)](https://pub.dev/packages/apiverve_commentgenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Comment Generator API](https://apiverve.com/marketplace/commentgenerator?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_commentgenerator: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_commentgenerator/apiverve_commentgenerator.dart';

void main() async {
  final client = CommentgeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'mode': 'text',
      'tone': 'positive',
      'count': 1,
      'emojis': true
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "count": 5,
    "mode": "text",
    "tone": "positive",
    "comments": [
      "You're so right! is a game-changer Wow! 😍",
      "Inspiring stuff gives me all the feels Wow! ✨",
      "Thanks for sharing this gives me all the feels Perfect! 💯",
      "Exactly my thoughts is on fire Wow beyond! 🌟",
      "Great outlook in everything here, very bright! slays! For sure! 😊"
    ]
  }
}
```

## API Reference

- **API Home:** [Comment Generator API](https://apiverve.com/marketplace/commentgenerator?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/commentgenerator](https://docs.apiverve.com/ref/commentgenerator?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
