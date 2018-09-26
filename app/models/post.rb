class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination

    validates :title, length: {minimum:1}
    validates :content, length: {minimum:100}
    

    def upvote
        self.likes += 1
        self.save
    end



end
