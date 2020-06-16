CREATE TABLE noice(
n_num INT PRIMARY KEY,
n_writer VARCHAR(50) NOT NULL,
n_title VARCHAR(300) NOT NULL,
n_content VARCHAR(10000) NOT NULL,
n_regdate DATETIME NOT NULL,

n_status CHAR(1) NOT NULL, #1. 정상적인, 2. 삭제글(사용자), 3.삭제(관리자)
n_ip VARCHAR(200),
n_hit INT

INSERT INTO notice(n_num, n_write, n_title, n_content, n_regdate)
VALUES(1, '성영한','제목','내용', NOW());

SELECT n_num, n_write, n_title, n_content,
DATE_FORMAT(n_regdate, '%Y.%m.%d %d:%i')
from notice
ORDER BY n_num DESC
LIMIT 0, 10

UPDATE notice
ser n_writer='성영한1', n_title='제목1',n_content='내용1',
n_regdate = NOW()
WHERE n_num = 1;

DELETE FROM notice
WHERE n_num = 1;
)