#encoding: utf-8
class Web::WelcomeController < Web::ApplicationController
  def index
    @news = News.web
  end

end