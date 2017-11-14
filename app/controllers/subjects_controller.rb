class SubjectsController < ApplicationController
  def new
    @course = Course.find(params[:course_id])
    @subject = @course.subjects.new
  end

  def index
    @course = Course.find(params[:id])
    @subjects = @course.subjects
  end

  def show
    @subject = Subject.find(params[:id])
    @lessons = @subject.lessons
  end

  def create
    @course = Course.find(params[:course_id])
    @subject = @course.subjects.new(subject_params)
    if @subject.save
      redirect_to course_path(@subject.course)
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:course_id])
    @subject = Subject.find(params[:id])
    render :edit
  end

  def update
    @subject = Subject.find(params[:id])
    @course = @subject.course
    if @subject.update(subject_params)
      redirect_to course_path(@course)
    else
      render 'subjects/edit'
    end
  end

  def destroy
    @course = Course.find(params[:course_id])
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to course_path(@course)
  end

  private
    def subject_params
      params.require(:subject).permit(:title, :week)
    end
  end
