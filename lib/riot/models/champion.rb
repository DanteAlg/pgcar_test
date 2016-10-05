module Riot
  class Champion < Riot::Base
    def full_name
      [name, title].join(', ')
    end

    def item_image_url(item_id)
      [ASSETS_URL, 'item', item_id].join('/') + '.png'
    end
  end
end
