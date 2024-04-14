use learning_platform;

INSERT INTO users(username,email,password,registration_date) values
("JohnDoe123", "johndoe123@example.com", "P@ssw0rd", "2023-07-15 09:15:23"),
("EmilySmith456", "emilysmith456@example.com", "Secure123", "2022-11-28 10:30:45"),
("MichaelJohnson789", "michaeljohnson789@example.com", "P@ssw0rd123", "2023-04-02 11:45:12"),
("JessicaBrown234", "jessicabrown234@example.com", "StrongP@ssword", "2023-09-12 13:00:54"),
("DanielWilliams567", "danielwilliams567@example.com", "Secret123", "2022-08-05 14:20:30"),
("SarahTaylor890", "sarahtaylor890@example.com", "Pa$$w0rd!", "2023-10-18 15:40:18"),
("DavidMiller123", "davidmiller123@example.com", "SecurePassword", "2022-12-30 16:55:42"),
("EmmaJones456", "emmajones456@example.com", "P@ssw0rd!", "2023-03-07 18:10:57"),
("JamesAnderson789", "jamesanderson789@example.com", "StrongPassword", "2023-06-25 19:25:36"),
("OliviaDavis234", "oliviadavis234@example.com", "P@ssw0rd123", "2023-01-14 20:40:14"),
("MatthewWilson567", "matthewwilson567@example.com", "Secret!234", "2023-08-02 21:55:29"),
("SophiaMartinez890", "sophiamartinez890@example.com", "Pa$$w0rd456", "2023-12-11 23:10:47"),
("AndrewAnderson123", "andrewanderson123@example.com", "Secure@123", "2022-10-09 00:25:53"),
("IsabellaJackson456", "isabellajackson456@example.com", "P@ssw0rd!123", "2023-02-20 01:40:05"),
("WilliamThomas789", "williamthomas789@example.com", "StrongP@ss!", "2023-05-17 02:55:22"),
("AvaWhite234", "avawhite234@example.com", "Secure123!", "2022-11-29 04:10:38"),
("AlexanderClark567", "alexanderclark567@example.com", "P@ssword!", "2023-10-30 05:25:46"),
("MiaRodriguez890", "miarodriguez890@example.com", "Strong123!", "2023-09-21 06:40:01"),
("EthanLewis123", "ethanlewis123@example.com", "SecureP@ss", "2022-09-05 07:55:12"),
("MadisonLee456", "madisonlee456@example.com", "P@ssword123", "2022-07-12 09:10:29"),
("MichaelHarris789", "michaelharris789@example.com", "StrongP@ss123", "2022-12-18 10:25:47"),
("AbigailKing234", "abigailking234@example.com", "Secure!123", "2023-06-08 11:40:59"),
("DanielNelson567", "danielnelson567@example.com", "P@ssw0rd!", "2023-03-29 12:55:17"),
("SophieBaker890", "sophiebaker890@example.com", "StrongPassword123", "2023-08-14 14:10:28"),
("ChristopherEvans123", "christopherevans123@example.com", "Secure123!", "2022-12-07 15:25:45"),
("CharlotteGarcia456", "charlottegarcia456@example.com", "P@ss!word", "2023-01-25 16:40:57"),
("ElijahMartinez789", "elijahmartinez789@example.com", "Strong!123", "2022-10-19 17:55:06"),
("AmeliaLopez234", "amelialopez234@example.com", "SecureP@ss123", "2022-09-30 19:10:14"),
("BenjaminScott567", "benjaminscott567@example.com", "P@ssw0rd123!", "2022-12-04 20:25:27"),
("GraceAdams890", "graceadams890@example.com", "Strong!Password", "2023-05-09 21:40:38"),
("JacobGreen123", "jacobgreen123@example.com", "Secure!@123", "2023-07-27 22:55:49"),
("AveryPerez456", "averyperez456@example.com", "P@ssw0rd!@123", "2023-03-16 00:10:57"),
("SofiaTurner789", "sofiaturner789@example.com", "Strong123@", "2023-09-10 01:25:06"),
("LoganCampbell234", "logancampbell234@example.com", "SecureP@ssword", "2023-04-14 02:40:13"),
("HarperMitchell567", "harpermitchell567@example.com", "P@ssw0rd123@", "2023-05-02 03:55:28"),
("RyanRoberts890", "ryanroberts890@example.com", "Strong!Password123", "2022-12-26 05:10:39"),
("EllaBailey123", "ellabailey123@example.com", "Secure@P@ss", "2023-01-10 06:25:45"),
("JackGonzalez456", "jackgonzalez456@example.com", "P@ssw0rd@123", "2023-07-02 07:40:59"),
("AveryLopez789", "averylopez789@example.com", "Strong!Password!", "2022-11-28 08:55:12"),
("LiamHernandez234", "liamhernandez234@example.com", "SecureP@ss!123", "2023-08-09 10:10:28"),
("MiaKing567", "miaking567@example.com", "P@ss!word123", "2023-04-18 11:25:36"),
("WilliamGarcia890", "williamgarcia890@example.com", "Strong123@!", "2023-01-14 12:40:47"),
("SophiaTurner123", "sophiaturner123@example.com", "Secure123!@", "2022-11-14 12:40:47");

