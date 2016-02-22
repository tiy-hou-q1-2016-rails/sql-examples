class ArticlesController < ApplicationController
  def index
    sql_query = "select * from articles"

    raw_articles = ActiveRecord::Base.connection.execute(sql_query)

    @articles = raw_articles.map do |hash|
      Article.new(hash["id"], hash["name"], hash["description"], hash["date_added"])
    end

  end

  def show
    sql_query = "select * from articles where id = #{params[:id].to_i}"
    hash = ActiveRecord::Base.connection.execute(sql_query).first
    @article = Article.new(hash["id"], hash["name"], hash["description"], hash["date_added"])

  end
end
