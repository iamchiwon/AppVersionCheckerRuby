class Version < ActiveRecord::Base
  
  def self.find_or_create(appkey)
    cver= find_by app_key: appkey
    
    if !cver
      cver= Version.new
      cver.app_key= appkey
      cver.latest_version= current
      cver.save
    end
    
    cver
  end
    

  def self.get_latest_version(appkey, current)
    cver= find_or_create appkey

    if cver.latest_version < current
      cver.latest_version= current
      cver.save
    end
    
    return cver.latest_version
  end
  
end