INSERT INTO courses (title, description, instructor_id)
VALUES
    ('Introduction to Programming', 'Learn the basics of programming', 1),
    ('Data Structures and Algorithms', 'Explore advanced data structures and algorithms', 2),
    ('Web Development Fundamentals', 'Learn how to create websites using HTML, CSS, and JavaScript', 3),
    ('Machine Learning Essentials', 'Discover the fundamentals of machine learning', 4),
    ('Database Design and SQL', 'Master relational database concepts and SQL queries', 5);

INSERT INTO lessons (course_id, title, content)
VALUES
    (1, 'Introduction to Programming Basics', 'This lesson covers basic programming concepts such as variables, data types, and control structures.'),
    (1, 'Functions and Loops', 'Learn about functions, loops, and conditional statements in programming.'),
    (2, 'Arrays and Linked Lists', 'Explore different data structures like arrays and linked lists.'),
    (3, 'HTML and CSS Fundamentals', 'Learn the basics of HTML tags, CSS styling, and layout techniques.'),
    (3, 'JavaScript Essentials', 'Understand core JavaScript concepts like variables, functions, and DOM manipulation.'),
    (4, 'Supervised Learning', 'Learn about supervised learning algorithms such as linear regression and logistic regression.'),
    (4, 'Unsupervised Learning', 'Explore unsupervised learning techniques like clustering and dimensionality reduction.'),
    (5, 'SQL Basics', 'Get started with SQL by learning about queries, tables, and basic database operations.'),
    (5, 'Advanced SQL Queries', 'Dive deeper into SQL with advanced query techniques, joins, and subqueries.');

INSERT INTO user_progress (user_id, course_id, lesson_id, completed, progress)
VALUES
    (1, 1, 1, TRUE, '2024-03-29 10:30:00'),
    (1, 1, 2, TRUE, '2024-03-29 12:15:00'),
    (2, 2, 3, TRUE, '2024-03-28 09:45:00'),
    (3, 2, 3, TRUE, '2024-03-28 11:20:00'),
    (3, 3, 4, False, '2024-03-30 08:00:00'),
    (3, 3, 5, FALSE, NULL),
    (4, 4, 6, TRUE, '2024-03-27 14:00:00'),
    (4, 3, 4, TRUE, '2024-03-27 14:00:00'),
    (4, 4, 7, False, '2024-03-27 16:30:00');
    
INSERT INTO assignments (lesson_id, title, description, deadline)
VALUES
    (1, 'Assignment 1: Variables and Control Structures', 'Write code to solve programming problems related to variables and control structures.', '2024-04-10 23:59:59'),
    (2, 'Assignment 2: Functions and Loops', 'Implement functions and loop constructs to solve programming challenges.', '2024-04-15 23:59:59'),
    (3, 'Assignment 1: Arrays and Linked Lists', 'Implement algorithms using arrays and linked lists.', '2024-04-12 23:59:59'),
    (4, 'Assignment 2: Sorting Algorithms', 'Implement various sorting algorithms and analyze their performance.', '2024-04-18 23:59:59'),
    (5, 'Assignment 1: Build a Simple Web Page', 'Create a basic web page using HTML and CSS.', '2024-04-14 23:59:59'),
    (6, 'Assignment 2: Interactive Web Elements with JavaScript', 'Add interactivity to web pages using JavaScript.', '2024-04-20 23:59:59');

INSERT INTO quizzes (lesson_id, title, questions)
VALUES
    (1, 'Quiz 1: Variables and Control Structures', '1. What is the result of 5 + 3?\nA) 8\nB) 10\nC) 12\n\n2. Which statement is used to perform a conditional check?\nA) if\nB) for\nC) while'),
    (2, 'Quiz 2: Functions and Loops', '1. What does the `return` statement do in a function?\nA) Exits the function and returns a value\nB) Continues to the next iteration in a loop\nC) Prints a message to the console\n\n2. Which loop is suitable for iterating a specific number of times?\nA) while loop\nB) do-while loop\nC) for loop'),
    (3, 'Quiz 1: Arrays and Linked Lists', '1. What is the time complexity of searching in an unsorted array?\nA) O(1)\nB) O(log n)\nC) O(n)\n\n2. What is a linked list?\nA) A linear data structure\nB) A hierarchical data structure\nC) A graph data structure'),
    (4, 'Quiz 2: Sorting Algorithms', '1. Which sorting algorithm has the worst-case time complexity of O(n^2)?\nA) Quick Sort\nB) Merge Sort\nC) Bubble Sort\n\n2. What is the advantage of using Merge Sort over Bubble Sort?\nA) Merge Sort is stable\nB) Merge Sort has better average-case performance\nC) Merge Sort is an in-place sorting algorithm');
