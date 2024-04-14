use learning_platform;

-- Q. write a SQL query to get the assignment details with its corresponding lessons.

select a.assignment_id,a.title,l.title as lesson_title, a.deadline from assignments a join lessons l on l.lesson_id = a.lesson_id group by a.title order by l.title;


-- Q. Write an SQL query to find users who have completed at least one lesson in a specific course using a subquery.  

select user_id, username from users where user_id IN (select user_id from user_progress where completed = True);


-- Q. Write an SQL query to calculate the average completion rate of lessons across all courses.


-- ** if any issue occur try changing the group_by rule in mysql workbench by using commands below --> **
-- SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
-- SET GLOBAL sql_mode=(SELECT concat(@@sql_mode,',ONLY_FULL_GROUP_BY'));

select progress_id,progress from user_progress group by course_id;


-- Q. - Write an SQL query to update a user's progress status to completed for a specific lesson.

update user_progress set completed = True where lesson_id = 6;


-- Q. - Write an SQL query to list all courses along with the total number of lessons in each course.

select c.course_id,c.title,count(l.course_id) as no_of_lessons from courses c join lessons l on c.course_id= l.course_id group by l.course_id;


-- Q.  Write an SQL query to create a view that displays the progress of users in a specific course.

create view course_progress as select user_id,course_id,completed ,progress from user_progress where course_id = 2;
select * from course_progress;


-- Q. Query to generate a user enrollment trend report by month

select month(registration_date) AS registration_month, COUNT(registration_date) AS registration_count FROM users GROUP BY registration_month order by registration_count desc;


-- Q. Query to generate a course progress report showing completion rates

select c.course_id,c.title,count(u.course_id) as completion_count from user_progress as u join courses as c on c.course_id = u.course_id where completed = 1 group by course_id; 


-- Q. Write an SQL query to retrieve all users who have not enrolled in any course using a LEFT JOIN.

select u.user_id,u.username,u.email from users u Left join user_progress c  on u.user_id = c.user_id where c.course_id is null;


-- Q. Write an SQL query to find courses with the highest number of enrolled users using a subquery.

-- ** if any issue occur try changing the group_by rule in mysql workbench by using commands below --> **
-- SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
-- SET GLOBAL sql_mode=(SELECT concat(@@sql_mode,',ONLY_FULL_GROUP_BY'));

-- another query below is without using subquery -->
-- select course_id,count(distinct(user_id)) as user_count from user_progress group by course_id order by course_id;

SELECT course_id, COUNT(DISTINCT user_id) AS enrolled_users_count
FROM user_progress
GROUP BY course_id
HAVING COUNT(DISTINCT user_id) = (
    SELECT MAX(user_count)
    FROM (
        SELECT COUNT(DISTINCT user_id) AS user_count
        FROM user_progress
        GROUP BY course_id
    ) AS course_counts
);


-- Q. Write an SQL query to perform a transaction that updates user progress and inserts a new record into the progress history table.

start transaction;

update user_progress set completed= 0 where user_id = 1;

insert into user_progress (user_id,course_id,lesson_id,completed)
values(11,3,5,0);

commit;


-- Q. Write an SQL query to create an index on a table column for faster retrieval.

create index emails on users(email);
show index from users;


-- Q. Write an SQL query to create a stored procedure that retrieves user progress data based on input parameters.

delimiter ??
create procedure progress(in newuser_id int,
						in newcourse_id int)
begin 
	
	select * from user_progress where course_id=newcourse_id and user_id = newuser_id; 
end; ??

delimiter ;

call progress(2,2);