class CreditQuestionsController < InheritedResources::Base

  def new
    @credit_question = CreditQuestion.new
  end

  def create
    @credit_question = CreditQuestion.new(credit_question_params)

    if @credit_question.save
      redirect_to @credit_question, notice: 'Credit question was successfully created.'
    else
      render :new
    end
  end
  
  private

    def credit_question_params
      params.require(:credit_question).permit(:title)
    end

end
