require 'csv'
require_relative 'reader.rb'

class Writer
attr_accessor :data, :headers
  def initialize(data)
    @headers = ['full_name', 'address']
    @data = data
  end
  
  def perform
    CSV.open("csv_files/dzdoc2.csv", "w") do |csv|
    csv << headers
        data.each do |full_name, address|
        csv << ["#{full_name}", "#{address}"]
        end
    end   
  end
end

