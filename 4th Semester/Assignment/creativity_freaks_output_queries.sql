
-- STUDENT PANEL QUERIES

-- 1. Student এর এনরোল করা সব কোর্স
SELECT c.title, e.progress, e.enrolled_at
FROM enrollments e
JOIN courses c ON e.course_id = c.id
WHERE e.user_id = [STUDENT_ID];

-- 2. Student এর সম্পূর্ণ Progress (Avg)
SELECT AVG(progress) AS average_progress
FROM enrollments
WHERE user_id = [STUDENT_ID];

-- 3. Student কতগুলো কোর্সে এনরোল করেছে
SELECT COUNT(*) AS total_enrollments
FROM enrollments
WHERE user_id = [STUDENT_ID];


-- INSTRUCTOR PANEL QUERIES

-- 1. Instructor কর্তৃক তৈরি সব কোর্স
SELECT id, title, created_at
FROM courses
WHERE instructor_id = [INSTRUCTOR_ID];

-- 2. Instructor এর একটি কোর্সে কতজন এনরোল করেছে
SELECT COUNT(*) AS total_students
FROM enrollments
WHERE course_id = [COURSE_ID];

-- 3. Instructor এর সব কোর্সে মোট এনরোলমেন্ট
SELECT COUNT(*) AS total_enrollments
FROM enrollments
WHERE course_id IN (
    SELECT id FROM courses WHERE instructor_id = [INSTRUCTOR_ID]
);


-- ADMIN PANEL QUERIES

-- 1. মোট ইউজারের সংখ্যা (রোল অনুযায়ী)
SELECT role, COUNT(*) AS total_users
FROM users
GROUP BY role;

-- 2. মোট কোর্স সংখ্যা
SELECT COUNT(*) AS total_courses
FROM courses;

-- 3. প্রতিটি ক্যাটেগরিতে কয়টি কোর্স রয়েছে
SELECT cat.name AS category_name, COUNT(c.id) AS total_courses
FROM courses c
JOIN categories cat ON c.category_id = cat.id
GROUP BY cat.name;

-- 4. আজকের নতুন ইউজার
SELECT * FROM users
WHERE DATE(created_at) = CURDATE();


-- COMMUNITY / NOTIFICATION QUERIES

-- 1. কোনো ইউজারের পোস্ট
SELECT * FROM posts
WHERE user_id = [USER_ID]
ORDER BY created_at DESC;

-- 2. একটি পোস্টের কমেন্টগুলো
SELECT comments.*, users.name
FROM comments
JOIN users ON comments.user_id = users.id
WHERE post_id = [POST_ID]
ORDER BY created_at ASC;

-- 3. ইউজারের সব unread notifications
SELECT * FROM notifications
WHERE user_id = [USER_ID] AND is_read = 0;


-- DASHBOARD SUMMARY QUERIES

-- Total Courses
SELECT COUNT(*) FROM courses;

-- Total Students
SELECT COUNT(*) FROM users WHERE role = 'student';

-- Total Instructors
SELECT COUNT(*) FROM users WHERE role = 'instructor';

-- Total Posts
SELECT COUNT(*) FROM posts;
