class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    puts params
    puts student_params

    @student = Student.create(student_params)
    
    redirect_to student_path(@student)
    
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end


end
