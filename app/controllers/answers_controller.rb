class AnswersController < ApplicationController
  before_action :set_questions
  before_action :set_options

  # def index
  # end

  # def show
  # end

  def new           # GET /answers/new
    @answer = Answer.new
  end

  def create        # POST /answers
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit          # GET /questions/:id/edit
  end

  def update        # PATCH /questions/:id
  end

  def destroy       # DELETE /questions/:id
  end

  private

  def set_questions
    @questions = Question.where(category: params[:category])
  end

  def set_options
    @options = Option.where(question_id: @question.id)
  end

  def answer_params
    params.require(:answer).permit(:option_id, :user_id, :date)
  end
end
