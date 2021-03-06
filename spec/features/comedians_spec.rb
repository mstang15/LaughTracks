RSpec.describe "Comedians" do
  describe "When I visit /comedians" do
    it "has a list of comedians" do
      comedian_1 = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")
      comedian_2 = Comedian.create(name: "Ellen Degeneres", age: 60, city: "Metairie, PA")
      comedian_3 = Comedian.create(name: "Whoopi Goldberg", age: 62, city: "New York City, NY")

      visit '/comedians'

      within('#comedians') do
        expect(page).to have_content(comedian_1.name)
        expect(page).to have_content(comedian_2.name)
        expect(page).to have_content(comedian_3.name)
      end
    end

    it "has names" do
      comedian_1 = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")

      visit '/comedians'

      within('#comedians') do
        expect(page).to have_content(comedian_1.name)
      end
    end

    it "has age" do
      comedian_1 = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")

      visit '/comedians'

      within('#comedians') do
        expect(page).to have_content(comedian_1.age)
      end
    end

    it "has city" do
      comedian_1 = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")

      visit '/comedians'

      within('#comedians') do
        expect(page).to have_content(comedian_1.city)
      end
    end

    it "has a list of specials for each comedian" do
      tina = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")
      ellen = Comedian.create(name: "Ellen Degeneres", age: 60, city: "Metairie, PA")
      tina_special_1 = tina.specials.create(name:"First Ladies of Comedy", length: 26.57, photo: "https://i.ytimg.com/vi/iKUFdzBulbk/maxresdefault.jpg" )
      tina_special_2 = tina.specials.create(name:"Living While Funny", length: 36.57, photo: "https://static1.squarespace.com/static/59b7532ce3df28877c8ba604/t/5aa097489140b75cb2fb36ce/1520473932758/Fey%2C+Tina+3.jpg")
      ellen_special_1 = ellen.specials.create(name:"Here and Now", length: 59.55, photo: "https://i.ytimg.com/vi/D8jHAMaTEug/hqdefault.jpg" )
      ellen_special_2 = ellen.specials.create(name:"One Night Stand", length: 29.08, photo: "https://www.etonline.com/sites/default/files/styles/max_970x546/public/images/2016-01/640_ellen_degeneres-503726776.jpg?itok=xDfFM9In")

      visit '/comedians'

      within('#comedians') do
        expect(page).to have_content(tina_special_1.name)
        expect(page).to have_content(tina_special_1.length)
        expect(page).to have_content(tina_special_2.name)
        expect(page).to have_content(tina_special_2.length)
        expect(page).to have_content(ellen_special_1.name)
        expect(page).to have_content(ellen_special_1.length)
        expect(page).to have_content(ellen_special_2.name)
        expect(page).to have_content(ellen_special_2.length)
      end
    end

    it "I see statistics at the top of the page" do
      visit '/comedians'

      within('#statistics') do
        expect(page).to have_content("Statistics")
      end
    end

    it "I can see average age of comedians" do
      tina = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")
      ellen = Comedian.create(name: "Ellen Degeneres", age: 60, city: "Metairie, PA")
      tina_special_1 = tina.specials.create(name:"First Ladies of Comedy", length: 26.57, photo: "https://i.ytimg.com/vi/iKUFdzBulbk/maxresdefault.jpg" )
      tina_special_2 = tina.specials.create(name:"Living While Funny", length: 36.57, photo: "https://static1.squarespace.com/static/59b7532ce3df28877c8ba604/t/5aa097489140b75cb2fb36ce/1520473932758/Fey%2C+Tina+3.jpg")
      ellen_special_1 = ellen.specials.create(name:"Here and Now", length: 59.55, photo: "https://i.ytimg.com/vi/D8jHAMaTEug/hqdefault.jpg" )
      ellen_special_2 = ellen.specials.create(name:"One Night Stand", length: 29.08, photo: "https://www.etonline.com/sites/default/files/styles/max_970x546/public/images/2016-01/640_ellen_degeneres-503726776.jpg?itok=xDfFM9In")

      visit '/comedians'

      within ('#statistics') do

        average_age = Comedian.average_age
        expect(page).to have_content(average_age)
      end
    end

    it "I can see average special length of comedians" do
      tina = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")
      ellen = Comedian.create(name: "Ellen Degeneres", age: 60, city: "Metairie, PA")
      tina_special_1 = tina.specials.create(name:"First Ladies of Comedy", length: 26.57, photo: "https://i.ytimg.com/vi/iKUFdzBulbk/maxresdefault.jpg" )
      tina_special_2 = tina.specials.create(name:"Living While Funny", length: 36.57, photo: "https://static1.squarespace.com/static/59b7532ce3df28877c8ba604/t/5aa097489140b75cb2fb36ce/1520473932758/Fey%2C+Tina+3.jpg")
      ellen_special_1 = ellen.specials.create(name:"Here and Now", length: 59.55, photo: "https://i.ytimg.com/vi/D8jHAMaTEug/hqdefault.jpg" )
      ellen_special_2 = ellen.specials.create(name:"One Night Stand", length: 29.08, photo: "https://www.etonline.com/sites/default/files/styles/max_970x546/public/images/2016-01/640_ellen_degeneres-503726776.jpg?itok=xDfFM9In")

      visit '/comedians'

      within ('#statistics') do

        average_length = Special.average_run_length
        expect(page).to have_content(average_length)
      end
    end

    it 'I can see a list of unique cities where comedians are from' do
      tina = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")
      tina_special_1 = tina.specials.create(name:"First Ladies of Comedy", length: 26.57, photo: "https://i.ytimg.com/vi/iKUFdzBulbk/maxresdefault.jpg" )
      tina_special_2 = tina.specials.create(name:"Living While Funny", length: 36.57, photo: "https://static1.squarespace.com/static/59b7532ce3df28877c8ba604/t/5aa097489140b75cb2fb36ce/1520473932758/Fey%2C+Tina+3.jpg")

      ellen = Comedian.create(name: "Ellen Degeneres", age: 60, city: "New York City, NY")
      ellen_special_1 = ellen.specials.create(name:"Here and Now", length: 59.55, photo: "https://i.ytimg.com/vi/D8jHAMaTEug/hqdefault.jpg" )
      ellen_special_2 = ellen.specials.create(name:"One Night Stand", length: 29.08, photo: "https://www.etonline.com/sites/default/files/styles/max_970x546/public/images/2016-01/640_ellen_degeneres-503726776.jpg?itok=xDfFM9In")

      whoopi = Comedian.create(name: "Whoopi Goldberg", age: 62, city: "New York City, NY")
      whoopi_special_1 = whoopi.specials.create(name:"Fontaine", length: 52.01, photo: "https://static.standard.co.uk/s3fs-public/thumbnails/image/2017/02/10/15/whoopi-goldberg.jpg")
      whoopi_special_2 = whoopi.specials.create(name:"Broadway's Best", length: 45.08, photo: "https://i.ytimg.com/vi/ewlUJsgrByI/hqdefault.jpg")

      visit '/comedians'

      within ('#statistics') do
        unique_city_list = Comedian.unique_cities
        unique_city_list.each do |city|
          expect(page).to have_content(city)
        end
      end
    end

      it 'shows the total number of specials for that comedian' do
        whoopi = Comedian.create(name: "Whoopi Goldberg", age: 62, city: "New York City, NY")
        whoopi_special_1 = whoopi.specials.create(name:"Fontaine", length: 52.01, photo: "https://static.standard.co.uk/s3fs-public/thumbnails/image/2017/02/10/15/whoopi-goldberg.jpg")
        whoopi_special_2 = whoopi.specials.create(name:"Broadway's Best", length: 45.08, photo: "https://i.ytimg.com/vi/ewlUJsgrByI/hqdefault.jpg")

        visit '/comedians'

        within ('#comedians') do
          expect(page).to have_content(2)
        end
      end

      it 'shows the comedians that have an age of 34' do
        comedian_1 = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")
        comedian_2 = Comedian.create(name: "Ellen Degeneres", age: 34, city: "Metairie, PA")
        comedian_3 = Comedian.create(name: "Whoopi Goldberg", age: 62, city: "New York City, NY")

        visit '/comedians?age=34'

        within ('#comedians') do
          expect(page).to have_content(comedian_2.name)
          expect(page).to_not have_content(comedian_1.name)
        end
      end

      it 'shows correct statistics for comedians with age 34' do
        tina = Comedian.create(name: "Tina Fey", age: 34, city: "Upper Darby, PA")
        tina_special_1 = tina.specials.create(name:"First Ladies of Comedy", length: 26.57, photo: "https://i.ytimg.com/vi/iKUFdzBulbk/maxresdefault.jpg" )
        tina_special_2 = tina.specials.create(name:"Living While Funny", length: 36.57, photo: "https://static1.squarespace.com/static/59b7532ce3df28877c8ba604/t/5aa097489140b75cb2fb36ce/1520473932758/Fey%2C+Tina+3.jpg")

        ellen = Comedian.create(name: "Ellen Degeneres", age: 34, city: "New York City, NY")
        ellen_special_1 = ellen.specials.create(name:"Here and Now", length: 59.55, photo: "https://i.ytimg.com/vi/D8jHAMaTEug/hqdefault.jpg" )
        ellen_special_2 = ellen.specials.create(name:"One Night Stand", length: 29.08, photo: "https://www.etonline.com/sites/default/files/styles/max_970x546/public/images/2016-01/640_ellen_degeneres-503726776.jpg?itok=xDfFM9In")

        whoopi = Comedian.create(name: "Whoopi Goldberg", age: 62, city: "Hershey, PA")
        whoopi_special_1 = whoopi.specials.create(name:"Fontaine", length: 52.01, photo: "https://static.standard.co.uk/s3fs-public/thumbnails/image/2017/02/10/15/whoopi-goldberg.jpg")
        whoopi_special_2 = whoopi.specials.create(name:"Broadway's Best", length: 45.08, photo: "https://i.ytimg.com/vi/ewlUJsgrByI/hqdefault.jpg")

        average_age_34_year_olds = (tina.age + ellen.age)/2
        number_of_specials = 4
        average_special_length = (tina_special_1.length + tina_special_2.length + ellen_special_1.length + ellen_special_2.length)/4

        visit '/comedians?age=34'

        within ('#statistics') do
          expect(page).to have_content(average_age_34_year_olds)
          expect(page).to have_content(number_of_specials)
          expect(page).to have_content(average_special_length)
          expect(page).to_not have_content("Hershey, PA")
        end
      end

      it 'shows the total amount of specials from all comedians' do
        tina = Comedian.create(name: "Tina Fey", age: 48, city: "Upper Darby, PA")
        tina_special_1 = tina.specials.create(name:"First Ladies of Comedy", length: 26.57, photo: "https://i.ytimg.com/vi/iKUFdzBulbk/maxresdefault.jpg" )
        tina_special_2 = tina.specials.create(name:"Living While Funny", length: 36.57, photo: "https://static1.squarespace.com/static/59b7532ce3df28877c8ba604/t/5aa097489140b75cb2fb36ce/1520473932758/Fey%2C+Tina+3.jpg")

        ellen = Comedian.create(name: "Ellen Degeneres", age: 60, city: "New York City, NY")
        ellen_special_1 = ellen.specials.create(name:"Here and Now", length: 59.55, photo: "https://i.ytimg.com/vi/D8jHAMaTEug/hqdefault.jpg" )
        ellen_special_2 = ellen.specials.create(name:"One Night Stand", length: 29.08, photo: "https://www.etonline.com/sites/default/files/styles/max_970x546/public/images/2016-01/640_ellen_degeneres-503726776.jpg?itok=xDfFM9In")

        whoopi = Comedian.create(name: "Whoopi Goldberg", age: 62, city: "New York City, NY")
        whoopi_special_1 = whoopi.specials.create(name:"Fontaine", length: 52.01, photo: "https://static.standard.co.uk/s3fs-public/thumbnails/image/2017/02/10/15/whoopi-goldberg.jpg")
        whoopi_special_2 = whoopi.specials.create(name:"Broadway's Best", length: 45.08, photo: "https://i.ytimg.com/vi/ewlUJsgrByI/hqdefault.jpg")

        visit '/comedians'

        within ('#statistics') do
          expect(page).to have_content(6)
        end
      end
    end

  describe 'when I visit /comedians/new' do
    it 'creates a new comedian' do
    visit '/comedians/new'

    new_comedian = "Meghan Stang"
    fill_in "comedian[name]", with: new_comedian
    fill_in "comedian[age]", with: 300
    fill_in "comedian[city]", with: 5
    click_button "Submit"

      expect(current_path).to eq("/comedians")
      expect(page).to have_content(new_comedian)
    end
  end
end
