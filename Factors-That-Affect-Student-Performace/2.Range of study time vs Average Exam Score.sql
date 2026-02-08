-- avg_exam_score_by_hours_studied_range
-- Add solution code below 
SELECT  
	CASE 
	WHEN public.student_performance.hours_studied BETWEEN 1 AND 5 THEN '1-5 hours'
	WHEN public.student_performance.hours_studied BETWEEN 6 AND 10 THEN '6-10 hours'
	WHEN public.student_performance.hours_studied BETWEEN 11 AND 15 THEN '11-15 hours'
	ELSE '16+ hours'
	END AS hours_studied_range,
	AVG(public.student_performance.exam_score)
	AS avg_exam_score
	FROM public.student_performance
	GROUP BY hours_studied_range
	ORDER BY avg_exam_score DESC
;

-- This shows that the more hours spent on studying, the higher the average exam score
