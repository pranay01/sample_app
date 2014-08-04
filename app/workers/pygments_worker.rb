class PygmentsWorker
	include Sidekiq::Worker 

	def perform(snippet_id)
		snippet =Snippet.find(snippet_id)
		uri = URI.parse("http://pygments.appspo.com/")
	end

end