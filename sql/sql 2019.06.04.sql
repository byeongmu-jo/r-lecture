INSERT INTO eagles2 (backno, neme, highschool, POSITION) VALUES
	(1, '최윤석', '3루수', '광주동성고', '우투좌타'),
	(2, '하주석', '우격수', '신일고', '우투좌타'),
	(3, '최재훈', '포수', '덕수고', '우투우타'),
	(4, '김재영', '투수', '서울고', '우사우타'),
	(5, '박주홍', '투수', '광주일고', '좌투좌타'),
	(6, '박상원', '투수', '휘문고', '우투우타'),
	(7, '임준섭', '투수', '개성고', '좌투좌차'),
	(8, '김진영', '투수', '덕수고', '우투우타'),
	(9, '정근우', '중견수', '부산고', '우투우타');

UPDATE eagles2 SET highschool = '광주제일고', hand='우투우타'
	WHERE backno=7;
	
SELECT * FROM eagles2;

DELETE FROM eagles2 WHERE backno=1 OR 2;

INSERT INTO eagles2 (backno, neme, highschool, POSITION) VALUES
(1, '강경학', '3루수', '광주동성고', '우투좌타')
(2, '하주석', '우격수', '신일고', '우투좌타');

CREATE VIEW PIicher  AS SELECT * FROM eagles2
	WHERE POSITION LIKE '투수';
CREATE VIEW outPIicher  AS SELECT * FROM eagles2
	WHERE POSITION LIKE '외야수';	
CREATE VIEW inPIicher  AS SELECT * FROM eagles2
	WHERE POSITION LIKE '내야수';	

SELECT * FROM outPIicher;
SELECT * FROM inPIicher;

DROP VIEW inPIicher;

CREATE VIEW inPIicher
	AS SELECT (backno, neme, highschool, POSITION)
	
SELECT * FROM eagels2;
ALTER TABLE eagles2 ADD birthday DATE;
UPDATE eagles2 SET birthday='1989-05-18' WHERE backno=1;
SELECT * FROM eagles2;

UPDATE eagles2 SET birthday='1994-02-25' WHERE backno=1;
UPDATE eagles2 SET birthday='1996-10-29' WHERE backno=2;
UPDATE eagles2 SET birthday='1987-03-28' WHERE backno=3;
UPDATE eagles2 SET birthday='1993-07-23' WHERE backno=4;
UPDATE eagles2 SET birthday='1988-08-18' WHERE backno=5;
UPDATE eagles2 SET birthday='1990-07-28' WHERE backno=6;
UPDATE eagles2 SET birthday='1991-11-18' WHERE backno=7;
UPDATE eagles2 SET birthday='1994-06-22' WHERE backno=8;
UPDATE eagles2 SET birthday='1992-09-09' WHERE backno=9;
UPDATE eagles2 SET birthday='1988-08-18' WHERE backno=10;
UPDATE eagles2 SET birthday='1985-06-11' WHERE backno=11;


SELECT * FROM eagles2 ORDER BY birthday;

SELECT NAME, DATE_FORMAT(birthday, "%y%m%d") FROM eagles2;

CREATE TABLE girl_group (
	_id INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(32) NOT NULL,
	debut DATE NOT NULL,
	hit_song_Id INT
	) DEFAULT CHARSET=UTF8;

CREATE TABLE song ( 
	_id INT PRIMARY KEY AUTO_INCREMENT, 
	title VARCHAR(32) NOT NULL, 
	lyrics VARCHAR(32) 
) DEFAULT CHARSET=UTF8;

INSERT INTO song VALUES (101, 'Tell Me', 'tell me tell me tetetete tel me');

INSERT INTO song (title, lyrics) VALUES
	('Gee', 'GEE GEE GEE GEE GEE BABY BABY'),
	('미스터', '이름이 뭐야 미스터'), 
	('Abracadabra', '이러다 미쳐 내가 여리여리'),
	('8282', 'Give me a call Baby baby'), 
	('기대해', '기대해'),
	('I Don\'t car', '다른 여자들의 다리를'), 
	('Bad Girl Good Girl', '앞에선 한 마디 말도'),
	('피노키오', '뉴예삐오'),
	('별빛달빛', '너는 내 별빛 내 마음의 별빛'), 
	('A', 'A 워오우 워오우워 우우우'),
	('나혼자', '나 혼자 밥을 먹고 나 혼자 영화 보고'), 
	('LUV', '설레이나요 '),
	('짧은치마', '짧은 치마를 입고 내가 길을 걸으면'),
	('위아래', '위 아래 위위 아래'),
	('Dumb Dumb' , '너 땜에 하루종일');

