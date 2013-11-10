require 'open-uri'
require 'json'

class FlashcardsController < ApplicationController
  def index
    @url = "http://kiei925.herokuapp.com/students.json?access_token=broncos"
    raw_data = open(@url).read
    @student_data = JSON.parse(raw_data)
  end
end
