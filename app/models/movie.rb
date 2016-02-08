class Movie < ActiveRecord::Base

  has_many :reviews

  validates :title,
    presence: true

  validates :director,
    presence: true

  validates :runtime_in_minutes,
    numericality: { only_integer: true }

  validates :description,
    presence: true

  validates :release_date,
    presence: true

  validate :release_date_is_in_the_past

  mount_uploader :image, ImageUploader

  scope :search_keyword, -> (info) { where('title LIKE ? OR director LIKE ? ', "%#{info}%", "%#{info}%") }

  def review_average
    reviews.sum(:rating_out_of_ten)/reviews.size
  end

  # def self.search(info)
  #   @movies = all
  #   where('title LIKE ? OR director LIKE ? ', "%#{info}%", "%#{info}%")
  # end
  

   def self.runtime_length(range)
      case range
      when ""
        where('runtime_in_minutes')
      when "short"
        where('runtime_in_minutes < 90') 
      when "medium"
        where('runtime_in_minutes >= 90 and runtime_in_minutes < 120')
      when "long"
        where('runtime_in_minutes >= 120')
      end
    end

  protected

  def release_date_is_in_the_past
    if release_date.present?
      errors.add(:release_date, "should be in the past") if release_date > Date.today
    end
  end

end