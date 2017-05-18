class UsersController < ApplicationController
  require 'json'
  require 'csv'

  def index
    @users = User.all
    if params[:csv].present? #check if the cvs para is sent by a post request
      generate_csv @users
    end
  end

  def show
    @user = User.find(params[:id])
  end
end

private

  def generate_csv(json_obj) #convert json objects to csv files 
    CSV.open(DateTime.now.to_s + '.csv', "w") do |csv|
    JSON.parse(json_obj.body).each do |hash|
      csv << hash.values
    end
  end

end
