# == Schema Information
#
# Table name: artwork_shares
#
#  id         :bigint           not null, primary key
#  artwork_id :integer          not null
#  viewer_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ArtworkShare < ApplicationRecord
    validates :artwork_id, presence: true, uniqueness: true #(scope: :viewer_id)
    validates :viewer_id, presence: true, uniqueness: true  #{in [true, false]}

    belongs_to :artwork,
    foreign_key: :artwork_id,
    class_name: :Artwork

    belongs_to :viewer,
    foreign_key: :viewer_id,
    class_name: :User

    

end
