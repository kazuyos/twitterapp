PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20170331045923');
INSERT INTO schema_migrations VALUES('20170418070645');
INSERT INTO schema_migrations VALUES('20170427063848');
INSERT INTO schema_migrations VALUES('20170515060224');
INSERT INTO schema_migrations VALUES('20170526082243');
INSERT INTO schema_migrations VALUES('20180315162932');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2017-03-31 05:21:00.324397','2017-03-31 05:21:00.324397');
CREATE TABLE IF NOT EXISTS "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_id" integer);
INSERT INTO posts VALUES(1,'次は何の本を読もうかな。','2017-03-31 05:24:15.529063','2017-03-31 05:24:15.529063',1);
INSERT INTO posts VALUES(2,'今日のランチおいしかった。','2017-03-31 05:24:32.004378','2017-03-31 05:24:32.004378',2);
INSERT INTO posts VALUES(3,'今日はひつじ仙人にGitを教えてもらったぞ！着実に力が付いていっているのを感じる。そして、たまにはベイビーわんことも遊んでやらないとな。','2017-03-31 06:00:32.004378','2017-03-31 06:00:32.004378',1);
INSERT INTO posts VALUES(4,'にんじゃわんこ兄ちゃん、最近プログラミング頑張ってるなぁ。創りたいサービスがあるらしい。僕も頑張るぞー！','2017-04-15 07:24:32.004378','2017-03-31 07:24:32.004378',3);
INSERT INTO posts VALUES(5,'【プログラミング学習のProgate】Ruby on Rails学習コースⅢを修了しました！レベルがどんどん上がっていくから楽しい！','2017-03-31 09:24:32.004378','2017-03-31 09:24:32.004378',4);
INSERT INTO posts VALUES(6,'第1回Progate Sunday Schoolに参加してきた！にんじゃわんこのステッカーもらった(^o^)','2017-03-31 09:24:32.004378','2017-03-31 09:24:32.004378',5);
INSERT INTO posts VALUES(7,'もう少しでTweetApp完成するぞー！','2017-06-01 02:32:59.458984','2017-06-01 02:32:59.458984',1);
CREATE TABLE IF NOT EXISTS "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_name" varchar, "password" varchar);
INSERT INTO users VALUES(1,'にんじゃわんこ','wanko@prog-8.com','2017-04-18 08:06:52.739295','2017-04-18 08:06:52.739295','default_user.jpg','ninjawanko');
INSERT INTO users VALUES(2,'ひつじ仙人','hitsuji@prog-8.com','2017-04-18 11:23:07.328713','2017-04-18 11:23:07.328713','2.jpg','hitsujisennin');
INSERT INTO users VALUES(3,'ベイビーわんこ','baby@prog-8.com','2017-04-18 12:23:07.328713','2017-04-18 12:23:07.328713','3.jpg','babywanko');
INSERT INTO users VALUES(4,'しょう','sho@prog-8.com','2017-04-18 13:23:07.328713','2017-04-18 13:23:07.328713','4.jpg','sho4649');
INSERT INTO users VALUES(5,'みちこ','michiko@prog-8.com','2017-04-18 13:23:07.328713','2017-04-18 13:23:07.328713','5.jpg','michi5');
CREATE TABLE IF NOT EXISTS "likes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "post_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO likes VALUES(1,1,2,'2018-03-15 16:35:08.226194','2018-03-15 16:35:08.226194');
INSERT INTO likes VALUES(2,1,5,'2018-03-15 17:04:42.843243','2018-03-15 17:04:42.843243');
INSERT INTO likes VALUES(4,3,4,'2018-03-16 01:19:16.188170','2018-03-16 01:19:16.188170');
INSERT INTO likes VALUES(5,3,4,'2018-03-16 01:19:18.070739','2018-03-16 01:19:18.070739');
INSERT INTO likes VALUES(6,3,4,'2018-03-16 01:19:20.008293','2018-03-16 01:19:20.008293');
INSERT INTO likes VALUES(7,3,4,'2018-03-16 01:19:30.566688','2018-03-16 01:19:30.566688');
INSERT INTO likes VALUES(8,3,4,'2018-03-16 01:19:32.182603','2018-03-16 01:19:32.182603');
INSERT INTO likes VALUES(9,3,4,'2018-03-16 01:19:37.733665','2018-03-16 01:19:37.733665');
INSERT INTO likes VALUES(11,3,5,'2018-03-16 01:29:36.521289','2018-03-16 01:29:36.521289');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('posts',7);
INSERT INTO sqlite_sequence VALUES('users',5);
INSERT INTO sqlite_sequence VALUES('likes',11);
COMMIT;
