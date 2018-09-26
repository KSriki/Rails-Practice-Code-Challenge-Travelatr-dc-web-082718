class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination

    def upvote
        self.likes += 1
        self.save
    end



end
