require 'mongo_mapper'

MongoMapper.database = 'FootballFanWebsiteDb'

class Book
  include MongoMapper::Document
  
  key :book_id, String
  key :author, String
  key :title, String
  key :img_name, String
  key :purchase_url, String
  key :likes, String

  validates_presence_of :book_id, :author, :title, :img_name, :purchase_url, :likes, :message =>"site_id, author, title, img_name, purchase_url and likes are required values"
  validates_numericality_of :likes, :message=>"Likes field accepts integers only"
end

#Book.destroy_all

#Book.destroy(object_id)

#Book.create({:book_id =>'BK001', :author =>'Guillem Balague', :title =>'Pep Guardiola: Another Way of Winning',
#             :img_name =>'book1CoverImg.jpg', :purchase_url =>'http://www.amazon.com/Pep-Guardiola-Another-Way-Winning/dp/1409143759/ref=sr_1_7?s=books&ie=UTF8&qid=1371744587&sr=1-7',
#             :likes =>0})
#
#Book.create({:book_id => 'BK002', :author =>'Franklin Foer', :title => 'How Soccer Explains the World: An Unlikely Theory of Globalization',
#             :img_name => 'book2CoverImg.jpg',:purchase_url => 'http://www.amazon.com/How-Soccer-Explains-World-Globalization/dp/0061978051/ref=sr_1_3?s=books&ie=UTF8&qid=1371744587&sr=1-3',
#             :likes => 0})
#
#Book.create({:book_id => 'BK003', :author =>'Jonathan Wilson', :title =>'Inverting the Pyramid: The History of Football Tactics',
#             :img_name =>'book3CoverImg.jpg', :purchase_url =>'http://www.amazon.com/Inverting-Pyramid-History-Football-Tactics/dp/1409102041/ref=sr_1_2?s=books&ie=UTF8&qid=1371744587&sr=1-2',
#             :likes => 0})
#
#Book.create({:book_id => 'BK004', :author =>'Dan Abrahams', :title =>'Simple Tough: Simple Football Psychology Techniques to Improve Your Game',
#             :img_name =>'book4CoverImg.jpg', :purchase_url =>'http://www.amazon.com/Soccer-Tough-Football-Psychology-Techniques/dp/0957051190/ref=sr_1_4?s=books&ie=UTF8&qid=1371744587&sr=1-4',
#             :likes => 0})
#
#Book.create({:book_id => 'BK005', :author =>'Luca Caioli', :title =>'Messi: The Inside story of the Boy Who Became a Legend',
#             :img_name =>'book5CoverImg.jpg', :purchase_url =>'http://www.amazon.com/Messi-Inside-story-Became-Legend/dp/1906850399/ref=sr_1_6?s=books&ie=UTF8&qid=1371744587&sr=1-6',
#             :likes => 0})

#jsonData = ({:book_id => 'BK005', :author =>'Luca Caioli', :title =>'Messi: The Inside story of the Boy Who Became a Legend',
#             :img_name =>'book5CoverImg.jpg', :purchase_url =>'http://www.amazon.com/Messi-Inside-story-Became-Legend/dp/1906850399/ref=sr_1_6?s=books&ie=UTF8&qid=1371744587&sr=1-6',
#             :likes => 0})

#book = Book.new(jsonData)

#book.save

#puts Book.all.to_json
#
#puts Book.all.count