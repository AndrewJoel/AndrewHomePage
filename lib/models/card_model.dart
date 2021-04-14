class CardModel {
  String user;
  String cardNumber;
  String cardExpired;
  String cardType;
  int cardBackground;
  String cardElementTop;
  String cardElementBottom;

  CardModel(this.user, this.cardNumber, this.cardExpired, this.cardType,
      this.cardBackground, this.cardElementTop, this.cardElementBottom);
}

List<CardModel> cards = cardData.map(
  (item) => CardModel(
    item['user'],
    item['cardNumber'],
    item['cardExpired'],
    item['cardType'],
    item['cardBackground'],
    item['cardElementTop'],
    item['cardElementBottom'],
  ),
).toList();

var cardData = [
  {
    
    "cardType": "assets/images/nike_photo.png",
    "cardBackground": 0xFF1E1E99,
    
  },
  {
   
    "cardType": "assets/images/uber_photo.png",
    "cardBackground": 0xFFFF70A3,
    
  },
  {
   
    "cardType": "assets/images/nike_photo.png",
    "cardBackground": 0xFF1E1E99,
  
  },
  {
    
    "cardType": "assets/images/uber_photo.png",
    "cardBackground": 0xFFFF70A3,
    
  },
];
List<CardModel> cards2 = cardData2.map(
  (item) => CardModel(
    item['user'],
    item['cardNumber'],
    item['cardExpired'],
    item['cardType'],
    item['cardBackground'],
    item['cardElementTop'],
    item['cardElementBottom'],
  ),
).toList();
var cardData2 = [
  {
    
    "cardType": "assets/images/nike_photo.png",
    "cardBackground": 0xFFE53935,
   
  },
  {
    
    "cardType": "assets/images/uber_photo.png",
    "cardBackground": 0xFFF4511E,
    
  },
  {
    
    "cardType": "assets/images/nike_photo.png",
    "cardBackground": 0xFFE53935,
    
  },
  {
    
    "cardType": "assets/images/uber_photo.png",
    "cardBackground": 0xFFF4511E,
    
  },
];