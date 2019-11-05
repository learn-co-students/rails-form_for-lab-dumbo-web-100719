class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit, :update]
  
  def index
    @school_classes = SchoolClass.all
  end

  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(strong_params)
    redirect_to @school_class
  end

  def edit
  end

  def update
    @school_class = SchoolClass.update(strong_params)
    redirect_to @school_class
  end
private

def set_school_class
  @school_class = SchoolClass.find(params[:id])
end

def strong_params
  params.require(:school_class).permit(:title, :room_number)
end

end
