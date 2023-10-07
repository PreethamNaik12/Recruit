class CreditSectionsController < InheritedResources::Base

  private

    def credit_section_params
      params.require(:credit_section).permit(:title)
    end

end
