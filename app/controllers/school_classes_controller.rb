class SchoolClassesController < ApplicationController

    def index
        @school_classes = SchoolClass.all
    end

    def new
        @school_class = SchoolClass.new
    end
  
    def edit
        @school_class = SchoolClass.find(params[:id])
    end
  
    def show
        @school_class = SchoolClass.find(params[:id])
    end
    
    def create
        @school_class = SchoolClass.new(school_params)
        if @school_class.valid?
            @school_class.save
            redirect_to school_class_path(@school_class)
        else
            render :new
        end
    end
  
    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(school_params)
        redirect_to school_class_path(@school_class)
    end
  
    private
  
    def school_params
      params.require(:school_class).permit(:room_number, :title)
  
    end
end
