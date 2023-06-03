## Usage

Import the dependencies in `pubspec.yaml`

```yaml
dependencies:
  flutter_faker_indonesia: ^latest_version
```

Use an easy implementation like this
```dart
import 'package:flutter_faker_indonesia/faker.dart';

main() {
  var faker = new Faker().generate();

  faker.personal.namaLengkap(length: 2);
  /// Vania Mariska
}
```

## Contribution
We welcome contributions from the community to improve and expand this library. If you would like to contribute, please follow the steps below:

Check the issues for open tasks or features that you can work on. If there are no relevant issues, you can create a new issue to discuss your proposed contribution.

Fork this repository and create a new branch for your contribution work.

Make the changes you want to implement in your branch.

Once you are done, submit a pull request to the main repository explaining the changes you made and the reasons behind them.

Our development team will review your contribution and provide feedback as soon as possible. If necessary, we may request changes or additional adjustments before merging your pull request.

Please make sure to read [CONTRIBUTING.md][contributing] for further guidelines on how to contribute to this project.


## License

Distributed under the MIT License. See [LICENSE][license] for more information.


## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/bayufajariyanto/flutter_faker_indonesia/issues
[contributing]: https://github.com/bayufajariyanto/flutter_faker_indonesia/blob/main/CONTRIBUTING.md
[license]: https://pub.dev/packages/flutter_faker_indonesia/license