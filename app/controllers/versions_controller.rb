class VersionsController < ApplicationController
  
  def index
    @versions = Version.all
  end
  
  def query
    appkey= params[:appkey]
    cver= params[:cver]
    
    if !appkey || !cver
      render json: {'message'=>'parameter error'}, status: :bad_request
      return nil
    end
    
    @version= Version.find_or_create(appkey)
    @latest_version= Version.get_latest_version(appkey, cver)
    render json:@version, status: :ok
  end
  
end
