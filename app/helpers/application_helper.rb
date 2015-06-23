module ApplicationHelper
  def full_title(page_title)
    base_title = "GITADORA Tri-boost Skill Simulator"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
  def fetch_level(music_id ,kind)
    music = Music.find(music_id)

    case kind
    when 0 then 
      music.d_bsc
    when 1 then 
      music.d_adv
    when 2 then 
      music.d_ext
    when 3 then
      music.d_mas
    when 4 then 
      music.g_bsc
    when 5 then 
      music.g_adv
    when 6 then 
      music.g_ext
    when 7 then
      music.g_mas
    when 8 then 
      music.b_bsc
    when 9 then 
      music.b_adv
    when 10 then 
      music.b_ext
    when 11 then
      music.b_mas
     end
  end

  def show_kind (kind)
    case kind
      when 0,4,8
        "BSC"
      when 1,5,9
        "ADV"
      when 2,6,10
        "EXT"
      when 3,7,11
        "MAS"
      end
  end

  def kind_choices
    [["BSC",0],
     ["ADV",1],
     ["EXT",2],
     ["MAS",3],
     ["BSC(G)",4],
     ["ADV(G)",5],
     ["EXT(G)",6],
     ["MAS(G)",7],
     ["BSC(B)",8],
     ["ADV(B)",9],
     ["EXT(B)",10],
     ["MAS(B)",11]]
  end

  def show_color (kind)
    case kind
    when 0,4,8
      "info"
    when 1,5,9
      "warning"
    when 2,6,10
      "danger"
    when 3,7,11 
      "active"
    end
  end

  def show_rank(rate, isfc)
    case rate
    when 0..63 then 
      if isfc
        'C/FC'
      else
        'C'
      end
    when 63..73 then 
      if isfc
        "B/FC"
      else
        "B"
      end
    when 73..80 then 
      if isfc
        "A/FC"
      else
        "A"
      end
    when 80..95 then 
      if isfc
        "S/FC"
      else 
        "S"
      end
    when 95..100 then 
      if isfc
        "SS/FC"
      else 
        "SS"
      end
    else 
      "EXC"
   end
 end

  def fetch_music_name (id)
    music = Music.find_by_id(id)
    music.name
  end
end

