class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
    # @student = set_student 
  end

  def activate
    # @student = set_student
    if !@student.active 
      @student.active = true
      @student.save
    else 
      @student.active = false
      @student.save
    end
    redirect_to @student
  end

  def post 
    
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end