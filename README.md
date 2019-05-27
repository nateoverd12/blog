Obviously, .env.local is ignored by git (cf. gitignore), so don't forget to fill your mysql informations in the .env or add your .env.local file .
Please run the following commands to import datas needed for quest 08:

php bin/console 

php bin/console doctrine:query:sql 'INSERT INTO category VALUES (3, "C");'


php bin/console doctrine:query:sql 'INSERT INTO article (id, title, content, category_id) VALUES (NULL, "javascript vs java", "Javascript VS Java, un amalgame ?", 2);'

php bin/console doctrine:query:sql 'INSERT INTO article (id, title, content, category_id) VALUES (NULL, "Java slogan", "What else?", 2);'

php bin/console doctrine:query:sql 'INSERT INTO article (id, title, content, category_id) VALUES (NULL, "java needs coffee", "lavazza for instance", 2);'

php bin/console doctrine:query:sql 'INSERT INTO article (id, title, content, category_id) VALUES (NULL, "java and javascript together", "WHY?????", 2);'

php bin/console doctrine:query:sql 'INSERT INTO article (id, title, content, category_id) VALUES (NULL, "C vs anyone", "C simple?", 3);'