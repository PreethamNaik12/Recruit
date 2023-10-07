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

    credit = 0
    answer_params_array.each do |answer_param|
      permitted_params = answer_param.permit(:answer, :credit_question_id)
      answer = CreditAnswer.new(permitted_params)
      if answer.answer == nil
        answer.answer =0
      end
      #credit calculations
      if answer.credit_question_id == 1 || answer.credit_question_id == 2 || answer.credit_question_id == 3 || answer.credit_question_id == 4
        credit = credit + (answer.answer) * 8
      elsif answer.credit_question_id == 5
        credit = credit +(answer.answer) * 2
      elsif (answer.credit_question_id == 6 || answer.credit_question_id == 7 || answer.credit_question_id == 8 || answer.credit_question_id == 9
        answer.credit_question_id == 10 || answer.credit_question_id == 11 || answer.credit_question_id == 12 || answer.credit_question_id == 13)
        credit = credit +(answer.answer) * 8
      end

      @answers << answer
    end
    response.credits_earned = credit
    response.save

    if @answers.all? { |answer| answer.valid? }
      @answers.each(&:save)
      redirect_to new_response_path(id: response.id), notice: 'Answers were successfully created.'
    else
      render :new
    end
  end

  private

    def credit_answer_params
      params.require(:credit_answer).permit(:answer, :credit_question_id)
    end

end
