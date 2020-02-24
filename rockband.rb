class Rockband

  attr_reader :instruments, :band_name, :lineup
  attr_accessor :members, :genre, :songs, :funds, :status

  def initialize(band_name, members, instruments, genre)
    @band_name= band_name
    @members= members
    @instruments= instruments
    @genre= genre
    @songs= ["I would do anything for love (but I won't do rat)", "Don't mess with the rat unless you want the teeth", "Once you go rat, you never come back"]
    @lineup= Hash[members.zip(instruments.map {|i| i.include?(',') ? (i.split /, /) : i})]
    @funds= -4000
    @status= true
  end

  def play_wicked_solo()
    return "WHEEDLEY WHEEDLY WHEELDY WHEEDLY WEEEEEEEEEEEE DUM"
  end

  def add_new_songs(new_songs)
    @songs.concat(new_songs)
  end

  def pay_manager(amount)
    @funds-=amount
  end

  def play_concert(fees, alcohol)
    alcohol== false ? @funds+=fees: @funds+=(0.1)*(fees.to_f())
  end

end
