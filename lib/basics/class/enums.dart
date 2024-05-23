void main() {
  final mouse = Mouses.logitech;

  print(mouse.index);
  print(mouse.name);

  switch (mouse) {
    case Mouses.apple:

    case Mouses.hyperX:

    case Mouses.logitech:

    case Mouses.magic:

    default:
  }

  // use this
  if (mouse == Mouses.apple) {}

  //rather than this
  if (mouse.name == 'a4') {}

  if(mouse.isCheckName('logitech')) {
    print('logitech');
  }
}

enum Mouses {
  magic,
  apple,
  logitech,
  hyperX,
}

extension MouseSelectedExtension on Mouses {
  bool isCheckName(String name) {
    return this.name == name;
  }
}