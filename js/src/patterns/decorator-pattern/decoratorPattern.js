import React, { useState } from "react";
import Button from "@ramsey-design-system/button";
import "@ramsey-design-system/button/dist/button.css";
import Stack from "@ramsey-design-system/stack";
import "@ramsey-design-system/stack/dist/stack.css";
import Heading from "@ramsey-design-system/heading";
import "@ramsey-design-system/heading/dist/heading.css";
import {
  DarkRoast,
  Decaf,
  Espresso,
  HouseBlend,
  SteamedMilk,
  Mocha,
  Soy,
  Whip,
} from "./decorator";

const DrinkView = ({ drink }) => {
  return (
    <div className="drinkView">
      <p className="description">{drink.getDescription()}</p>
      <p className="cost">{drink.getCost().toFixed(2)}</p>
    </div>
  );
};

export const DecoratorPattern = () => {
  var newDrink = new HouseBlend();
  const [drink, updateDrink] = useState(newDrink);

  const createDrink = (drinkClass) => {
    return new drinkClass();
  };

  const handleUpdateBase = (drinkClass) => {
    var base = createDrink(drinkClass);
    updateDrink(base);
  };

  const handleDecorate = (coffee, decorator) => {
    const updatedDrink = new decorator(coffee);
    updateDrink(updatedDrink);
  };

  return (
    <>
      <Heading isOnDarkCanvas level="1">
        Coffees:
      </Heading>
      <Stack>
        <Button onClick={() => handleUpdateBase(HouseBlend)}>
          House Blend
        </Button>
        <Button onClick={() => handleUpdateBase(DarkRoast)}>Dark Roast</Button>
        <Button onClick={() => handleUpdateBase(Decaf)}>Decaf</Button>
        <Button onClick={() => handleUpdateBase(Espresso)}>Espresso</Button>
      </Stack>

      <Heading isOnDarkCanvas level="1">
        Add-Ins:
      </Heading>
      <Stack>
        <Button onClick={() => handleDecorate(drink, SteamedMilk)}>
          Add Steamed Milk
        </Button>
        <Button onClick={() => handleDecorate(drink, Mocha)}>Add Mocha</Button>
        <Button onClick={() => handleDecorate(drink, Soy)}>Add Soy</Button>

        <Button onClick={() => handleDecorate(drink, Whip)}>Add Whip</Button>
      </Stack>

      <DrinkView drink={drink} />
    </>
  );
};
