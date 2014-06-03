require 'mongo_mapper'

MongoMapper.database = 'FootballFanWebsiteDb'

class Website
  include MongoMapper::Document

  key :site_id, String
  key :name, String
  key :url, String
  key :likes, Integer

  validates_presence_of :site_id, :name, :url, :likes, :message =>"site_id, name, url and likes are required values"
  validates_numericality_of :likes, :message=>"Likes field accepts integers only"
end

#Website.destroy_all
#
#Website.create({:site_id =>'SITE001',:name =>'Weaintgotnohistory',
#                :likes=> 0, :url=>'http://www.weaintgotnohistory.com/'})
#
#Website.create({:site_id =>'SITE002',:name =>'Yahoo Eurosport',
#                :likes=> 0, :url=>'http://uk.eurosport.yahoo.com/football/'})
#
#Website.create({:site_id =>'SITE003',:name =>'SB Nation',
#                :likes=> 0, :url=>'http://www.sbnation.com/soccer'})
#
#Website.create({:site_id =>'SITE004',:name =>'The Guardian',
#                :likes=> 0, :url=>'http://www.guardian.co.uk/football'})
#
#Website.create({:site_id =>'SITE005',:name =>'The Telegraph',
#                :likes=> 0, :url=>'http://www.telegraph.co.uk/sport/football/'})

#data = ({:site_id =>'SITE006',:name =>'The Telegraph',
#                :likes=> 0, :url=>'http://www.telegraph.co.uk/sport/football/'})
#
#website = new(data)
#
#website.save

#puts Website.all.to_json

#puts Website.all.count