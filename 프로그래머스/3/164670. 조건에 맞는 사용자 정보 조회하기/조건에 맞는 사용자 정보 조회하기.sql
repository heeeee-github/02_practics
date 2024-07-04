-- 코드를 입력하세요

SELECT USER_ID, NICKNAME
      , B.CITY || ' ' || B.STREET_ADDRESS1 || ' ' || B.STREET_ADDRESS2  AS "전체주소"
      , SUBSTR(TLNO,1,3) || '-' || SUBSTR(TLNO,4,4) || '-' || SUBSTR(TLNO,8,4) AS "전화번호"
FROM USED_GOODS_USER B
WHERE 1=1
  AND USER_ID IN( SELECT WRITER_ID
                  FROM USED_GOODS_BOARD
                  GROUP BY WRITER_ID
                  HAVING COUNT(BOARD_ID) >= 3
                )
ORDER BY USER_ID DESC