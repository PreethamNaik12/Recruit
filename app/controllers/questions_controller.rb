class QuestionsController < InheritedResources::Base

  private

    def question_params
      params.require(:question).permit(:content,:question_type_id,:form_id,:user_id)
    end

end
