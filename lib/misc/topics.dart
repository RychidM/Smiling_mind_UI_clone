class Topics {
  String title;
  String img;
  double height;

  Topics(this.title, this.img, this.height);

  static List<Topics> generateTopics() {
    return [
      Topics("Reduce", "imgs/levitation-woman.png", 210),
      Topics("Improved Performance", "imgs/man-desk.png", 167),
      Topics("Reduce Anxiety", "imgs/peace-woman.png", 210),
      Topics("Increase Happiness", "imgs/excited.png", 167),
      Topics("Personal Growth", "imgs/mountain-man.png", 210),
      Topics("Better Sleep", "imgs/sleep-woman.png", 167),
      Topics("Productivity", "imgs/woman-desk.png", 210),
      Topics("Inner Peace", "imgs/levitation-woman-two.png", 167),
    ];
  }
}
