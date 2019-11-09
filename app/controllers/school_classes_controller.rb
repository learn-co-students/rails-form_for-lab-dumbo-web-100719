class SchoolClassesController < ApplicationController
    def new
        @schoolclass = SchoolClass.new
    end

    def create
        sc_param = params.require(:school_class).permit(:title, :room_number)
        @schoolclass = SchoolClass.create(sc_param)
        redirect_to @schoolclass
    end

    def show
        @schoolclass = SchoolClass.find(params[:id])
    end

    def edit
        @schoolclass = SchoolClass.find(params[:id])
    end

    def update
        sc_param = params.require(:school_class).permit(:title, :room_number)
        @schoolclass = SchoolClass.update(sc_param)
        redirect_to @schoolclass
    end
end
