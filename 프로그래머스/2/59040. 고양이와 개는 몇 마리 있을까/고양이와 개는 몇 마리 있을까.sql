-- 코드를 입력하세요
SELECT ANIMAL_TYPE , COUNT(1) AS COUNT
FROM ANIMAL_INS 
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE ASC