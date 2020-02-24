require('minitest/autorun')
require('minitest/reporters')
require('pry')
require_relative('../rockband')
Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new)

class TeamTesting < MiniTest::Test

  def setup()
    band_name= "Rats 'N' Roses"
    members= ["Ratthew", "Ratilda", "Raterina", "DJ Ricky Rat", "Steve"]
    instruments= ["Rat vocals", "Rat bass", "Rat guitar", "Rat DJ/hypeman", "Drums"]
    genre= "Post industrial proto punk ratcore"
    @ratband= Rockband.new(band_name, members, instruments, genre)
  end

  def test_get_band_name
    assert_equal("Rats 'N' Roses", @ratband.band_name)
  end

  def test_get_lineup
    lineup= {"Ratthew"=>"Rat vocals",
      "Ratilda"=>"Rat bass",
      "Raterina"=>"Rat guitar",
      "DJ Ricky Rat"=>"Rat DJ/hypeman",
      "Steve"=>"Drums"}
    assert_equal(lineup, @ratband.lineup)
  end

  def test_genre_change
    new_genre= "Mumble rat"
    @ratband.genre= new_genre
    assert_equal(new_genre, @ratband.genre)
  end

  def test_add_new_songs
    old_songs= ["I would do anything for love (but I won't do rat)", "Don't mess with the rat unless you want the teeth", "Once you go rat, you never come back"]
    new_songs= ["Rat to the Future", "Starting a rat-based concept band was not a bad idea, Mom"]
    @ratband.add_new_songs(new_songs)
    assert_equal(old_songs.concat(new_songs), @ratband.songs)
  end

  def test_guitar_solo
    wicked_solo= "WHEEDLEY WHEEDLY WHEELDY WHEEDLY WEEEEEEEEEEEE DUM"
    assert_equal(wicked_solo, @ratband.play_wicked_solo())
  end

  def test_pay_manager
    @ratband.pay_manager(200)
    assert_equal(-4200, @ratband.funds)
  end

  def test_play_concert_no_alcohol
    @ratband.play_concert(50, false)
    assert_equal(-3950, @ratband.funds)
  end

  def test_play_concert_with_alcohol
    @ratband.play_concert(50, true)
    assert_equal(-3995, @ratband.funds)
  end

  def test_bands_career
    while @ratband != nil
      alcohol_influence= [true, false].sample
      @ratband.play_concert(200, alcohol_influence)
      @ratband.pay_manager(100)
      if @ratband.funds >=  -5000
        p "See you later, mom's basement"
        assert(@ratband)
        break
      elsif @ratband.funds < 15000
        p "Hey this rat-based concept band sucks"
        @ratband = nil
        assert_nil(@ratband)
        break
      end
    end

  end


end
