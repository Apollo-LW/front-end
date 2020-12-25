class Chapter {
  String lectureId;
  String title;
  bool isPublic;
  bool isActive;
  String ownerId;
  List items;

  Chapter({
    this.lectureId,
    this.title,
    this.isPublic,
    this.isActive,
    this.ownerId,
    this.items,
  });
}
