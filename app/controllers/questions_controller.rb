class QuestionsController < InheritedResources::Base
  def new
    puts "Reached the new action"
    @questions = Question.new
  end

  def create
    @questions = Question.new(question_params)

    if @questions.save
      redirect_to new_form_path, notice: 'question was successfully created.'
    else
      render :new
    end
  end

  private

    def question_params
      params.require(:question).permit(:title,:form_id)
    end

end
