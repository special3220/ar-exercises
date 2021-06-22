# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts 'Exercise 6'
puts '----------'

# Your code goes here ...

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Kai", last_name: "Havertz", hourly_rate: 45)
@store1.employees.create(first_name: "Eden", last_name: "Hazard", hourly_rate: 35)
@store1.employees.create(first_name: "Romelu", last_name: "Lukaku", hourly_rate: 49)
@store2.employees.create(first_name: "Jack", last_name: "Graelish", hourly_rate: 23)