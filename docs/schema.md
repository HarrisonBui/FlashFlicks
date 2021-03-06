# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed

## movies
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
director    | string    | not null
description | text      | not null
image_url   | string    | not null
rating      | integer   |
year        | integer   | not null
youtube_url | string    |

## movie_lists
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, indexed, foreign key
title       | string    | not null

## movie_list_movies
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
movie_list_id   | integer   | not null, foreign key, indexed
movie_id        | integer   | not null, foreign key, indexed

## reviews
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
user_id         | integer   | not null, foreign key, indexed
movie_id        | integer   | not null, foreign key, indexed
title           | string    | not null
rating          | integer   | not null
body            | text      | not null
