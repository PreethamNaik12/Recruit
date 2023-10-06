class ResponsesController < InheritedResources::Base

  private

    def response_params
      params.require(:response).permit(:credits_earned)
    end

end
