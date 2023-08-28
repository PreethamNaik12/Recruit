class QuestionsController < InheritedResources::Base

  private

    def question_params
      params.require(:question).permit(:title, :required, :typequestion, :information)
    end

end
