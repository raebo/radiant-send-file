#encoding: utf-8

class TrackDownloadMailer < ActionMailer::Base 


  def team_new_download_email(download)
    recipients "boris.raeschler@siimbyant.de"
    from "Siimbyant Kundenservice <kundenservice@siimbyant.de>"
    subject "Jemand hat die Broschüre auf der Homepage heruntergeladen"
    sent_on Time.now 
    content_type "multipart/alternative"
    
    part "text/plain" do |p|
      p.body = render_message("team_new_download_email_plain", :download => download)
    end
  end
end 

