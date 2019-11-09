class StudentsController < ApplicationController
    def new
        @student = Student.new
    end

    def create
        s_param = params.require(:student).permit(:first_name, :last_name)
        @student = Student.create(s_param)
        redirect_to @student
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        s_param = params.require(:student).permit(:first_name, :last_name)
        @student = Student.update(s_param)
        redirect_to @student
    end
end
