class FormsController < InheritedResources::Base
  def new
    puts "Reached the new action"
    @id_form = 1
    id = @id_form
    @form=Form.find(id)
    @questions = Question.all
    @quetion = Question.new
  end
  private

    def form_params
      params.require(:form).permit(:role, :salary, :typeposition, :description)
    end

end
