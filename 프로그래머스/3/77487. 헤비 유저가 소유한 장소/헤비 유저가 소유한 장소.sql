-- 코드를 입력하세요

SELECT ID, NAME, HOST_ID
FROM PLACES
WHERE HOST_ID IN (
      Select host_id
      From PLACES
      Group by host_id
      having count(host_id) > 1
     )
order by id


-- Select host_id
-- From PLACES
-- Group by host_id
-- having count(host_id) > 1

     