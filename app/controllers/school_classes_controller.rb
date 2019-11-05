class SchoolClassesController < ApplicationController
    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.create(school_classes_params)
        redirect_to @school_class
    end 

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def edit
        show
    end

    def update
        edit.update(school_classes_params)
        redirect_to school_class_path(@school_class)
    end

    private 

    def school_classes_params
        params.require(:school_class).permit(:title, :room_number)
    end
end
