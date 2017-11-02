require './lib/violation'
require 'csv'

class Generator
  attr_reader :content

  def initialize(file_path)
    @content = parse_csv(file_path)
  end

  def read_file(file_path)
    CSV.open file_path, headers: true, header_converters: :symbol
  end

  def parse_csv(file_path)
    read_file(file_path).map {|row| Violation.new(row)}
  end
end