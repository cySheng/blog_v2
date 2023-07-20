class ApplicationController < ActionController::Base
  before_action :set_seo_tags

  def set_seo_tags
    set_meta_tags title: 'Sheng',
      description: 'I’m passionate about improving the lives of professionals and organizations by utilizing various technological tools',
      keywords: 'Data Scientist, Web Developer, UK, Malaysia, 3D Printing, Resident Association, Rukun Tetangga',
      author: 'Sheng',
      og: {
        title: :title,
        site_name: :site,
        description: :description,
        type: "website"
      },
      twitter: {
        card: "summary",
        creator: 'Sheng',
        title: :title,
        description: :description
      }
  end
end
