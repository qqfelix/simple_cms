class DemoController < ApplicationController

  layout false

  def index
    #   render :template => "demo/hello"
    # render "demo/hello"
    # render "hello"
  end

  def hello
    #   render "index"
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
  end

  def other_hello
      redirect_to :controller => 'demo', :action => 'index'
  end

  def baidu
      redirect_to "http://baidu.com"
  end
end
