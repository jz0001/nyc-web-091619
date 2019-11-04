# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alohe database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Celebrity.destroy_all


celebrities =  [
    {
      name: "drake",
      image: "https://thefader-res.cloudinary.com/private_images/w_760,c_limit,f_auto,q_auto:best/GettyImages-1150854386_x4sv6k/drake-cash-money-frozen-moments-llc-best-in-the-world.jpg"
    },
    {
      name: "kanye",
      image: "https://www.udiscovermusic.com/wp-content/uploads/2017/06/KanyeWest_SarahFriedman_UMG-web-optimised-1000.jpg"
    },
    {
      name: "justin bieber",
      image: "https://timedotcom.files.wordpress.com/2014/06/justin-bieber-racist.jpg"
    },
    {
      name: "DJ Khaled",
      image: "https://static.hiphopdx.com/2019/06/190607-DJ-Khaled-826x620.jpg"
    },
    {
      name: "Riff Raff",
      image: "https://media1.fdncms.com/inlander/imager/u/original/2804745/music2-1-e5806a0b99bd9e9c.jpg"
    },
    {
      name: "Kim Kardashian",
      image: "https://a57.foxnews.com/static.foxnews.com/foxnews.com/content/uploads/2019/05/931/524/Kim-Kardashian.jpg?ve=1&tl=1"
    },
    {
      name: "something",
      image: "test link",
    },
    {
      name: "Lil Wayne",
      image: "https://images.complex.com/complex/images/c_limit,dpr_auto,q_90,w_720/fl_lossy,pg_1/ckjmluxalalclptpluxt/lil-wayne-concert",
    },
    {
      name: "Eminem",
      image: "https://townsquare.media/site/812/files/2019/08/Eminem.jpg?w=980&q=75",
    }
  ]

  celebrities.each do |celeb|
    Celebrity.create!(celeb)
  end   

  Appearance.create(title: "Degrassi", celebrity: Celebrity.first)