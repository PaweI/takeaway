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

Class Takeaway:

responsibilities | collaborators 
--------------------------------
initialize takeaway app | Menu
take order from customer | Dish
send message to customer once order received | Order
create new dish | Customer
place dish to the menu | Message

Class Menu
responsibilities | collaborators 
--------------------------------
list all dishes available and their prices | Dish
be able to add new dish | Takeaway
be able to delete dish |

Class Dish
responsibilities | collaborators 
--------------------------------
show descrition of the dish | Menu
show price of the dish |

Class Order
responsibilities | collaborators 
--------------------------------
list dishes placed to order | Menu
show their prices | Takeaway
show total amount to pay |

Class Customer
responsibilities | collaborators 
--------------------------------
open Takeaway app | Takeaway
choose dishes from the menu | Menu
place an order | Order
receive message about order | Message

Class Message 
responsibilities | collaborators 
--------------------------------
send message to customer once order recived | Customer
 | Takeaway