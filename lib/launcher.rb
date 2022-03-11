require 'pp'
require_relative 'reader.rb'
require_relative 'writer.rb'

class Launcher
    def perform
        data = Reader.new.perform
        pp data
        Writer.new.perform(data)
    end
end 


