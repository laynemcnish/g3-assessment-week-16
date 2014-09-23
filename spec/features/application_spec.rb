require 'spec_helper'

describe Garden do

  before do
    @garden = Garden.new('/Users/laynemcnish/gSchoolWork/g3-assessment-week-16/data/metrics.tsv')
  end

  it "should find the averages for each container" do
    expect(@garden.container_average).to eq(
      {
        :container1 => {
          :pH => 5.01,
          :nutrient_solution_level => 39.02,
          :tempurature => 57.76,
          :water_level => 2.12
        },
        :container2 => {
          :pH => 5.95,
          :nutrient_solution_level => 19.77,
          :tempurature => 73.06,
          :water_level => 3.8
        },
        :container3 => {
          :pH => 7.01,
          :nutrient_solution_level => 10.97,
          :tempurature => 67.61,
          :water_level => 4.7
        }
      }
                                                                                                                         )

  end
end