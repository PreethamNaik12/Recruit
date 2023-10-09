class OptionsController < InheritedResources::Base

  private

    def option_params
      params.require(:option).permit(:response,:question_id)
    end

end
