# README

Primary Information
The URL of our website is https://expresscarrental.herokuapp.com.

The passwords and email ids of the below admin and super admin have been disabled for editing as it may affect other reviewers 

Admin:  stacey@gmail.com
Password: root

Superadmin:  nathen@gmail.com
Password: root

To check the edit functionalities, you could use the below admin and super admin email id and password

Admin:  laurie@gmail.com
Password: root

Superadmin:  james@gmail.com
Password: root

At the top of homepage, you can sign in with your account. And if you are a new user, click "Signup" button on the right.
To create an account, you need to input your first name, last name, email, password. An error will be raised if your email address has already been taken. An error will be raised if your password
 length is not matching 8 characters.
After created your account successfully, you can login. From the homepage you can see the list of all cars 
and reservation information. 
Functions
Add a car:  You can only add a car when your login with an admin account. At page list all cars 
click "Suggest Cars" button and click "New car" link, after inputting relevant information a car will be created. 

Delete/Edit a car: You can only delete or edit a car when you are an admin. At homepage click "Car Rental" button,
to delete a car click "destroy" link and to edit a car click "edit" link.
  
Search a car: Click the "List all cars" button, input relevant information and click "More details" then you will 
see the result.
View the list of all cars: Click "List all Cars" button.
Rent a car: At homepage click "List all cars" button, there will be a list of cars. Click "more details" button on 
the right, in the upcoming website there will be four buttons at the bottom, of which you can  
Click "Book this car	!" If you want to rent this car now. User can also suggest a car by entering its respective details.
A user can only rent one "available" car.

User can view the list of all reservations done and the current reservation by pressing on the respective buttons which will 
display all the information for that user. In the homepage user can press “Current Reservation” and “Reservations” to view all details.
Return a checked-out car: After you rent a car, the user information on the homepage will be changed, showing the attributes 
of the car, you rented. In the reservation page User can return the car with "Return Now!". And you can rent another car after returning the car.

User functions:
Navigations help - Available tabs
1) List cars - Here, the cars can be searched by model, manufacturer, style, availability, location
    a) Suggest car - The user can suggest a car for approval from admin or super admin
    b) Book car - The user can book a car by specifying start time and end time. Errors will be thrown if end time is before start time, start time is prior to current time.Booking time is less than 30mins or greater than 10hrs.
2)Reservation history - The user can view his past reservations
3)Current reservations - The user can view his current reservations
    a) Check out a car - the user can check out a car
    b)Check in a car - the user can check in a car
    c) Cancel a reservation - the user can cancel a reservation
4)Edit profile - the user can change name, email id, password.

Admin and Super admin functions
Navigations help - Available tabs
1) List cars - List of cars are listed
    a)Add a car
    b)delete a car
    c)view car
    d)approve cars
    e)edit existing car
2) View customers
    a)Edit customer details
    b)make as admin
    c)delete
    d)view his/her reservations
3) Reservation history
4) Current reservation
    a)Check out car for customer
    b)Check in car for customer
    c) Cancel reservation for customer
5) Edit profile
6) Book for customer
7) View admins
    a) view profile
    b)delete
    c) make super admin
8) View super admins

User controller and model has been tested.

When a car is booked or reserved under a user, the user cannot be deleted. A flash notice will
display, that informs that only after user has returned the car, then the user can be deleted.
A car can not be deleted if it is reserved or checked out. 
When a user is deleted, all the reservations of the user is deleted from the reservation table.
When a car is deleted, all the reservations of the car is deleted from the reservation table.

Points to be noted:
1. Admin can view and approve the suggestion from customer and add this car to the
application system.


   









This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
