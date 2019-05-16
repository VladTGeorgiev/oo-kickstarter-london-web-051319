require "pry"
require_relative "backer.rb"

class Project
    attr_reader :title, :backers
    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        @backers << backer
        backer.backed_projects << self
        #binding.pry
    end

end