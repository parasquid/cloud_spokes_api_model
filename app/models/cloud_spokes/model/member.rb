class CloudSpokes::Model::Member < CloudSpokes::Model::BaseApi
  attr_accessor :id, :name, :profile_pic, :attributes,
    :challenges_entered, :active_challenges, :time_zone,
    :total_1st_place, :total_2nd_place, :total_3st_place,
    :total_wins, :total_public_money, :total_points, :valid_submissions,
    :summary_bio, :payments

  has_many :recommendations
  has_many :challenges, parent: CloudSpokes::Model::Member

  def self.api_endpoint
    CloudSpokes::APP_CONFIG[:cs_api][:members]
  end

  # Used for resourceful routes (instead of id)
  def to_param
    name
  end

  # has_many :payments
  # Note that the json does not expose this method
  # TODO (this requires authentication)
  def payments
    'nil'
  end

  def self.search(keyword)
    request(:get, "search", {:keyword => keyword})
      .map {|member| CloudSpokes::Model::Member.new member}
  end

end
