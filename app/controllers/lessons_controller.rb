class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:subject_id])
    @subject = @lesson.subject
    render :show
  end

  def page
    @lesson = Lesson.find(params[:id])
    render :page
  end

  private
    def lesson_params
      params.require(:lesson).permit(:title, :content, :subject_id, :day)
    end
  end
