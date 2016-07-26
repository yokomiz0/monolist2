class RankingController < ApplicationController
    def want
        @ranking = Want.group(:item_id).order('count_all desc').limit(10).count
    end
    
    def have
        @ranking = Have.group(:item_id).order('count_all desc').limit(10).count
        # {item_id: count, item_id2: count2, ... }
        # {item_id: [item, count], item_id2: [item, count], ... }
    end
end
