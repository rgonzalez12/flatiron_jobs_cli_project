class API
  
  BASE_URL = "https://boards-api.greenhouse.io/v1/boards/"
  def fetch
    url = BASE_URL + "flatironschoolcareers/jobs"
    response = HTTParty.get(url)
    # puts "Found #{response['jobs'].count} jobs" - tester method to check for total object count
    response["jobs"].each do |job|
      absolute_url = job["absolute_url"]
      location = job["location"]
      id = job["id"]
      title = job["title"]
      content = self.job_info(id)
      JobPost.new(absolute_url, location, id, title, content)
    end
  end
  
  def job_info(id)
    url = BASE_URL + "flatironschoolcareers/jobs/#{id}"
    response = HTTParty.get(url)
    response_content = Nokogiri::HTML(response["content"]).text.gsub(/<\/?[^>]*>/, "").strip
    response_content
  end
  
end