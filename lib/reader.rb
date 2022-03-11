require 'csv'
require "byebug"

class Reader
attr_accessor :array_of_doc_name, :array_of_doc_city
    def initialize
        @array_of_doc_name = []
        @array_of_doc_city = []
    end
    
    def perform
        20.times do |number_of_doc|
            array_of_doc_name << table[number_of_doc]['full_name']
            array_of_doc_city << table[number_of_doc]['address']
        end
        Hash[array_of_doc_name.zip array_of_doc_city]       
    end
    
    def show_doctor(number_of_doc)
        puts "#{table[number_of_doc]['full_name']}", "#{table[number_of_doc]['address']}"
    end

    private

    def table
        CSV.parse(File.read('csv_files/dzdoc.csv'), headers: true)
    end
end
