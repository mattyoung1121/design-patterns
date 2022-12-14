class Beverage {
  getDescription() {
    return this.description;
  }

  getCost() {
    return this.cost;
  }
}

class CondimentDecorator extends Beverage {
  constructor(beverage) {
    super();
    this.beverage = beverage;
  }
}

// Coffees
class HouseBlend extends Beverage {
  description = "Delicious house blend coffee";
  cost = 0.89;
}

class DarkRoast extends Beverage {
  description = "Bold, dark roast coffee";
  cost = 0.99;
}

class Decaf extends Beverage {
  description = "Amazing coffee, with no caffeine";
  cost = 1.05;
}

class Espresso extends Beverage {
  description = "A double shot of our famous strong coffee";
  cost = 1.99;
}

// Condiments
class SteamedMilk extends CondimentDecorator {
  description = `${this.beverage.description}, Steamed Milk`;
  cost = this.beverage.cost + 0.1;
}

class Mocha extends CondimentDecorator {
  description = `${this.beverage.description}, Mocha`;
  cost = this.beverage.cost + 0.2;
}

class Soy extends CondimentDecorator {
  description = `${this.beverage.description}, Soy`;
  cost = this.beverage.cost + 0.15;
}

class Whip extends CondimentDecorator {
  description = `${this.beverage.description}, Whip`;
  cost = this.beverage.cost + 0.1;
}

export {
  HouseBlend,
  DarkRoast,
  Decaf,
  Espresso,
  SteamedMilk,
  Mocha,
  Soy,
  Whip,
};
