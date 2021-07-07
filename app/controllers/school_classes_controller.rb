class SchoolClassesController < ApplicationController

    def index
      @school_classes = SchoolClass.all
    end
  
    def show
      @school_class = SchoolClass.find(params[:id])
    end
  
    def new
      @school_class = SchoolClass.new
    end
  
    def create
      white_list = params.require(:school_class).permit(:title, :room_number)
      @school_class = SchoolClass.create(white_list)
  
      redirect_to @school_class
    end
  
    def edit
      @school_class = SchoolClass.find(params[:id])
    end
  
    def update
      white_list = params.require(:school_class).permit(:title, :room_number)
      @school_class = SchoolClass.find(params[:id])
      @school_class.update(white_list)
  
      redirect_to @school_class
    end
  
end
