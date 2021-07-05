class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  
  end
  
  def activate
    @student = Student.find(params[:id])
    # @student.update(@student.id, active: !@student.active)
    @student.update(active: !@student.active)
    # @student.active = !@student.active
    # @student.save
    # byebug
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end