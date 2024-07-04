-- 코드를 입력하세요
SELECT '/home/grep/src/' ||BOARD_ID||'/'||FILE_ID||FILE_NAME||FILE_EXT AS FILE_PATH
FROM USED_GOODS_FILE
WHERE 1=1 
  AND BOARD_ID IN (SELECT BOARD_ID
                   FROM ( SELECT BOARD_ID 
                               , MAX(VIEWS) AS MAX_VIEW
                          FROM USED_GOODS_BOARD
                          GROUP BY BOARD_ID
                          ORDER BY MAX_VIEW DESC
                         )
                   WHERE ROWNUM = 1
                  )
ORDER BY FILE_ID DESC