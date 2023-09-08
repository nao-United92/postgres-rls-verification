-- 企業情報を管理するテーブルを作成
CREATE TABLE company (
    company_id serial primary key,
    company_code varchar(20) NOT NULL UNIQUE,
    company_name varchar(255) NOT NULL
);

-- 企業内のユーザー情報を管理するテーブルを作成
CREATE TABLE "user" (
    user_id serial primary key,
    company_id integer NOT NULL, -- row level security で using 句に利用するカラム
    user_name varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    FOREIGN KEY (company_id) REFERENCES company(company_id)
);

-- ROW LEVEL SECURITY を user に設定
ALTER TABLE "user" ENABLE ROW LEVEL SECURITY;

-- rls_policy という名前の POLICY を user へ設定
-- DBに接続する際に set_config で 'app.company_id' を設定した上で接続する
-- 設定された 'app.company_id' とusers.company_id が同じレコードのみ操作出来るようになる
CREATE CAST (int4 AS text) WITH INOUT AS IMPLICIT;
CREATE POLICY rls_policy ON "user"
 USING(company_id = current_setting('app.company_id'));

-- 企業データ挿入
INSERT INTO company (company_code, company_name) values
('test_code1', 'テスト株式会社１'),
('test_code2', 'テスト株式会社２'),
('test_code3', 'テスト株式会社３');

-- ユーザーデータ挿入
INSERT INTO "user" (user_id, company_id, user_name, email) values
(1,1,'user1','user1@ex.com'),
(2,1,'user2','user2@ex.com'),
(3,1,'user3','user3@ex.com'),
(4,2,'user4','user4@ex.com'),
(5,2,'user5','user5@ex.com'),
(6,3,'user6','user6@ex.com'),
(7,3,'user7','user7@ex.com'),
(8,3,'user8','user8@ex.com'),
(9,3,'user9','user9@ex.com');

-- RLS 検証用のロール作成
CREATE ROLE rls_test WITH LOGIN;

-- RLS 検証用のロールへ操作権限付与
GRANT ALL PRIVILEGES ON "user" TO rls_test;
-- GRANT insert,select,update,delete ON "user" TO rls_test; でも可能

-- セッション値 として company_id をセット
SELECT set_config('app.company_id', '1', false);

-- ユーザーデータ検索
SELECT * FROM "user";
