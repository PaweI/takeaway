Taks_2, Friday challenge at Makers Academy.

Write a Takeaway app.
Implement the following functionality:
list of dishes with prices
placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
The text sending functionality should be implemented using Twilio API. You'll need to register for it. It’s free.
Use twilio-ruby gem to access the API
Use a Gemfile to manage your gems
Make sure that your Takeaway class is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
However, if your Takeaway class is loaded into IRB and the order is placed, the text should actually be sent
A free account on Twilio will only allow you to send texts to "verified" numbers. Use your mobile phone number, don't worry about the customer's mobile phone.

Was advised to use next classes: Dish, Order, Message, Menu, Customer, Takeway.

#####CRC

**Class Takeaway:**

Responsibilities               | Collaborators
-------------------------------|-------------------------
1. Take order from customer    | 1. Dish
2. Send message to customer    | 2. Customer
   once order received         | 3. Menu
                               | 4. Message
                               | 5. Order




**Class Menu:**

Responsibilities               | Collaborators
-------------------------------|-------------------------
1. List all dishes available   | 1. Dish
   and their prices            | 2. Takeaway
2. Be able to add new dish     |
3. Be able to delete dish      |

**Class Dish:**

Responsibilities               | Collaborators
-------------------------------|-------------------------
1. Create new instance of dish | 1. Menu
2. Show descrition of the dish | 
3. Ahow price of the dish      |

**Class Order:**

Responsibilities               | Collaborators
-------------------------------|-------------------------
1. List dishes placed to order | 1. Menu
2. Show their prices           | 2. Takeaway
3. Show total amount to pay    |

**Class Customer:**

Responsibilities               | Collaborators
-------------------------------|-------------------------
1. Choose dishes from the menu | 1. Menu
2. Place an order              | 2. Order

**Class Message:** 

Responsibilities               | Collaborators
-------------------------------|-------------------------
1. Send message to customer    | 1. Customer
   once  order recieved        | 2. Takeaway        
                                          