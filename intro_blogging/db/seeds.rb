## run `rake db:create` and then
## Run this file by executing `rake db:seed`

sql_query = <<-SQLTEXT
drop table IF EXISTS articles;

  CREATE TABLE articles (
       id bigserial primary key,
       name varchar(255) NOT NULL,
       description text NOT NULL,
       date_added timestamp default NULL
   );


insert into articles ("name", "description", "date_added") values ('Paw Patrol is Terrible', 'See More', now());
insert into articles ("name", "description", "date_added") values ('Harry Potter Rules', 'See More', now());

SQLTEXT

30.times do
  title = Faker::StarWars.quote.gsub("'", "")
  description = ""
  text = "insert into articles (\"name\", \"description\", \"date_added\") values ('#{title}', '#{description}', now());"
  sql_query << text
end

# actually run the sql_query on the databased defined in config/database.yml
ActiveRecord::Base.connection.execute(sql_query)
