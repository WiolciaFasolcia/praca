class Document < ActiveRecord::Base
	belongs_to :users
	belongs_to :dziedzinas
	#belongs_to :projects

	#mount_uploader :url, DocumentUploader
	

end
