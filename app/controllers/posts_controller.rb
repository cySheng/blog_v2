class PostsController < ApplicationController

  # @@posts = ['2020_05_resident_association_and_rukin_tetangga.md']
  def index
    file_path = File.expand_path('../../blog.json', __dir__)

    begin
      file = File.read(file_path)
      File.read(file_path)
      data = JSON.parse(file)
      @blog_posts = data["posts"]
      p(params[:title])

    rescue Errno::ENOENT => e
      puts "File not found: #{file_path}"
    rescue JSON::ParserError => e
      puts "Error parsing JSON: #{e.message}"
    end
  end

  def show
    file_path = File.expand_path('../../blog.json', __dir__)

    begin
      file = File.read(file_path)
      File.read(file_path)
      data = JSON.parse(file)
      print(params[:title])
      @blog_post = data["posts"].detect { |post| post[:title] == params[:title] }

    rescue Errno::ENOENT => e
      puts "File not found: #{file_path}"
    rescue JSON::ParserError => e
      puts "Error parsing JSON: #{e.message}"
    end
  end

  def check_deploy
    render plain: 'deploy_successful'
  end
end
