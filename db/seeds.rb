require File.expand_path('../../config/environment.rb', __FILE__)

tina = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")
tina_special_1 = tina.specials.create(name:"First Ladies of Comedy", length: 26.57, photo: "https://i.ytimg.com/vi/iKUFdzBulbk/maxresdefault.jpg" )
tina_special_2 = tina.specials.create(name:"Living While Funny", length: 36.57, photo: "https://static1.squarespace.com/static/59b7532ce3df28877c8ba604/t/5aa097489140b75cb2fb36ce/1520473932758/Fey%2C+Tina+3.jpg")

ellen = Comedian.create(name: "Ellen Degeneres", age: 60, city: "Metairie, PA")
ellen_special_1 = ellen.specials.create(name:"Here and Now", length: 59.55, photo: "https://i.ytimg.com/vi/D8jHAMaTEug/hqdefault.jpg" )
ellen_special_2 = ellen.specials.create(name:"One Night Stand", length: 29.08, photo: "https://www.etonline.com/sites/default/files/styles/max_970x546/public/images/2016-01/640_ellen_degeneres-503726776.jpg?itok=xDfFM9In")


whoopi = Comedian.create(name: "Whoopi Goldberg", age: 62, city: "New York City, NY")
whoopi_special_1 = whoopi.specials.create(name:"Fontaine", length: 52.01, photo: "https://static.standard.co.uk/s3fs-public/thumbnails/image/2017/02/10/15/whoopi-goldberg.jpg")
whoopi_special_2 = whoopi.specials.create(name:"Broadway's Best", length: 45.08, photo: "https://i.ytimg.com/vi/ewlUJsgrByI/hqdefault.jpg")

tig = Comedian.create(name: "Tig Notaro", age: 47, city: "Jackson, MS")
tig_special_1 = tig.specials.create(name:"Boyish Girl Interrupted", length: 58.33, photo: "https://www.hbo.com/content/dam/hbodata/specials/comedy/tig-notaro-boyish-girl-interrupted/key-art/tig-notaro-key-art-1920.jpg")
tig_special_2 = tig.specials.create(name:"Happy To Be Here", length: 56.01, photo: "https://cdn.pastemagazine.com/www/articles/Tig%20Notaro%20by%20Kevin%20Winter%20Main.jpg")

amy = Comedian.create(name: "Amy Poehler", age: 47, city: "Newton, MA")
amy_special_1 = amy.specials.create(name:"When I Was Younger", length: 55.01, photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Amy_Poehler_%288894155873%29_%28cropped%29.jpg/220px-Amy_Poehler_%288894155873%29_%28cropped%29.jpg")
amy_special_2 = amy.specials.create(name:"Where The Weird Kids Go", length: 50.44, photo: "https://media1.popsugar-assets.com/files/thumbor/LtU_bHMRwFpKjvhdm3Jb_VPP_to/fit-in/500x500/filters:format_auto-!!-:strip_icc-!!-/2012/12/51/4/192/1922398/0878c1f30a498514_amypoehler.jpg")

chelsea = Comedian.create(name: "Chelsea Handler", age: 43, city: "Livingston, NJ")
chelsea_special_1 = chelsea.specials.create(name:"Uganda Be Kidding Me", length: 60, photo: "https://cdn1.thr.com/sites/default/files/imagecache/scale_crop_768_433/2018/03/chelsea_handler_-_h_2018.jpg")
chelsea_special_2 = chelsea.specials.create(name:"Chelsea Does", length: 59.01, photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY5oSp8-CrT8CldYvNHvGny1RR0kOuuDdX1Q2-thgUT21HTfvb")

kristin = Comedian.create(name: "Kristin Wiig", age: 45, city: "Canandaigua, NY")
kristin_special_1 = kristin.specials.create(name:"Thanksgiving", length: 45.06, photo: "https://pmctvline2.files.wordpress.com/2018/01/kristen-wiig.jpg?w=620")
kristin_special_2 = kristin.specials.create(name:"Stars", length: 58.10, photo: "https://pmcvariety.files.wordpress.com/2016/11/kristen-wiig.jpg?w=1000")

ali = Comedian.create(name: "Ali Wong", age: 34, city: "San Francisco, CA")
ali_special_1 = ali.specials.create(name:"Hard Knock Wife", length: 66, photo: "https://nowtoronto.com/downloads/88075/download/Ali-Wong.jpg?cb=59fd68cfc59dee34820692ed820f6035")
ali_special_2 = ali.specials.create(name:"Unmasked", length: 62, photo: "https://ans-wer.com/uploads/gallery/topic_1529057324/ali-wong-is-an-american-stand-up-comedian-and-actress.jpg")

mindi = Comedian.create(name: "Mindy Kaling", age: 34, city: "Cambridge, MA")
mindy_special_1 = mindi.specials.create(name:"Mommy Shaming", length: 59.23, photo: "http://humormillmag.com/wp-content/uploads/2016/05/MindyKailing.jpg")
mindy_special_2 = mindi.specials.create(name:"Accent Not Included", length: 68, photo: "https://static01.nyt.com/images/2011/09/25/magazine/25kaling1/25kaling1-popup.jpg")

julia = Comedian.create(name: "Julia Louis-Dreyfus", age: 57, city: "New York City, NY")
julia_special_1 = julia.specials.create(name:"Here We Go Again", length: 39 , photo: "https://pbs.twimg.com/media/DWBDQ8kU8AAv0hs.jpg")
julia_special_2 = julia.specials.create(name:"Filming with Jerry", length: 66, photo: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Fpeopledotcom.files.wordpress.com%2F2016%2F08%2Fjld-gallery-1.jpg%3Fw%3D435&w=700&q=85")
