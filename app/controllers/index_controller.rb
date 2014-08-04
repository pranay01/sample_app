class IndexController < ApplicationController
  def index
    PrintWorker.perform_async(params[:to_print])
  end
end