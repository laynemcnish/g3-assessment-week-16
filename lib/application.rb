require 'csv'
require 'awesome_print'

class Garden

  def initialize(file)
    @file = CSV.read(file, {:col_sep => "\t"})
    key_array = [:date, :container, :ph, :nutrient_solution_level, :tempurature, :water_level]
    @parsed_file = @file.map { |a| Hash[key_array.zip(a)] }.group_by { |hash| hash[:container] }.each { |_, v| v.map! { |h| h } }
  end


  def container_average


    new_file = @parsed_file["container1"].map do |k, v|
      k[:ph].sum/k[:ph].size

      end

    ap new_file


  end
end


test = Garden.new('/Users/laynemcnish/gSchoolWork/g3-assessment-week-16/data/metrics.tsv')

test.container_average


#
# [
#   [0] "2014-01-01 00:00:00 UTC",
#   [1] "container1",
#   [2] "5.0",
#   [3] "12",
#   [4] "58",
#   [5] "1.8"
# ]
# [
#   [0] "2014-01-01 00:00:00 UTC",
#   [1] "container1",
#   [2] "5.0",
#   [3] "12",
#   [4] "58",
#   [5] "1.8"
# ]