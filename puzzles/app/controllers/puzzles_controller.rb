require "/vagrant/puzzles/puzzle.rb"

class PuzzlesController < ApplicationController
  def index 
    @puzzle = params[:id].constantize.new
    render html: @puzzle.getHtml.html_safe
  end
end
