
-- This makes sure that foreign_key constraints are observed and that errors will be thrown for violations
PRAGMA foreign_keys=ON;

BEGIN TRANSACTION;
--create your tables with SQL commands here (watch out for slight syntactical differences with SQLite)

-- Create tables for the blog setting
CREATE TABLE IF NOT EXISTS blog_settings (
    blog_id INTEGER PRIMARY KEY AUTOINCREMENT,
    blog_title TEXT NOT NULL,
    blog_subtitle TEXT NOT NULL,
    blog_author TEXT NOT NULL
);

-- Create tables for the articles
CREATE TABLE IF NOT EXISTS articles (
    article_id INTEGER PRIMARY KEY AUTOINCREMENT,
    article_title TEXT NOT NULL,
    article_subtitle TEXT NOT NULL,
    article_content TEXT NOT NULL,
    article_author TEXT NOT NULL,
    article_likes INTEGER NULL DEFAULT 0,
    article_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    article_updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    article_published_on TIMESTAMP NULL DEFAULT NULL,
    article_status TEXT NOT NULL DEFAULT 'Draft'
);

-- Create tables for the comments
CREATE TABLE IF NOT EXISTS article_comments (
    comment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    comment_name TEXT NOT NULL,
    comment_text TEXT NOT NULL,
    comment_likes INTEGER NULL DEFAULT 0,
    comment_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    comment_updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    article_id INTEGER,
    FOREIGN KEY (article_id) REFERENCES articles(article_id)
);


INSERT INTO blog_settings ("blog_title", "blog_subtitle", "blog_author") VALUES ("The daily blog", "For expressive bloggers", "Nikhitha");
INSERT INTO articles ("article_title", "article_subtitle", "article_content", "article_author", "article_likes")
VALUES
  ("Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat",
  "massa. Integer vitae nibh. Donec est mauris,",
  "tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus.",
  "Shana Richards",
  14);
  
  INSERT INTO articles (
    "article_title",
   "article_subtitle",
    "article_content",
     "article_author",
      "article_likes",
       "article_published_on",
        "article_status")
VALUES
  ("sociis natoque penatibus et magnis dis parturient",
  "parturient montes feugiat. Sed",
  "nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa.",
  "Graiden Chapman",  14,    "2023-01-15 23:52:34",    "Published");

INSERT INTO article_comments ("comment_name","comment_text","comment_likes","article_id")
VALUES
  ("Keane Vang","elit, a feugiat tellus lorem eu metus. In lorem.",7,6),
  ("Lana Savage","magna nec quam. Curabitur",8,6);

COMMIT;
