-- avg_exam_score_by_study_and_extracurricular
-- Edit the query below as needed
SELECT public.student_performance.hours_studied AS hours_studied, AVG(public.student_performance.exam_score)
	AS avg_exam_score
FROM student_performance
	WHERE public.student_performance.extracurricular_activities = 'Yes'
	AND hours_studied > 10
	GROUP BY hours_studied
	ORDER BY hours_studied DESC;

-- This shows that studying more than 10 hours per week does impact exam performance. 
