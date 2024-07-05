 List<Map<String, dynamic>> myProjectsList = [
    {
      'langName': "Flutter",
      'projectName': 'Quiz APP ',
      'imageUrl': [ 'images/quiz-1.jpg' ,
                    'images/quiz-2.jpg',
                    'images/quiz-3.jpg',
                    'images/quiz-4.jpg'
                  ],
      'details':
          ''' 
The code creates a basic quiz application with a user interface that displays questions and answer options. It tracks the user's selections, calculates the score, and shows the final result with an option to retake the quiz. The use of state management ensures that the UI updates dynamically based on user interactions.
          '''
    },
    {
      'langName': "Flutter + Firebase",
      'projectName': 'Todo-List APP ',
      'imageUrl': ['images/todo-1.jpg',
                   'images/todo-2.jpg',
                   'images/todo-3.jpg',
                   'images/todo-4.jpg' 
                  ],
      'details':
          '''
1. LoginPage: User enters their name and clicks "GET STARTED".

2. WelcomePage: User is greeted with a welcome message and motivational text. Clicking "Continue" navigates to the next page.

3. CategoryPage: User views and manages their task categories. They can add, edit, or delete categories. Clicking a category navigates to the tasks specific to that category.

4. TasksPage: User views and manages tasks within the selected category. They can add new tasks with due dates, edit existing tasks, mark tasks as completed, or delete tasks.

These files form a cohesive application that enables users to manage their tasks efficiently, with a smooth user experience and real-time data synchronization using Firestore.
          '''
    },
    {
      'langName': "Flutter",
      'projectName': 'CodeX Technologies ',
      'imageUrl': [
                   'images/codex-1.jpg', 
                   'images/codex-2.jpg' ,
                   'images/codex-3.jpg' ,
                   'images/codex-4.jpg' ,
                   'images/codex-5.jpg' 
                  ],
      'details':
          '''
1.Login.dart:

Implements a login screen UI with text fields for email and password.
Uses form validation to ensure fields are not empty.
Upon successful login validation, navigates to the HomePage and displays a success message using SnackBar.

2.HomePage.dart:

Displays a home screen with personalized greetings and course recommendations.
Includes reusable widgets like courses and ImageCard for displaying courses with images.
Uses InkWell for interactive course cards that navigate to the TopicUI screen.

3.TopicUI.dart:

Shows topics related to a specific course (like Java Full Stack) with an image and navigation back to the HomePage.
Uses a list view to display topics dynamically based on the CodeList provided.
Each topic can be tapped to navigate to a detailed Codes screen.

4.Codes.dart:

Displays detailed information about a specific topic within a course (e.g., Java Full Stack).
Shows textual content and code snippets related to the topic.
Uses Flutter Highlighting to syntax-highlight code snippets based on the Java language.
Each file appears to contribute to a larger Flutter application likely focused on educational content delivery or a learning platform related to programming topics. 
          '''
    },
  ];



     
     
     