require 'mongo_mapper'

MongoMapper.database = 'FootballFanWebsiteDb'

class Video
  include MongoMapper::Document

  key :video_id, String
  key :name, String
  key :url, String
  key :likes, Integer

  validates_presence_of :video_id, :name, :url, :likes, :message =>"video_id, name, url and likes are required values"
  validates_numericality_of :likes, :message=>"Likes field accepts integers only"
end

#Video.destroy_all
#
#Video.create({:video_id =>'VID001', :name =>'Soccer, the beautiful game',
#             :likes=> 0 , :url =>'http://www.youtube.com/embed/7a_mrcRgHWI'})
#
#Video.create({:video_id =>'VID002', :name =>'Ronaldinho vs Madrid 2005',
#              :likes=> 0 , :url =>'http://www.youtube.com/embed/_c55cW6UGP0'})
#
#Video.create({:video_id =>'VID003', :name =>'Zinedine Zidane Compilation',
#              :likes=> 0 , :url =>'http://www.youtube.com/embed/C7mXGMcpA0g'})
#
#Video.create({:video_id =>'VID004', :name =>'Gianfranco Zola Compilation',
#              :likes=> 0 , :url =>'http://www.youtube.com/embed/TrhXmvuWMPA'})
#
#Video.create({:video_id =>'VID005', :name =>'Best Goals in Football',
#              :likes=> 0 , :url =>'http://www.youtube.com/embed/dCzFgLndyL4'})

#data  = ({:video_id =>'VID005', :name =>'Best Goals in Football',
#          :likes=> 0 , :url =>'http://www.youtube.com/embed/dCzFgLndyL4')}
#
#video = new(data)
#
#video.save

#puts Video.all.to_json

#puts Video.all.count