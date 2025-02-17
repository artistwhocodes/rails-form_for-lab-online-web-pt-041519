class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def show
     set_school_class
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  def edit
    set_school_class
  end

 private

  def school_class_params
    params.require(:school_class).permit!
  end

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

end
