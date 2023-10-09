class AnswersController < ApplicationController
  def new
    puts "Reached the new action"
    @id_form = 1
    @questions = Question.all
    @answers = @questions.map { |question| Answer.new(question_id: question.id) }
  end

  def create

    @questions = Question.all
    answer_params_array = params[:answers][:answers]

    @answers = []

    answer_params_array.each do |answer_param|
      permitted_params = answer_param.permit(:content, :question_id)
      answer = Answer.new(permitted_params)
      @answers << answer
    end

    if @answers.all? { |answer| answer.valid? }
      @answers.each(&:save)
      redirect_to answers_new_path, notice: 'Answers were successfully created.'
    else
      render :new
    end
  end


  private

  def answer_params
    params.require(:answer).map { |a| a.permit(:content, :question_id) }
  end
end
