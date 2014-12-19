class DemoController < ApplicationController
  
  layout false

  def index
  	# render ('hello')
  end

  def hello
  	# render ('index')
  	@id = params['id']
  	@page = params[:page]
  end

  def other_hello
  	redirect_to ('/demo/index')
  end

end
