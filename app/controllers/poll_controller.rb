class PollController < ApplicationController
  def index
    @option = Option.all
  end

  def create
    @option = Option.new
    #these are columns
    @option.name = params["name"]
    @option.tally = params["tally"]
    @option.save
    redirect_to option_index_url
  end

  

end
