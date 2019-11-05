class SchoolClassesController < ApplicationController
    before_action :set_schoolclass, only: [:show,:edit, :update]

    def index
        @classes = SchoolClass.all
        # byebug
    end

    def show
    end

    def new
        @class = SchoolClass.new
    end

    def create
        # byebug
        @class = SchoolClass.create(class_params(:title,:room_number))
        redirect_to school_class_path(@class)
    end

    def edit
    end

    def update
        @class.update(class_params(:title,:room_number))
        redirect_to school_class_path(@class)
    end

    private

    def class_params(*args)
        params.require(:school_class).permit(*args)
    end
    def set_schoolclass
        @class = SchoolClass.find(params[:id])
    end
end
