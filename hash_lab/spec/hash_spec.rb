require_relative 'spec_helper'

describe 'Create tests for a hash' do

  small_fruit_nutrition_details = {
      apple:{
          calories: 130,
          calories_from_fat: 0,
          sugars: '25g',
          protein: '1g'

      },
      avocado:{
          calories: 50,
          calories_from_fat: 35,
          sugars: '0g',
          protein: '1g'

      },
      kiwifruit: {
          calories: 90,
          calories_from_fat: 10,
          sugars: '13g',
          protein: '1g'

      },
      plums:{
          calories: 70,
          calories_from_fat: 0,
          sugars: '16g',
          protein: '1g'

      }
  }

  it 'avocados should have calories from fat greater than 20' do
    expect(small_fruit_nutrition_details[:avocado][:calories_from_fat]).to be > 20
  end

  it 'plums and apples should get no calories from fat' do
    expect(small_fruit_nutrition_details[:apple][:calories_from_fat]).to eq 0
    expect(small_fruit_nutrition_details[:plums][:calories_from_fat]).to eq 0
  end

  it 'each fruit should have 4 keys' do
    small_fruit_nutrition_details.each do |key, values|
      expect(values.keys.length).to be 4
      values.each do |key, values|
        expect(values).to be_truthy
      end
    end
  end

  it 'all calories should be between 40 to 150' do
    small_fruit_nutrition_details.each do |key, values|
      expect(values[:calories]).to be_between(40,150).inclusive
    end
  end

end
