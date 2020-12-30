class PersonBdaysController < ApplicationController

  def new

  end

  def create
    @bday = PersonBday.new(person_params)
    @bday.name = person_params[:name]
    @bday.date_of_birth = person_params[:date_of_birth]
    @bday.relation = person_params[:relation]
    @bday.sharable = person_params[:sharable]
    redirect_to person_bdays_path(@bday)

  end

  def index
    @bday
  end

  def show
    @bday = PersonBday.find(params[:id])

  end

  private

  def person_params
    params.permit(:name, :date_of_birth, :relation, :sharable)
  end

end
