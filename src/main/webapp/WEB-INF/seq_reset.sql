delete from USERFOOD;
drop sequence USERFOOD_idx_seq;
create sequence USERFOOD_idx_seq;

select * from userfood;

select * from freeboard;
select count(id) from freeboard;


delete from DIET;
drop sequence DIET_idx_seq;
create sequence DIET_idx_seq;

select * from diet;
select * from freeboard;
select * from userregister;

select * from diet where gup = 0;

drop table freeboard;

delete from freeboard;
drop sequence freeboard_idx_seq;
create sequence freeboard_idx_seq;

insert into freeboard (idx, subject, content, writeDate, hit, name, id, realfilepath)
values (freeboard_idx_seq.nextval, '1111', '1111이다~', '2023-09-25', 0, '관리자', 'admin', '');
insert into freeboard (idx, subject, content, writeDate, hit, name, id, realfilepath)
values (freeboard_idx_seq.nextval, '2222', '2222이다~', '2023-09-25', 0, '관리자', 'admin', '');
insert into freeboard (idx, subject, content, writeDate, hit, name, id, realfilepath)
values (freeboard_idx_seq.nextval, '3333', '3333이다~', '2023-09-25', 0, '관리자', 'admin', '');
insert into freeboard (idx, subject, content, writeDate, hit, name, id, realfilepath)
values (freeboard_idx_seq.nextval, '4444', '4444이다~', '2023-09-25', 0, '관리자', 'admin', '');
insert into freeboard (idx, subject, content, writeDate, hit, name, id, realfilepath)
values (freeboard_idx_seq.nextval, '5555', '5555이다~', '2023-09-25', 0, '남현서', 'aa', '');
insert into freeboard (idx, subject, content, writeDate, hit, name, id, realfilepath)
values (freeboard_idx_seq.nextval, '6666', '와우~', '2023-09-25', 0, '남현서', 'aa', '');
commit;

delete from SHAREDIET;
drop sequence SHAREDIET_idx_seq;
create sequence SHAREDIET_idx_seq;

  CREATE TABLE "SHAREDIET" 
   (   "IDX" NUMBER NOT NULL ENABLE, 
   "FOODNAME" VARCHAR2(2000 BYTE), 
   "KCAL" FLOAT(20), 
   "CARBS" FLOAT(20), 
   "PROTEIN" FLOAT(20), 
   "FAT" FLOAT(20), 
   "DIETDATE" VARCHAR2(200 BYTE), 
   "DIETTIME" VARCHAR2(200 BYTE), 
   "GUP" NUMBER NOT NULL ENABLE, 
    CONSTRAINT "SHAREDIET_PK" PRIMARY KEY ("IDX")
);
commit;
select * from SHAREDIET;

  CREATE TABLE "FREEBOARD" 
   (   
    "IDX" NUMBER(*,0) NOT NULL ENABLE, 
	"SUBJECT" VARCHAR2(200 BYTE) NOT NULL ENABLE, 
	"CONTENT" VARCHAR2(3000 BYTE) NOT NULL ENABLE, 
	"WRITEDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"HIT" NUMBER(*,0) DEFAULT 0, 
	"NOTICE" CHAR(3 BYTE) DEFAULT 'NO', 
	"PICTURE" VARCHAR2(2000 BYTE) DEFAULT 'no picture', 
	"COMMENTCOUNT" NUMBER(*,0) DEFAULT 0, 
	"NAME" VARCHAR2(20 BYTE), 
	"ID" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"REALFILEPATH" VARCHAR2(2000 BYTE), 
	"SHAREDIET_GUP" NUMBER DEFAULT 0 NOT NULL ENABLE, 
   	"SHARETAG" VARCHAR2(3 BYTE) DEFAULT 'NO', 
	 CONSTRAINT "FREEBOARD_PK" PRIMARY KEY ("IDX")
  );


delete from food;
drop sequence food_idx_seq;
create sequence food_idx_seq;

select * from food;

INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '꿩불고기', 368.8, 39.7, 33.5, 8.5);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '닭갈비', 595.61, 44.9, 45.9, 25.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '닭갈비', 558.47, 23.1, 45.5, 31.6);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '닭꼬치', 176.72, 13.35, 11.56, 8.57);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '더덕구이', 184, 31.1, 3.1, 5.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '돼지갈비', 240.32, 8.1, 19.5, 14.4);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '불고기', 395.29, 7.8, 34.4, 25.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '붕장어소금구이', 296.54, 11.6, 26, 16.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '소양념갈비구이', 989.15, 26.2, 60.1, 71.6);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '양념왕갈비', 480.81, 13.7, 27.1, 35.3);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '양념장어구이', 433.35, 8.8, 30.77, 30.56);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '임연수구이', 494, 3.5, 53.8, 29.4);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '햄버그스테이크', 457.7, 20.76, 26.96, 29.65);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '황태구이', 437.57, 26.9, 47.8, 15.4);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '훈제오리', 797.14, 12.08, 43.06, 64.07);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '게국지', 415.25, 31.7, 44.9, 12.1);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '곰치국', 419.29, 23.9, 54.3, 11.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '굴국밥', 683, 88.4, 42.4, 17.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '김치국', 89, 10.5, 5.4, 2.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '떡만둣국', 624.92, 110.71, 20.06, 11.32);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '만둣국', 434.05, 47.83, 21.43, 17.44);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '맑은감자국', 221, 34.6, 8.3, 5.5);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '매생이국', 119, 13.4, 10, 2.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '무된장국', 104, 14.7, 6.1, 2.4);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '미소된장국', 38, 2.8, 2.8, 1.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '바지락조개국', 157, 10.1, 22, 3.1);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '뼈다귀해장국', 714, 23.4, 74.6, 35.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '선지해장국', 312, 16.7, 49.3, 5.4);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '소고기무국', 123, 7.8, 14.2, 4);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '시래기된장국', 99, 11, 6.7, 3.1);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '올갱이국', 144.26, 13, 13.7, 4.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '우거지해장국', 154.38, 13.5, 11.9, 5.9);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '우렁된장국', 245, 19.2, 24.6, 7.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '홍합미역국', 167, 11.6, 19.7, 4.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '황태해장국', 181.7, 5.7, 24.5, 6.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '고추잡채', 256.77, 26.17, 10.99, 12.01);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '난자완스', 346.25, 19.15, 21.63, 20.35);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '도토리묵말이', 462.39, 89.7, 6.8, 8.5);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '라조기', 398.99, 26.23, 20.66, 23.49);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '물회', 529.36, 55.3, 34.4, 18.9);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '생선물회', 577.97, 82.5, 34.3, 12.3);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '소고기샤브샤브', 263.75, 14.7, 29.1, 9.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '오징어순대', 466.86, 58.3, 45.7, 5.6);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '초당순두부', 522.69, 15.8, 49.1, 29.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '해파리냉채', 91, 13.4, 6.2, 1.4);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '고들빼기', 55.53, 10.93, 1.58, 0.61);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '열무얼갈이김치', 17.68, 2.61, 1.07, 0.33);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '미나리나물', 29.53, 2.24, 1.02, 1.83);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '취나물', 74.1, 3.31, 1.37, 6.15);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '경단(깨)', 319.47, 74.22, 4.44, 0.54);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '경단(콩)', 314.32, 74.03, 3.51, 0.46);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '기피편', 219.97, 48.99, 5.45, 0.25);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '녹두시루떡', 246.07, 48.08, 7.74, 2.53);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '메밀전병', 167.83, 21.62, 6.18, 6.29);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '무지개떡', 228.97, 53.01, 3.53, 0.31);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '송편(깨)', 224.15, 44.96, 4.92, 2.74);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '송편(콩)', 194.33, 41.66, 5.24, 0.75);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '수수부꾸미', 247.89, 42.1, 5.73, 6.29);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '수수팥떡', 204.24, 43.03, 6.7, 0.59);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '시루떡', 217.48, 47.54, 5.47, 0.61);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '쑥떡', 248.63, 57.89, 3.36, 0.4);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '절편', 192.89, 43.94, 3.64, 0.28);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '찹쌀떡', 276.87, 65.61, 3.26, 0.15);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '간자장', 824.54, 134.22, 22.33, 22.03);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '굴짬뽕', 680.67, 115.69, 32.87, 9.6);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '기스면', 606.93, 89.79, 37.82, 10.72);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '김치라면', 552, 86.2, 13.8, 16.9);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '김치우동', 500.18, 99.14, 15.55, 4.6);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '냉김치말이국수', 302.53, 52, 12.9, 4.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '닭칼국수', 663, 94.7, 42.2, 12.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '둘깨칼국수', 457.88, 59.8, 17.6, 16.5);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '막국수', 571.59, 109.8, 20, 5.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '삼선우동', 691.66, 105.9, 47.94, 8.48);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '삼선자장면', 803.9, 126.53, 33.64, 18.14);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '삼선짬뽕', 662.37, 101.73, 39.63, 10.77);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '쌀국수', 320.32, 55.1, 15.6, 4.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '열무김치국수', 431, 69.6, 15, 10.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '열무냉면', 525.49, 97.52, 20.84, 5.78);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '오일소스스파게티', 646.74, 89.42, 19.56, 23.43);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '올갱이국수', 566, 111.6, 11.2, 8.3);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '우동(일식)', 421.51, 74.2, 13.39, 7.91);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '우동(중식)', 648.47, 85.37, 29.45, 21.02);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '울면', 728.86, 128.18, 37.46, 7.37);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '자장면', 796.5, 133.63, 19.77, 20.32);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '짬뽕라면', 689, 92, 21.3, 26.3);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '치즈라면', 595, 80, 16.8, 23);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '크림소스스파게티', 837.57, 73.76, 21.79, 50.59);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '토마토소스스파게티', 642.58, 93.2, 24.35, 19.15);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '해물칼국수', 628.26, 123.9, 22.8, 4.61);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '해물크림소스스파게티', 917.57, 86.97, 30.39, 49.79);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '해물토마토소스스파게티', 584.44, 87.24, 27.97, 13.73);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '골뱅이무침', 108.79, 15.69, 7.08, 1.97);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '노각무침', 84, 14.3, 2.6, 1.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '단무지무침', 20, 2.8, 0.5, 0.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '달래나물무침', 136, 23.8, 4, 2.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '더덕무침', 216, 43.4, 4.3, 2.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '도토리묵', 45.6, 10.38, 0.29, 0.32);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '밴댕이무침', 600.01, 46, 29.8, 33);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '서대회무침', 315.21, 45.9, 22.6, 4.6);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '쑥갓나물무침', 96, 6.6, 4.5, 5.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '쥐치채', 55.92, 10.89, 2.75, 0.15);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '청포묵무침', 149, 22.7, 2.9, 5.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '탕평채', 97.5, 12.26, 3.55, 3.81);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '홍어무침', 198.94, 25.95, 17.85, 2.63);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '고추장불고기 삼각김밥', 165.29, 34.11, 3.66, 1.58);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '곤드레나물밥', 521.83, 98.9, 10.3, 9.5);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '국밥', 418.35, 58.6, 27.6, 8.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '농어초밥', 396.74, 78.75, 17.43, 1.34);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '돼지국밥', 911.4, 74.7, 66.4, 38.6);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '류산슬덮밥', 574.99, 73.95, 26.96, 19.04);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '멍게비빔밥', 547.21, 90.7, 16.6, 13.1);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '멸치주먹밥', 312, 54.3, 9, 6.6);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '묵밥', 642.16, 128.6, 14.8, 7.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '문어초밥', 392.23, 81.78, 14.61, 0.74);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '비빔밥', 691.62, 98.7, 24.6, 22);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '삼선볶음밥', 686.11, 85.75, 26.24, 26.46);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '새우초밥', 387.67, 78.42, 16.8, 0.75);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '새우튀김롤', 606.5, 96.28, 14.47, 18.17);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '샐러드김밥', 405.95, 61.45, 9.62, 13.52);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '생선초밥(광어)', 453.78, 77.55, 27.07, 3.92);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '생선초밥(모듬)', 461.97, 76.43, 25.42, 6.06);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '소고기국밥', 330.53, 42.6, 21.8, 8.1);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '소고기김밥', 400.61, 62.52, 15.98, 9.63);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '송이덮밥', 581.81, 95.6, 18.21, 14.06);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '숯불갈비 삼각김밥', 161.24, 32.55, 4, 1.67);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '약초비빔밥', 511.8, 80.2, 11.9, 15.9);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '연어롤', 510.19, 74.32, 18.57, 15.4);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '연어초밥', 447.32, 71.04, 18.88, 9.74);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '오곡밥', 388.82, 82.32, 11.95, 1.3);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '자장밥', 741.66, 120.06, 15.24, 22.28);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '잡탕밥', 777.44, 104.94, 44.12, 20.13);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '장어덮밥', 716.54, 97.35, 30.09, 22.98);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '장어초밥', 486.26, 80.68, 16.52, 10.83);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '참치덮밥', 679.1, 102.93, 29.2, 16.73);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '참치마요네즈 삼각김밥', 172.4, 31.95, 3.94, 3.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '충무김밥', 583.93, 109.16, 23.42, 5.96);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '캘리포니아롤', 487.64, 89.23, 12.33, 9.05);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '한치초밥', 374.18, 77.92, 13.71, 0.85);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '해물덮밥', 771.93, 100.45, 42.04, 22.44);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '해물볶음밥', 705.22, 90.46, 25.1, 27);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '회덮밥', 683.02, 103.3, 30.21, 16.55);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '깻잎나물볶음', 206, 11.5, 7.5, 14.4);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '돼지고기볶음', 350.67, 18.21, 22.96, 20.67);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '돼지껍데기볶음', 352, 24.5, 25.8, 16.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '두부김치', 288.21, 14.08, 19.47, 17.11);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '머위나물볶음', 108, 7.6, 3.5, 7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '멸치풋고추볶음', 52.38, 3.41, 4.65, 2.24);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '소세지볶음', 471, 31.8, 18.8, 29.9);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '순대볶음', 582, 76.7, 20.7, 21.3);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '양송이버섯볶음', 136, 11, 4.5, 8.3);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '오삼불고기', 363, 20.5, 25.6, 19.9);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '주꾸미볶음', 211.41, 22.82, 18.33, 5.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '표고버섯볶음', 142, 15.8, 4.5, 6.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '해물볶음', 419.06, 32.2, 38.2, 15.3);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '곰보빵', 277.34, 42.16, 6.31, 9.27);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '만주', 222.49, 46.8, 5.13, 1.64);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '버터크림빵', 229.96, 27.74, 4.91, 11.04);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '불고기피자', 505, 61.2, 27.4, 16.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '참치샌드위치', 555, 36.5, 23.3, 35.1);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '찹쌀도우넛', 207.05, 39.95, 3.53, 3.68);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '채소고로케', 300.65, 31.19, 7.13, 16.38);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '초콜릿케이크', 420.24, 43.6, 5.31, 24.96);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '치즈케이크', 329.14, 28.64, 7.23, 20.63);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '치즈피자', 553, 71.2, 31.4, 15.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '페이스트리빵', 319.59, 32.52, 5.99, 18.4);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '페퍼로니피자', 532, 70.3, 29.4, 14.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '포테이토피자', 628, 71.6, 28, 25.5);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '수정과', 133, 20.34, 0.6, 5.47);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '식혜', 130.14, 24.32, 2.3, 2.63);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '간장마늘쫑장아찌', 30, 5.4, 1, 0.5);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '고추장마늘쫑장아찌', 55, 10.5, 1.3, 0.9);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '매실장아찌', 72.88, 17.43, 0.5, 0.13);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '무장아찌', 23.92, 5.03, 0.44, 0.23);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '낙지꼬지', 75.35, 2.83, 13.14, 1.28);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '소고기산적', 453.07, 7.33, 48.41, 25.57);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '소라산적', 120.1, 6.45, 17.92, 2.51);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '오징어산적', 101.71, 3.6, 17.37, 1.98);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '홍합산적', 156.66, 10.58, 17.78, 4.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '가자미전', 230.28, 6.91, 25.76, 11.06);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '고추전', 274.69, 17.01, 12.91, 17.22);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '굴전', 195, 14.5, 10.6, 10.5);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '깻잎전', 361.1, 14.54, 17.74, 25.78);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '녹두빈대떡', 207.94, 20.93, 7.94, 10.27);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '동그랑땡(육원전)', 309.2, 12.68, 19.62, 20);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '동태전', 268.05, 10.54, 22.64, 15.04);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '두부전', 254.64, 7.5, 20.46, 15.87);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '미나리전', 226.41, 34.23, 5.24, 7.62);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '배추전', 240.75, 35.52, 5.17, 8.67);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '버섯전', 240.69, 16.19, 10.52, 14.87);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '야채전', 194, 21.6, 5.4, 9.5);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '파전', 292.8, 34.81, 6.83, 14.03);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '햄부침', 244, 11.3, 11.3, 17.1);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '호박부침개', 129, 10.1, 3.9, 8.1);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '호박전', 208.1, 16.1, 6.48, 13.09);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '화양적', 272.65, 21.35, 13.58, 14.77);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '가자미조림', 297.98, 21.5, 37.1, 7.1);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '고추조림', 111, 13.4, 3.3, 4.9);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '동태조림', 276, 17.4, 40.8, 4.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '돼지고기메추리알장조림', 63.49, 3.37, 8.34, 1.85);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '북어조림', 181.86, 17.14, 20.83, 3.33);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '소고기메추리알장조림', 60.65, 2.88, 8.14, 1.84);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '조기조림', 384, 12.8, 41.1, 18.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '게살죽', 564.83, 107.35, 17.9, 7.09);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '깨죽', 515.35, 79.31, 13.66, 15.94);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '백합죽', 455.28, 84.7, 16.5, 5.6);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '소고기버섯죽', 578.28, 109.03, 18.75, 7.47);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '어죽', 552.06, 100.8, 20.4, 7.5);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '잣죽', 874.48, 155.28, 19.18, 19.63);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '참치죽', 659.6, 104.57, 24.19, 16.06);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '고등어찌개', 601.62, 25.6, 48.9, 33.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '김치찌개', 243.03, 11.93, 15.07, 15);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '꽁치찌개', 355, 12.2, 24, 23.3);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '두부전골', 315.16, 17.1, 25.6, 16.1);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '버섯찌개', 167.56, 15.4, 14.7, 5.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '부대찌개', 399.5, 39.7, 18.4, 18.6);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '새우젓두부찌개', 166, 7.2, 16.2, 8.1);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '소곱창전골', 529, 29.2, 41.6, 27.3);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '햄김치찌개', 189, 12.7, 11.1, 10.4);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '호박찌개', 95, 12.2, 5.6, 2.6);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '대구찜', 376.42, 24.7, 51.7, 7.9);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '동태찜', 394.32, 25.8, 50.9, 9.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '돼지등갈비찜', 961.04, 57.4, 72.1, 49.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '돼지머리고기', 650, 3.5, 42.4, 52);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '매운갈비찜', 517.44, 23.7, 61.3, 19.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '북어찜', 235, 18, 28.1, 5.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '붕어찜', 835.6, 71.6, 54.3, 36.9);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '소갈비찜', 494.6, 13.14, 49.86, 26.96);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '순대', 542.42, 58.36, 19.56, 25.64);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '아구찜', 310.87, 17.47, 48.3, 5.31);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '아구찜', 492.32, 43.1, 65.4, 6.5);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '안동찜닭', 1364.21, 139.5, 114.2, 38.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '조기찜', 182.12, 1.64, 20.06, 10.59);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '참꼬막', 90.79, 4.59, 12.47, 2.5);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '해물찜', 400.08, 35.4, 42.6, 9.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '곰탕', 183.25, 18.1, 19.4, 3.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '광어매운탕', 419.79, 9.13, 58.42, 16.62);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '낙지탕', 187.8, 10.4, 29.4, 3.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '대구매운탕', 361.75, 16.84, 57.36, 7.21);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '대구지리탕', 262.02, 9.9, 41.6, 6.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '메기매운탕', 400, 48.6, 28.6, 10.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '복지리탕', 232.05, 10.3, 41.7, 2.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '소탕', 86.37, 1.9, 7.66, 5.35);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '아구탕', 246.07, 12.8, 37.8, 4.9);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '어탕', 85.87, 1.82, 12.7, 3.09);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '연포탕', 541.64, 20.19, 94.9, 9.03);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '우럭매운탕', 406.82, 11.24, 52.15, 17.03);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '전복탕', 196.85, 15.8, 26.8, 3);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '조기매운탕', 384.38, 17.3, 35.1, 19.4);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '짱뚱어탕', 188.77, 16.6, 11.5, 8.5);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '추어탕', 316.72, 26.8, 22.7, 13.2);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '해물탕', 267.81, 16.6, 39.8, 4.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '고구마맛탕', 491, 94.6, 3.3, 11);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '고구마튀김', 252.96, 33.8, 2.72, 11.87);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '고추튀김', 202, 14.6, 7.6, 12.6);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '닭튀김', 903, 48.8, 65.2, 49.7);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '등심돈가스', 623.83, 38.49, 32.99, 37.54);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '모래집튀김', 468.37, 29.1, 28.1, 26.6);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '미꾸라지튀김', 387.49, 28.85, 10.89, 25.39);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '생선까스', 653.44, 46.56, 24.33, 41.1);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '안심돈가스', 651.75, 34.25, 33.28, 42.4);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '양념치킨', 552, 42.3, 35.5, 26.8);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '쥐포튀김', 356.91, 42.5, 9.62, 16.49);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '치즈돈가스', 755.37, 41.76, 42.02, 46.69);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '치킨까스', 593, 44.02, 27.91, 33.92);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '대구포', 140.84, 2.33, 31.97, 0.4);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '매작과', 123.86, 19.83, 2.25, 3.95);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '산자', 109.71, 24.65, 0.69, 0.93);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '송화다식', 110.83, 22.19, 2.49, 1.34);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '약과', 119.73, 25.47, 1.26, 1.43);
INSERT INTO food(idx, foodname, kcal, carbs, protein, fat) values (food_idx_seq.nextval, '유과', 127.09, 22.27, 0.84, 3.85);
commit;

