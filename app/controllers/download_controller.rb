class DownloadController < ApplicationController

	def robot_car
		send_file "#{Rails.root}/app/assets/downloads/robot_car.zip", type: "application/zip", x_sendfile: true
	end

	def fundamental
		send_file "#{Rails.root}/app/assets/downloads/fundamental.zip", type: "application/zip", x_sendfile: true
	end
end
