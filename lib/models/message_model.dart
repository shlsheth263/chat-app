import './users_model.dart';
class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
);

// USERS
final User greg = User(
  id: 1,
  name: 'Greg',
  imageUrl: 'assets/images/greg.jpg',
);
final User james = User(
  id: 2,
  name: 'James',
  imageUrl: 'assets/images/james.jpg',
);
final User john = User(
  id: 3,
  name: 'John',
  imageUrl: 'assets/images/john.jpg',
);
final User olivia = User(
  id: 4,
  name: 'Olivia',
  imageUrl: 'assets/images/olivia.jpg',
);
final User sam = User(
  id: 5,
  name: 'Sam',
  imageUrl: 'assets/images/sam.jpg',
);
final User sophia = User(
  id: 6,
  name: 'Sophia',
  imageUrl: 'assets/images/sophia.jpg',
);
final User steven = User(
  id: 7,
  name: 'Steven',
  imageUrl: 'assets/images/steven.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [sam, steven, olivia, john, greg];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'INS Exam Schedule',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '4:30 PM',
    text: 'ss',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:30 PM',
    text: 'ss',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'ss',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: '1:30 PM',
    text: 'ss',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: '12:30 PM',
    text: 'ss',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: greg,
    time: '11:30 AM',
    text: 'ss',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
     Message(
    sender: james,
    time: '9:10 PM',
    text: "Okay good.Updated in your schedule",
    isLiked: true,
    unread: true,
  ),
     Message(
    sender: currentUser,
    time: '9:10 PM',
    text: "Module 1 Completed.",
    isLiked: true,
    unread: true,
  ),
   Message(
    sender: james,
    time: '9:00 PM',
    text: "What's the progress of task- INS module 1, 2 3 ?",
    isLiked: true,
    unread: true,
  ),
    Message(
    sender: currentUser,
    time: '5:35 PM',
    text: 'Thanks',
    isLiked: true,
    unread: true,
  ),
    Message(
    sender: james,
    time: '5:30 PM',
    text: 'Monday : Module 1(first half)\nTuesday : Module 1(second half)\nWednesday : Module 2(first half) and revise Module 1.\nThursday : Module 2(second half)\nFriday : Module 3(first half) and revise Module 2.\nSaturday : Module 3(second half).\nSunday : Revise Module 1,2,3.',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '5:30 PM',
    text: 'Display my schedule',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:00 PM',
    text: 'Tasks to study Module 1, 2 and 3 added.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '3:00 PM',
    text: 'Yes.\nI have to study Module 1, 2 and 3.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:02 PM',
    text: 'Exam INS on 1st April 2020 added.\nDo you want to add the tasks of INS?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:02 PM',
    text: 'I have INS exam next Monday',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:00 PM',
    text: 'Hello Sahil,\nHow can i help you ?',
    isLiked: false,
    unread: true,
  ),
];
