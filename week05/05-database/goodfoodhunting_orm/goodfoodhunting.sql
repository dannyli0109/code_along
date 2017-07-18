CREATE TABLE dishes(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(400),
  image_url TEXT
);

INSERT INTO dishes(name, image_url)
VALUES ('pudding', 'https://i.ytimg.com/vi/N6JZx86OyXM/hqdefault.jpg');

INSERT INTO dishes(name, image_url)
VALUES ('cake', 'https://www.archiesonline.com/upload/product/large/Fantastic_Chocolate_Cake_PRCAKE101_3880632a.jpg');

CREATE TABLE comments(
  id SERIAL4 PRIMARY KEY,
  body TEXT,
  dish_id INTEGER
);

CREATE TABLE users(
  id SERIAL4 PRIMARY KEY,
  email VARCHAR(400),
  password_digest TEXT
);

CREATE TABLE dish_types(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(400)
);

ALTER TABLE dishes ADD COLUMN dish_type_id INTEGER;
