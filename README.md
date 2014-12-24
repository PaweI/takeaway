####Taks_2. Week 2, Friday challenge at Makers Academy!

####SYNOPSIS

Write a Takeaway app.

Implement the following functionality:

- list of dishes with prices

- placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".The text sending functionality should be implemented using Twilio API. 

- Use twilio-ruby gem to access the API

- Use a Gemfile to manage your gems

- Make sure that your Takeaway class is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
However, if your Takeaway class is loaded into IRB and the order is placed, the text should actually be sent

####MY APPROACH

Was advised to use next classes: Dish, Order, Message, Menu, Customer, Takeway.

I've got look at classes we were advised to implement and come up with some CRC cards for them. ==>

#####My CRC cards: 

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

####TECHNOLOGIES:

- *Ruby*

- *Rspec*

- *Twilio API for messaging*

#####PROGRAMMING CONCEPTS:

- *Test driven development (TDD)*

- *Object Oriented Design (OOD)*

- *Object Oriented Programming (OOP)*

- *Domain modeling*

- *Kanban*

####HOW TO RUN

you will need to run firstly

```
bundle
```
in order to install twilio-ruby gem.

Then you need to register with Twilio in order to get yours Authorisation tocken an Authorisation ID and put them into your .bash_profile as env variables:

```
export TWILIO_ID="your twilio id"
export TWILIO_TOCKEN="your twilio tocken"
```
and then run 

```
ruby ./takeaway_app.rb
```

####CODE SNIPPET

I really like my Dish Class :-)

![alt tag](https://github.com/PaweI/takeaway/blob/master/public/dish.png)

####FUTURE IMPROVEMENTS

I would like to improve messaging test in order to mock sending message. And want to avoid using message class, as it's seems unnecessary. 

                                          
