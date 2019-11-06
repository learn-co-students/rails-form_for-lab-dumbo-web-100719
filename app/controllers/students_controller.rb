class StudentsController < ApplicationController
    
    def new
        @student = Student.new
        #render :new
    end

    def show
        @student = Student.find(params[:id])
    end
    
    def create
        @student = Student.create(student_params)
    
        #redirect_to @student 
        #redirect_to student_path(@student.id)
        #redirect_to student_path(@student)
        redirect_to "/students/#{@student.id}"
    end
    
    def edit
        @student = Student.find(params[:id])
    
        #render :edit 
    end
    
    def update
        @student = Student.find(params[:id])
        @student = Student.update(student_params)
    
        redirect_to @student 
    end
    
    private
    
    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end
end