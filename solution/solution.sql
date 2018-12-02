-- 1.
  SELECT book_id, book_name, max_reservation_time
  FROM books B
  WHERE max_reservation_time >
  (SELECT AVG(max_reservation_time) FROM books
  WHERE library = B.library);

-- 2.
-- 2.1.
  SELECT COUNT(id), posts.mentor_name FROM posts INNER JOIN likes ON post_id=id GROUP BY posts.mentor_name;

-- 2.2.
  SELECT location, post_id FROM mentors INNER JOIN likes ON name=mentor_name;

-- 3. by Emily
SELECT
  location,
  AVG(total_likes)::integer

FROM (
  SELECT
    location,
    COUNT(l.*) "total_likes"

  FROM mentors auth
  JOIN posts p ON p.mentor_name = auth.name
  JOIN likes l ON l.post_id = p.id

  GROUP BY
    p.id,
    auth.location
) AS Q1

GROUP BY location;
