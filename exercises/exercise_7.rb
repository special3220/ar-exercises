# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts 'Exercise 7'
puts '----------'

# Your code goes here ...

class Employee < ActiveRecord::Base
  validates :first_name, :last_name, presence:true
  # validates :hourly_rate, numericality: {in: 40..200 }
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates_associated :store
end

class Store < ActiveRecord::Base
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
end

@store2.employees.create(first_name: "Mason", last_name: "Mount", hourly_rate: 205)

puts "Enter a store Name: "

@response = gets.chomp
# puts @response
newStore =Store.create(name: @response)
# puts newStore.errors.messages
errors = newStore.errors.messages

# puts errors[:name]
# puts errors[:annual_revenue]
errors.each do |key, value|
  puts "#{key}: #{value[0]}"
end



# {:name=>["is too short (minimum is 3 characters)"], :annual_revenue=>["is not a number"]}
# puts Store.pluck(:name, :annual_revenue)