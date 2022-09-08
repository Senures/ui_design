class HomeModel {
  final String imgUrl;
  final String title;
  final String subTitle;

  HomeModel(
      {required this.imgUrl, required this.title, required this.subTitle});
}

List<HomeModel> horizontalList = [
  HomeModel(
      imgUrl: "assets/icons/hand-card-coin.png",
      title: "RECHARGE",
      subTitle: "Money"),
  HomeModel(
      imgUrl: "assets/icons/seo-and-web.png",
      title: "TRANSFER",
      subTitle: "Money"),
  HomeModel(
      imgUrl: "assets/icons/exchange.png", title: "EXCHANGE", subTitle: "Money")
];
