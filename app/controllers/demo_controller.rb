class DemoController < ApplicationController
  
  layout 'application'

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

  def text_helpers
  end

  def escape_output
  end

end
