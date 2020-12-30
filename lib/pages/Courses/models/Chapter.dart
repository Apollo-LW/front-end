class Chapter {
  List items;
  final String chapterId, chapterName, error;
  final List<dynamic> chapterLectures, chapterResources;

  Chapter(
      {this.chapterId,
      this.chapterName,
      this.chapterLectures,
      this.chapterResources,
      this.error,
      this.items});

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
        chapterId: json['chapterId'],
        chapterName: json['chapterName'],
        chapterLectures: json['chapterLectures'],
        chapterResources: json['chapterResources'],
        error: "");
  }

  factory Chapter.fromError(String errorValue) {
    return Chapter(
        error: errorValue,
        chapterId: "",
        chapterName: "",
        chapterResources: null,
        chapterLectures: null);
  }
}
