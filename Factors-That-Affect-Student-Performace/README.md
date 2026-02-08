📘 Student Performance Analysis — SQL Project
📌 Project Description
How can students improve their exam performance?
This intermediate SQL project explores a rich dataset containing multiple factors that influence academic success — including study habits, sleep patterns, attendance, tutoring, and extracurricular involvement.
Through a series of analytical SQL queries, the project investigates:
- Which behaviours correlate with higher exam scores
- Whether extracurricular participation enhances performance
- How sleep and study hours interact with academic outcomes
- How students rank relative to their peers without revealing sensitive information
By the end of this project, you’ll have a data‑driven understanding of the key drivers of student success and how different lifestyle factors contribute to academic achievement.

📊 About the Data
In a fast‑paced educational environment, understanding what helps students thrive is essential.
This dataset captures a wide range of variables related to student life — similar to how a city’s transport system must adapt to its residents, schools must adapt to the needs of their learners.
The project uses the student_performance table, which includes:

Column	Definition	Data type
attendance	Percentage of classes attended	float
extracurricular_activities	Participation in extracurricular activities	varchar (Yes, No)
sleep_hours	Average number of hours of sleep per night	float
tutoring_sessions	Number of tutoring sessions attended per month	integer
teacher_quality	Quality of the teachers	varchar (Low, Medium, High)
exam_score	Final exam score	float

This dataset allows us to explore behavioural patterns and identify which factors most strongly influence exam outcomes.

🧠 Key Questions & SQL Tasks
1. Do more study hours and extracurricular activities lead to better scores?
Analyze students who:
- study more than 10 hours per week, and
- participate in extracurricular activities
Return:
- hours_studied
- avg_exam_score
Group and sort by hours_studied (DESC).
Saved as: avg_exam_score_by_study_and_extracurricular.sql

2. Is there a sweet spot for study hours?
Categorize students into four study‑hour ranges:
- 1–5 hours
- 6–10 hours
- 11–15 hours
- 16+ hours
Calculate the average exam score for each range.
Return:
- hours_studied_range
- avg_exam_score
Sort by avg_exam_score (DESC).
Saved as: avg_exam_score_by_hours_studied_range.sql

3. What is each student’s relative rank in the class?
Assign ranks based on exam_score using a window function:
- Students with the same score share the same rank
- No ranks are skipped
- Highest score = rank 1
Return:
- attendance
- hours_studied
- sleep_hours
- tutoring_sessions
- exam_rank
Order by exam_rank (ASC) and limit to 30 students.
Saved as: student_exam_ranking.sql

🧾 Summary
This project demonstrates practical SQL skills including:
- Filtering and conditional logic
- Aggregations and grouping
- CASE expressions for categorization
- Window functions (DENSE_RANK)
- Sorting and limiting results
- Translating analytical questions into SQL logic
It provides a clear, data‑driven look at the habits and behaviours that influence student performance — offering insights that educators, students, and policymakers can use to support academic success.


