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
      track_download.remote_ip = request.remote_ip
      track_download.document_name = params[:id]
      track_download.save
    end

    send_file RAILS_ROOT + "/vendor/extensions/send_file/db/documents/" + filename + ".pdf", :type => 'application/pdf'
  end
end

