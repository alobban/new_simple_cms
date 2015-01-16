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

  def make_error
    # My guesses for the 3 most common errors:
    # render(text: "test" # syntax error
    # render(text: @something.upcase) # undefined method
    render(text: "1" + 1) # can't convert type
  end

  def logging
    logger.debug("This is debug.")
    logger.info("This is info.")
    logger.warn("This is warn.")
    logger.error("This is error.")
    logger.fatal("This is fatal.")
    render(text: 'Logged!')
  end
end
