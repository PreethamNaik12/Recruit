class ResponsesController < InheritedResources::Base
  def new
    puts "Reached the new action"
    @response=Response.find(params[:id])
  end

  private

    def response_params
      params.require(:response).permit(:credits_earned)
    end

end
