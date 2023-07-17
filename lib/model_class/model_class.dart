class Coffeeandbreakfast {
  late String url;
  late String name;
  late String qoute;
  late double Price;
  List<Coffeeandbreakfast> Bag = [];
  List<Coffeeandbreakfast> favorites = [];
  List<Coffeeandbreakfast> Menu = [];
  List<Coffeeandbreakfast> Coffees = [];
  List<Coffeeandbreakfast> breakfast = [];

  Coffeeandbreakfast(this.url, this.name, this.qoute, this.Price);

  void addMenu() {
    Coffeeandbreakfast coffee = Coffeeandbreakfast(
        'https://ksr-ugc.imgix.net/assets/037/671/681/9bc83e1a1296181a9e863e0413fde540_original.jpg?ixlib=rb-4.0.2&crop=faces&w=1552&h=873&fit=crop&v=1655418257&auto=format&frame=1&q=92&s=2156df26af9f35e9e83746b400baa9c3',
        'Coffee',
        'Freshly Brewed Coffee',
        5.00);
    this.Menu.add(coffee);
    Coffeeandbreakfast breakfast = Coffeeandbreakfast(
        'https://thumbs.dreamstime.com/b/breakfast-buffet-full-continental-english-coffee-orange-juice-salad-croissant-fruit-77238300.jpg',
        'BreakFast',
        'Healthy, Hot & Fresh',
        5.00);
    this.Menu.add(breakfast);
    Coffeeandbreakfast munchies = Coffeeandbreakfast(
        'https://www.sundayobserver.lk/sites/default/files/styles/large/public/news/2020/04/25/Pg-27-Baking.jpg?itok=8W-l5qxL',
        'Munchies',
        'perfectly Baked Goodies',
        5.00);
    this.Menu.add(munchies);
    Coffeeandbreakfast lunch = Coffeeandbreakfast(
        'https://images.immediate.co.uk/production/volatile/sites/30/2023/03/Sumac-turkey-stuffed-pittas-73482d5.jpg?quality=90&resize=556,505',
        'Lunch',
        'Healthy, Hot & Fresh',
        5.00);
    this.Menu.add(lunch);
    Coffeeandbreakfast fries = Coffeeandbreakfast(
        'https://www.thespruceeats.com/thmb/X_JGM04VusvkuGqTVan4QmBRqjI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/how-to-make-homemade-french-fries-2215971-hero-01-02f62a016f3e4aa4b41d0c27539885c3.jpg',
        'Fries',
        'Fresh & Crispy',
        5.00);
    this.Menu.add(fries);
    Coffeeandbreakfast drinks = Coffeeandbreakfast(
        'https://media.istockphoto.com/id/158268808/photo/fresh-citrus-juices.jpg?s=612x612&w=0&k=20&c=vflsrO3KXXtWfpOOzNZdBVgeIpLy21-OSUl-QPSgPmU=',
        'Drinks',
        'Healthy & Fresh',
        5.00);
    this.Menu.add(drinks);
  }

  void addCoffees() {
    Coffeeandbreakfast expresso = Coffeeandbreakfast(
        'https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee-500x375.png',
        'Expresso',
        'fully fresh coffee',
        4.35);
    Coffees.add(expresso);
    Coffeeandbreakfast chocofrappe = Coffeeandbreakfast(
        'https://www.nestleprofessional.in/sites/default/files/2021-08/Choco-Frappe.jpg',
        'Choco Frappe',
        'freshed baked',
        10.00);
    Coffees.add(chocofrappe);
    Coffeeandbreakfast caramelfrappe = Coffeeandbreakfast(
        'https://insanelygoodrecipes.com/wp-content/uploads/2021/01/Homemade-Caramel-Frappe-with-Chocolate-Chips-500x500.png',
        'Caramel Frappe',
        'fresh baked',
        10.00);
    Coffees.add(caramelfrappe);
  }

  void addbreakfast() {
    Coffeeandbreakfast chickenvigiepie = Coffeeandbreakfast(
        'https://images.eatsmarter.com/sites/default/files/styles/max_size/public/chicken-and-vegetable-pie-515170.jpg',
        'Chicken & vigie pie',
        'fully fresh coffee',
        4.35);
    breakfast.add(chickenvigiepie);
    Coffeeandbreakfast chococookies = Coffeeandbreakfast(
        'https://www.snixykitchen.com/wp-content/uploads/2020/02/Gluten-Free-Chocolate-Cookies-9-720x540.jpg',
        'Choco Cookies',
        'freshed baked',
        10.00);
    breakfast.add(chococookies);
    Coffeeandbreakfast strawberycake = Coffeeandbreakfast(
        'https://mykidslickthebowl.com/wp-content/uploads/2020/10/strawberry-pancakes-30.jpg',
        'Strawberry PanCake',
        'fresh baked',
        10.00);
    breakfast.add(strawberycake);
  }
}
