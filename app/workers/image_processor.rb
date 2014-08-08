class ImageProcessor

	@queue = :image_queue

	def self.perform(tags)

		count = 1
      	tags.map do |p|
        	#puts p.images.standard_resolution.url  
        	image_string = "image"+count.to_s+".jpg"
        	#puts image_string
          
        	open(image_string, 'wb') do |file|
          		file << open(p["images"]["standard_resolution"]["url"]).read 
        	end
        	count = count+1
      	end
		

		#{}`convert image.jpg image.pgm`
		#{}`./tech_gen image.pgm`
	end

end