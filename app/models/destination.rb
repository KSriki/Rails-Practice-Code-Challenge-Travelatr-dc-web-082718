class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def most_recent
        self.posts.order("created_at").limit(5)
    end

    def featured_post
        self.posts.sort_by {|post| post.likes}.last
    end

    def average_age

        ages = self.bloggers.uniq.map {|blogger| blogger.age }
        total = ages.sum
        total =  (total.to_f / ages.size.to_f)
        total
    end


end
