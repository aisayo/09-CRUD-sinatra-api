Order.create(name: Faker::Name.name, date: Faker::Date.in_date_period)
Order.create(name: Faker::Name.name, date: Faker::Date.in_date_period)
Order.create(name: Faker::Name.name, date: Faker::Date.in_date_period)

Pizza.create(name: "Cheese", ingredients: "cheese", desc: "yummy", order_id: Order.all.sample.id)
Pizza.create(name: "MeatLovers", ingredients: "cheese", desc: "yummy", order_id: Order.all.sample.id)
Pizza.create(name: "Vegan", ingredients: "cheese", desc: "yummy", order_id: Order.all.sample.id)

P1 = Pizza.create(name: "Cheese", desc: "Basic cheese", ingredients: "Cheese, dough", order_id: 1)
P2 = Pizza.create(name: "Mushrooms", desc: "Basic mushrooms", ingredients: "Mushrooms, dough", order_id: 2)

O1 = Order.create(name: "Order 1", date: Time.now())
O2 = Order.create(name: "Order 2", date: Time.now())