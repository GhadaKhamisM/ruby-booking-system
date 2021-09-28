class DemoController < ApplicationController
  def index
    @array = [1,2,3,4]
    render('index')
  end

  def hello
    @id = params['id']
    @page = params[:page]
    render('hello')
  end

  def other_hello
    redirect_to(:action => 'hello')
  end

  def google
    redirect_to('https://www.google.com')
  end
end
