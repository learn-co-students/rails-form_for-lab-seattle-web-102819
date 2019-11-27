class StudentsController < ApplicationController


  def index
    @students = Student.all
end

def new
    @student = Student.new
end

def edit
    @student = Student.find(params[:id])
end

def show
    @student = Student.find(params[:id])
end

def create
    @student = Student.new(student_params)
    if @student.valid?
        @student.save
        redirect_to student_path(@student)
    else
        render :new
    end
end

def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
end

private

def student_params
  params.require(:student).permit(:first_name, :last_name)

end
end
