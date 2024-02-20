# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


200.times.each_with_index do |count,index|
require 'securerandom'
random_string = SecureRandom.hex

Company.create(
	name: "company_" + SecureRandom.random_number(800).to_s,
	address: (0...200).map { ('a'..'z').to_a[rand(26)] }.join,
	phone: SecureRandom.random_number(1000000000))
end

companies = Company.all.pluck(:id)
200.times.each_with_index do |count,index|
require 'securerandom'
random_string = SecureRandom.hex

User.create(
	email: "email"+count.to_s+"@yopmail.com",
	first_name: (0...10).map { ('a'..'z').to_a[rand(26)] }.join, 
	last_name: (0...10).map { ('a'..'z').to_a[rand(26)] }.join, 
	salary: SecureRandom.random_number(700000), 
	phone: SecureRandom.random_number(1000000000),
	company_id: companies.sample)
end



AIzaSyAEh_ntiERQ-VS3NN5uFHd6R6aqDQedTKw

Axlsx::Package.new do |p|
p.workbook.add_worksheet(:name => "Image") do |sheet|
	url = "https://smartflow-stg.s3.amazonaws.com/Invoice_pdf/2024/02/13/Test_PDF12345_1706194394_step_5_20240213114941386856.png"
	@logo_image = Tempfile.new("https://smartflow-stg.s3.amazonaws.com/Invoice_pdf/2024/02/13/Test_PDF12345_1706194394_step_5_20240213114941386856.png")
	@logo_image = Tempfile.new(['', ".png"])
	@logo_image.binmode # note that our tempfile must be in binary mode
	@logo_image.write open("https://smartflow-stg.s3.amazonaws.com/Invoice_pdf/2024/02/13/Test_PDF12345_1706194394_step_5_20240213114941386856.png").read
	@logo_image.rewind
	
	img = File.expand_path('../azure.png', __FILE__)
	sheet.add_image(:image_src => @logo_image.path, :noSelect => true, :noMove => true) do |image|
      image.start_at 22, 14
      image.end_at 23, 17
    end

    sheet.add_image(:image_src => img, :noSelect => true, :noMove => true) do |image|
      image.start_at 22, 24
      image.end_at 23, 27
    end
end
p.serialize('simple.xlsx')
end



require 'bundler'
Bundler.require

# Authenticate a session with your Service Account
session = GoogleDrive::Session.from_service_account_key("client_secret.json")
client_secret.json
sheet.add_row ["Simple Pie Chart"]
%w(first second third).each { |label| sheet.add_row [label, rand(24)+1] }
sheet.add_chart(Axlsx::Pie3DChart, :start_at => [0,5], :end_at => [10, 20], :title => "example 3: Pie Chart") do |chart|
chart.add_series :data => sheet["B2:B4"], :labels => sheet["A2:A4"],  :colors => ['FF0000', '00FF00', '0000FF']
end
end
p.serialize('simple.xlsx')
end