class TrackDownloadObserver < ActiveRecord::Observer
  
   def after_create(download)  
     TrackDownloadMailer.deliver_team_new_download_email(download)
   end
end 

