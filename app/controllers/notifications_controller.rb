class NotificationsController < InheritedResources::Base

  private

    def notification_params
      params.require(:notification).permit(:readtime, :heading, :description)
    end

end
