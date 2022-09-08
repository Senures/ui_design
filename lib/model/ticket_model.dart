class TicketModel {
  final String imgUrl;
  final String title;
 

  TicketModel(
      {required this.imgUrl, required this.title, });
}

List<TicketModel> ticketList = [
  TicketModel(
      imgUrl: "assets/icons/car.png", title: "Booking Car",),
  TicketModel(
      imgUrl: "assets/icons/airplane.png", title: "Booking flight", ),
  TicketModel(
      imgUrl: "assets/icons/train.png", title: "Booking Train", ),
       TicketModel(
      imgUrl: "assets/icons/bus.png", title: "Booking bus", ),
       TicketModel(
      imgUrl: "assets/icons/pay.png", title: "Pay bill", ),
       TicketModel(
      imgUrl: "assets/icons/shop.png", title: "Shoping", )
];
