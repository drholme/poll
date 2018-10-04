class PollController < ApplicationController
  def index
    @option = Option.all
  end

  def results
    @option = Option.all
  end

  def create
    @option = Option.new
    #these are columns
    @option.name = params["name"]
    @option.tally = 0
    @option.save
    redirect_to poll_index_url
  end

  def vote
    @option = Option.find(params[:id])
    #these are columns
    # @option.name = params["name"]
    # @option.tally = params["tally"]
    @option.tally += 1
    @option.save
    redirect_to poll_results_url
    puts @option.tally
  end


end
