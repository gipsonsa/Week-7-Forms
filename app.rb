# app.rb
require 'sinatra'
require 'holidapi'

class HolidApiApp < Sinatra::Base
  get '/' do
  	params['country'] ||= 'us'
  	params['year'] ||= '2015'
  	params['month'] ||= 'february'
    @chosenholidays = HolidApi.get(country: params['country'], year: params['year'], month: params['month']).flatten
    erb :index1
  end
end 