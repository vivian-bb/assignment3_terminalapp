# Term1_Assignment3_Terminal_Application

---

##Source control

---

Click [My Github](https://github.com/vivian-bb/assignment3_terminalapp "Vivian's Github")

##### Add greeting part and ask user to input name

##### Set the tossing coin code, create a new index file restucture all the code

##### Create method.rb, put most method in this file, finish tossing coin part

##### Add input function that input user's name to client-data file

##### Add the colorize to gemfile

##### Apply colorize method to the user's name

##### File I/O function that add the user to client_data.rb successfully

##### Add espeak-ruby gem in gemfile

##### Change the color of 'Start' and greeting words

##### Add the slide to documentation file

##### Fixed the test error

##### Add the testfile to the documentation file

##### Add the manual test screenshot

##### Adjust the test error

##### Restucture as Deliverable standard

### Software Development Plan

### Small Marketing Event Check-in Application

---

#### Develop a statement of purpose and scope for your application

This app is design for provide to check-in service for organizer who need to running small size event and function. Most event will need one or two staff to work for check-in guests, the app will instead of paperwork and also automatic finish the lottery. Otherwise, the app also have the entertainment function that the user will get the lottery chance and choosing to play tossing coin game.

The user can input their namde and will get their client number, if the number is same as the lucky number the organizer set up for, the user will received congratulation message and get the present.

User also have option to play a tossing coin game, that they can choose play 1, 3 or 5 time. The result of game will display after they choose the menu.

The target audience is 5 ~ 35 people event.

---

#### Installation

---

##### The user who is require a guest check-in system

1. Download Ruby 2.7.1 or uper.
   [Click here](https://www.ruby-lang.org/en/news/2020/03/31/ruby-2-7-1-released/ "Ruby 2.7.1 released") to see the Ruby install menu.

2. Use [Ruby Bundler](https://bundler.io/ "Bundler") install the[ Ruby colorize gem](https://rubygems.org/ "Ruby 2.7.1 released").

##### How to run the application

1. Use command line, into the directory named " src/ ". Please make sure your laptop or PC had install the VS.CODE ( [Visual Studio Code](https://code.visualstudio.com/ "Bundler") ) or kind of other software.

```
cd src
code .
```

##### For lottery number setting

1. Please save all the clients data in client_data file and clear all data in this file.

```
/src/client_data.txt
```

2. Change the code on the method.rb in line 89.

```
/src/method.rb

if line_count == 8 || line_count == 18 ||  line_count == 28 ||  line_count == 38
```

Please change the number for which index number you want the client get the lottery.

---

#### Features

---

Feature 1

> The Check-in application have a smooth greeting function that can ask guests to input their name and response the check-in index number for guests.

Feature 2

> The Menu system was design for guests to check-in and also check their index number if is was same with the organizor setting number, they will get a winner message and this function will help event organizor to increase the attractive for customer.

Feature 3

> The application also have simple function that can provide entertainment for guests, tossing coin game is fun also have wide different theme possibility but it is "not too much game" for event that help people social with others.

---

#### Diagram

---

![Diagram!](../doc/diagram.png "diagram")

---

#### Manual testing

---

[Click here](https://docs.google.com/spreadsheets/d/1CLAdqfYu0Y8tO7SLcoBg99b9pW2JXJJpPiqGjf-vNW4/edit?usp=sharing "Manual testing") to see the original sheet of manual testing.

1. ![Manual-testing-feature!](../doc/feature.png "feature-testing1")
2. ![Manual-testing!](../doc/manualtest1.png "manual-testing1")
3. ![Manual-testing!](../doc/manualtest2.png "manual-testing1")
4. ![Manual-testing!](../doc/manualtest3.png "manual-testing1")

---

#### Working control flow

---

Use trello to control working tasks and management the project.
![trello!](../doc/trello.png "trello")
