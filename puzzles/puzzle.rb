class Puzzle
  def getResource(resource)
    file = File.open("/vagrant/puzzles/#{puzzleName}/puzzle.#{resource}")
    res = file.read
    file.close
    res
  end

  def getHtml
    getResource("html")
  end

  def getCss
    getResource("css")
  end

  def getJavascript
    getResource("js")
  end
end

# Dir["/vagrant/puzzles/*/puzzle.rb"].each {|file| require file}
require "/vagrant/puzzles/Puzzle2/puzzle.rb"
require "/vagrant/puzzles/Puzzle1/puzzle.rb"

