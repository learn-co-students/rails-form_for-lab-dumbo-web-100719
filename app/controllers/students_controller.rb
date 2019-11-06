class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    white_list = params.require(:student).permit(:first_name, :last_name)
    @student = Student.create(white_list)

    redirect_to @student
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    white_list = params.require(:student).permit(:first_name, :last_name)
    @student = Student.find(params[:id])
    @student.update(white_list)

    redirect_to @student
  end
end
