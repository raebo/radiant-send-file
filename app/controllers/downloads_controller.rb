#encoding: utf-8

class DownloadsController < ApplicationController
  # radiant_layout 'bootstrap_start_page'
  no_login_required

  def show
    filename = ""

    if params[:id]
      filename = params[:id] #"Umweltcockpit-Modulübersicht")}"
      # if params[:id] == "Umweltcockpit-Modulübersicht" || params[:id] == "Siimbyant-Vorstellung-Umweltcockpit"
      #   file_name = params[:id]
      # end
      track_download = TrackDownload.new
      track_download.document_name = params[:id]
      track_download.remote_ip = request.remote_ip + " / #{request.env["HTTP_X_FORWARDED_FOR"]} / #{request.env["X-Real-IP"]} / #{request.env["HTTP_X_REAL_IP"]}"
      track_download.save
    end

    begin
      if params[:id] != "Siimbyant-Vorstellung-Umweltcockpit"
        send_file RAILS_ROOT + "/vendor/extensions/send_file/db/documents/Umweltcockpit-Modulübersicht.pdf", :type => 'application/pdf'
      else
        send_file RAILS_ROOT + "/vendor/extensions/send_file/db/documents/" + filename + ".pdf", :type => 'application/pdf'
      end
    rescue Exception => e
      puts e.message
      puts e.backtrace.inspect

      redirect_to "/"
    else
      # other exception
    ensure
      # always executed
    end
    
  end
end

