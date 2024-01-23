class StudentsController < ApplicationController
  before_action :set_school
  before_action :set_student, only: [:show, :update, :destroy]

  def index
    @students = @school.students
    render json: @students
  end

  def show
    render json: @student
  end

  def create
    @student = @school.students.new(student_params)
    if @student.save
      render json: @student, status: :created
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  def update
    if @student.update(student_params)
      render json: @student
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @student.destroy
    head :no_content
  end

  private

  def set_school
    @school = School.find(params[:school_id])
  end

  def set_student
    @student = @school.students.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :age)
  end
end
