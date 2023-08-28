class FormsController < InheritedResources::Base

  private

    def form_params
      params.require(:form).permit(:role, :salary, :typeposition, :description)
    end

end
