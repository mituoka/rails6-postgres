class HomeController < ApplicationController
  def top
    @posts=PostsData.all    
  end

  def new
    
  end

  def create
    logger.debug("create関数が呼ばれた")
    logger.debug(params[:title])
    logger.debug(params[:link_url])
    logger.debug(params[:image_name].original_filename)
    logger.debug(params[:description])

    # Formデータの格納
    @posts=PostsData.new(
      title: params[:title],
      link_url: params[:link_url],
      image_name: "default_user.jpg",
      description: params[:description]
    )
    @posts.image_name=params[:image_name].original_filename
    if @posts.save
      logger.debug("データの登録に成功しました")
      image=params[:image_name]
      File.binwrite("public/images/#{@posts.image_name}", image.read)
    else
      logger.debug("データの登録に失敗しました")
    end

    redirect_to("/home/top")
  end
end
