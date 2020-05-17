class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    #why does this line always cause an error? I've seeded the db

    #why does the form only work when in the showpage? surely it should be on the new page??
  end

  def new
  end

  def create
    Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to students_path
  end

end
