class AnswersController < ApplicationController
  before_action :set_questions

  # def index
  # end

  # def show
  # end

  def new           # GET /answers/new
    @answer = Answer.new
  end

  def create  # POST /answers
    option_ids = params[:options].split(",")
    # binding.pry
    option_ids.each do |option_id|
      option = Option.find(option_id)
      Answer.create(user: current_user, option: option, date: DateTime.now)
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
    # @questions = Question.where(category: params[:category])
    @questions = Question.select { |q| q.category.name == params[:category] }
  end

  def answer_params
    params.require(:answer).permit(:option_id, :user_id, :date)
  end
end
