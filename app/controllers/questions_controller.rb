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
<<<<<<< HEAD
      params.require(:question).permit(:content,:question_type_id,:form_id,:user_id)
=======
      params.require(:question).permit(:title,:form_id)
>>>>>>> b63d198afd1cd53145b0378f28d233b4563781bf
    end

end
