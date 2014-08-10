class ImageProcessor

	@queue = :image_queue

	def self.perform(tags)

		count = 1
      	tags.map do |p|
        	#puts p.images.standard_resolution.url  
        	image_string = "image"+count.to_s+".jpg"
        	#puts image_string
          post = Post.new(source:"Instagram" , username:p["user"]["username"] , image_url:p["images"]["standard_resolution"]["url"] , local_add: "pranay", brand:"Cola" , processed:0)
          post.save!

        	open(image_string, 'wb') do |file|
          		file << open(p["images"]["standard_resolution"]["url"]).read 
        	end
        	count = count+1
      	end
		

		system("convert /home/pranay/rails_projects/sample_app/image1.jpg /home/pranay/rails_projects/sample_app/image.pgm")
		system("./tech_gen image.pgm")
	end

end