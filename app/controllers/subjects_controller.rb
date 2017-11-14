class SubjectsController < ApplicationController
  def new
    @course = Course.find(params[:course_id])
    @subject = @course.subjects.new
  end

  def list
    @course = Course.find(params[:course_id])
    @subjects = Subject.all
    render :show
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
    @subject = Sighting.find(params[:id])
    render :edit
  end

  def update
    @subject = Sighting.find(params[:id])
    @course = @subject.course
    if @subject.update(subject_params)
      redirect_to course_path(@course)
    else
      render 'subjects/edit'
    end
  end

  def destroy
    @course = Course.find(params[:course_id])
    @subject = Sighting.find(params[:id])
    @subject.destroy
    redirect_to course_path(@course)
  end

  private
    def subject_params
      params.require(:subject).permit(:title, :week)
    end
  end
