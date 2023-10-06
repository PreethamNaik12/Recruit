class CreditAnswersController < InheritedResources::Base
  def new
    puts "Reached the new action"
    @section = CreditSection.all
    @questions = CreditQuestion.all
    @answers = @questions.map { |question| CreditAnswer.new(credit_question_id: question.id) }
  end

  def create
    @questions = CreditQuestion.all
    answer_params_array = params[:answers][:answers]
    response = Response.create!

    @answers = []

    credit = 10
    answer_params_array.each do |answer_param|
      permitted_params = answer_param.permit(:answer, :credit_question_id)
      answer = CreditAnswer.new(permitted_params)
      if answer.credit_question_id == 1
        credit = credit+20
      end
      @answers << answer
    end

    response.credits_earned = credit
    response.save

    if @answers.all? { |answer| answer.valid? }
      @answers.each(&:save)
      redirect_to credit_answers_path, notice: 'Answers were successfully created.'
    else
      render :new
    end
  end

  private

    def credit_answer_params
      params.require(:credit_answer).permit(:answer, :credit_question_id)
    end

end
