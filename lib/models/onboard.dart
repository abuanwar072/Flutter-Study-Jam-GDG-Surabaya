class Onbord {
  final String image, title, description;
  final String? imageDarkTheme;

  Onbord({
    required this.image,
    required this.title,
    this.description = "",
    this.imageDarkTheme,
  });
}

final List<Onbord> onbordData = [
  Onbord(
    image: "assets/Illustration/Illustration-0.png",
    imageDarkTheme: "assets/Illustration/Illustration_darkTheme_0.png",
    title: "Find the item you’ve \nbeen looking for",
    description:
        "Here you’ll see rich varieties of goods, carefully classified for seamless browsing experience.",
  ),
  Onbord(
    image: "assets/Illustration/Illustration-1.png",
    imageDarkTheme: "assets/Illustration/Illustration_darkTheme_1.png",
    title: "Get those shopping \nbags filled",
    description:
        "Add any item you want to your cart, or save it on your wishlist, so you don’t miss it in your future purchases.",
  ),
  Onbord(
    image: "assets/Illustration/Illustration-2.png",
    imageDarkTheme: "assets/Illustration/Illustration_darkTheme_2.png",
    title: "Fast & secure \npayment",
    description: "There are many payment options available for your ease.",
  ),
  Onbord(
    image: "assets/Illustration/Illustration-3.png",
    imageDarkTheme: "assets/Illustration/Illustration_darkTheme_3.png",
    title: "Package tracking",
    description:
        "In particular, Shoplon can pack your orders, and help you seamlessly manage your shipments.",
  ),
  Onbord(
    image: "assets/Illustration/Illustration-4.png",
    imageDarkTheme: "assets/Illustration/Illustration_darkTheme_4.png",
    title: "Nearby stores",
    description:
        "Easily track nearby shops, browse through their items and get information about their prodcuts.",
  ),
];
