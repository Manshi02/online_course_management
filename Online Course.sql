USE youtube;

SELECT * 
FROM online_course_engagement_data;

-- Query to Identify the Course Category which was completed.
SELECT 
    CourseCategory, 
    COUNT(*) AS NumberOfCompletions
FROM 
    online_course_engagement_data
WHERE CourseCompletion = 1
GROUP BY  CourseCategory
ORDER BY  NumberOfCompletions DESC; 
-- Number of completion of Programming Category is the highest.


-- Query to sort coursecategory on the basis of time spent.
SELECT 
    CourseCategory,
    sum(TimeSpentOnCourse) AS TotalTimeSpent
FROM 
    online_course_engagement_data
GROUP BY 
    CourseCategory
ORDER BY 
    TotalTimeSpent DESC;
-- Time Spent on Health Category is the highest.


-- Query to sort coursecategory on the basis of total number of videos watched.
SELECT 
    CourseCategory,
    sum(NumberOfVideosWatched) AS TotalNumberOfVideos
FROM 
    online_course_engagement_data
GROUP BY 
    CourseCategory
ORDER BY 
   TotalNumberOfVideos  DESC;
-- Total Number of Videos Watched of Business Category is the highest.


-- Query to sort coursecategory on the number of quizzes taken.
SELECT 
    CourseCategory,
    sum(NumberOfQuizzesTaken) AS TotalQuizzesTaken
FROM 
    online_course_engagement_data
GROUP BY 
    CourseCategory
ORDER BY 
   TotalQuizzesTaken  DESC;
-- Total Number of Quizzes Taken of Business Category is the highest.


-- Query to sort coursecategory on the number of quizzes taken.
SELECT 
    CourseCategory,
    sum(QuizScores) AS TotalQuizScore
FROM 
    online_course_engagement_data
GROUP BY 
    CourseCategory
ORDER BY 
   TotalQuizScore  DESC;
-- Total Quiz Score of Business Category is the highest.
   
-- Query to sort coursecategory on the course completion rate.
SELECT 
    CourseCategory,
    sum(CompletionRate) AS TotalCompletionRate
FROM 
    online_course_engagement_data
GROUP BY 
    CourseCategory
ORDER BY 
   TotalCompletionRate  DESC;
-- Completion Rate of Business Category is the highest.














