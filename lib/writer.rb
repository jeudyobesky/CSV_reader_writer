require 'csv'
require_relative 'reader.rb'

class Writer
attr_accessor :data, :headers
  def initialize
    @headers = ['full_name', 'address']
  end
  
  def perform(data)
    CSV.open("csv_files/dzdoc2.csv", "w") do |csv|
    csv << headers
        data.each do |full_name, address|
        csv << ["#{full_name}", "#{address}"]
        end
    end   
  end
end

