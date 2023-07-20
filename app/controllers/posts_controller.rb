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

      @blog_post = data["posts"].find { |post| post["link"] == params[:title] }

      set_meta_tags title: @blog_post["title"],
        # description: ,
        keywords: 'Data Scientist, Software Developer, UK, Malaysia, Resident Association, Rukun Tetangga',
        og: {
          title: :title,
        },
        twitter: {
          title: :title,
        }

      # display_meta_tags

    rescue Errno::ENOENT => e
      raise ActionController::RoutingError.new('Not Found')
    end
  end

  def check_deploy
    render plain: 'deploy_successful'
  end
end
