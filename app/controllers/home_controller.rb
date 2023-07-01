class HomeController < ApplicationController
  def index
    set_meta_tags title: "My Page Title",
      description: "This is a description of my page.",
      keywords: "keyword1, keyword2, keyword3",
      og: {
        title: "My Page Title",
        description: "This is a description of my page.",
        image: "url_to_image"
      },
      canonical: "https://www.example.com/my-page-url"
  end
end