INSERT INTO girl_group (name, debut, hit_song_id) VALUES
	('원더걸스', '2007-02-10', 101),
	('소녀시대', '2007-08-02', 102), 
	('카라', '2009-07-30', 103),
	('브라운아이드걸스', '2008-01-17', 104), 
	('다비치', '2009-02-27', 105),
	('2NE1', '2009-07-08', 107), 
	('f(x)', '2011-04-20', 109),
	('시크릿', '2011-01-06', 110), 
	('레인보우', '2010-08-12', 111);
	
INSERT INTO girl_group (name, debut) VALUES
	('애프터 스쿨', '2009-11-25'), 
	('포미닛', '2009-08-28');	

SELECT gg._id, gg.NAME, s.title
	FROM girl_group AS gg
	right JOIN song AS s
	ON s._id = gg.hit_song_Id;

#1	
SELECT * FROM girl_group WHERE debut BETWEEN '2009-01-01' AND '2009-12-31'

#2
SELECT gg._id, gg.NAME, s.title
	FROM girl_group AS gg
	right JOIN song AS s
	ON s._id = gg.hit_song_Id
SELECT * FROM girl_group WHERE debut AND debut >= '2009-01-01';

#3
SELECT * FROM country WHERE count(continent) GROUP BY continent;
셀릭드 컨틴언트, 카운트(*), 섬(쥐엔피), (평군)
르폴 건트리 구릅 바이 컨틴언트


SELECT co.Continent,NAME,LocalName,Population FROM country 

	WHERE continent='Asia' 
	ORDER BY Population LIMIT 10;


SELECT Continent,NAME,LocalName,Population FROM country WHERE continent='Asia' 
	ORDER BY Population LIMIT 10;
	
#5
SELECT c.NAME AS '도시명', c.population AS '인구수',
	cl.LANGUAGE AS '언어명'
	FROM city AS c INNER JOIN countrylanguage AS cl
	ON  c.population=cl.CountryCode
	WHERE cl.IsOfficial=true
	ORDER BY c.population DESC LIMIT 10;


# 1) 2009년도에 데뷔한 걸그룹 정보를 조회
use ezen;
SELECT * FROM girl_group
  WHERE debut BETWEEN '2009-01-01' AND '2009-12-31';

# 2) 2009년도에 데뷔한 걸그룹의 히트송은? 
SELECT gg.NAME AS '걸그룹이름', gg.debut AS '데뷔일', s.title AS '제목'
  FROM girl_group AS gg 
  INNER JOIN song AS s
  ON gg._id = s.girl_group_id 
  WHERE debut BETWEEN '2009-01-01' AND '2009-12-31';

# 3) 대륙별로 국가숫자, GNP의 합, 평균 국가별 GNP는?
use world;
SELECT Continent, COUNT(*), SUM(gnp), AVG(gnp)
  FROM country GROUP BY Continent;

# 4) 아시아 대륙에서 인구가 가장 많은 도시 10개를 내림차순으로 보여줄 것
SELECT co.Continent AS '대륙명', co.NAME AS '국가명',
       c.NAME AS '도시명', c.Population AS '인구수'
  FROM country AS co
  INNER JOIN city AS c
  ON co.CODE=c.CountryCode
  WHERE co.Continent='Asia'
  ORDER BY c.Population DESC LIMIT 10;

# 5) 전 세계에서 인구가 가장 많은 10개 도시에서 사용하는 공식언어는?
SELECT c.NAME AS '도시명', c.Population AS '인구수',
       cl.Language AS '언어명'
  FROM city AS c 
  INNER JOIN countrylanguage AS cl
  ON c.CountryCode=cl.CountryCode 
  WHERE cl.IsOfficial=true
  ORDER BY c.Population DESC LIMIT 10;

