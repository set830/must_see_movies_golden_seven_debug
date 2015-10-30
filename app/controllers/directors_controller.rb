class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @directors = Director.find(params[:id])
    render "show_details.html.erb"
  end

  def new_form
    @directors = Director.new

  end

  def create_row
    @directors = Director.new
    @directors.dob = params[:dob]
    @directors.name = params[:name]
    @directors.bio = params[:bio]
    @directors.image_url = params[:image_url]

    @directors.save

    redirect_to ("http://localhost:3000/directors")


  end

  def edit_form
    @director = Director.find(params[:id])
  end

  def update_row
    @director = Director.find(params[:id])

    @director.dob = params[:the_dob]
    @director.name = params[:the_name]
    @director.bio = params[:the_bio]
    @director.image_url = params[:the_image_url]

    @director.save

    redirect_to ("http://localhost:3000/directors")
  end

  def destroy
    @director = Director.find(params[:id])
    @director.destroy
  end
end
