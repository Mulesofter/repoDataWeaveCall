%dw 2.0
output application/json
---
// Extracts the keys of the first car object in the input array.
// The function `keysOf` retrieves all the keys (property names) of the first object in `payload.cars`.
"Keys": keysOf(payload.cars[0]),

// Maps through the cars array and extracts the values of each car object.
// The function `map` iterates over the `cars` array.
// For each `car`, it applies `valuesOf` to extract all the values of that car object.
// This results in an array of arrays, where each inner array contains the values of a car object.
"Values": payload.cars map ((car) -> valuesOf(car))

{
  "Keys": [
    "car_make",  // The first property name of the car object.
    "car_model", // The second property name of the car object.
    "car_year",  // The third property name of the car object.
    "car_color"  // The fourth property name of the car object.
  ],
  "Values": [
    [
      "Toyota",  // The value of `car_make` for the first car.
      "Camry",   // The value of `car_model` for the first car.
      2021,      // The value of `car_year` for the first car.
      "Blue"     // The value of `car_color` for the first car.
    ],
    [
      "Honda",   // The value of `car_make` for the second car.
      "Civic",   // The value of `car_model` for the second car.
      2020,      // The value of `car_year` for the second car.
      "Red"      // The value of `car_color` for the second car.
    ],
    [
      "Ford",    // The value of `car_make` for the third car.
      "Mustang", // The value of `car_model` for the third car.
      2022,      // The value of `car_year` for the third car.
      "Black"    // The value of `car_color` for the third car.
    ]
  ]
}
