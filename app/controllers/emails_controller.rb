class EmailsController < ApplicationController
	require 'faker'
  def index
  	@emails = Email.all
  end
  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html{s}
      format.js{}
    end
  end
  def create
  	 @email=Email.create!(objet: Faker::Internet.email, body: Faker::Movie.quote)
  	 respond_to do |format|
  	 	format.js {}
  	 end
  	
  end
  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html{}
      format.js{}
    end
  end
  def update
    @email = Email.find(params[:id])
    if (@email.read == true || @email.read == nil)
      @email.read = false
      @email.save
    else
    @email.read = true
    @email.save
    end
    respond_to do |format|
      format.html{}
      format.js{}
    end
  end

end
