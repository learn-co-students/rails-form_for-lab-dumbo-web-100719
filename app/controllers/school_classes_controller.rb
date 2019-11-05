class SchoolClassesController < ApplicationController

    # new, create, show, edit, and update 

    def show 
        @school_class = SchoolClass.find(params[:id])
    end 

    def new
        @school_class = SchoolClass.new
    end 

    def create 
        @school_class = SchoolClass.create(school_class_params)
        redirect_to @school_class
    end 

    def edit 
        @school_class = SchoolClass.find(params[:id])
    end 

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(school_class_params)
        redirect_to @school_class
    end 

    private

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end

end
