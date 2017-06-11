class Listing < ApplicationRecord
    mount_uploader :image, ImageUploader

    validates_presence_of :image
    validates :name, :description, :price, :catid, presence: true
    validates :price, numericality: { greater_than: 0 }
    validates :mob, length: { maximum: 10, too_long: "%{count} цифр має бути" } 

    belongs_to :user
    has_many :orders
    has_many :listing_attachments
    accepts_nested_attributes_for :listing_attachments

    filterrific(
        default_filter_params: { sorted_by: 'created_at_DESC' },
        available_filters: [
            :sorted_by,
            :search_query,
            :with_catid,
            :with_created_at_gte
        ]
    )
    scope :sorted_by, lambda { |sort_key|
        direction = (sort_key =~ /desc$/) ? 'desc' : 'asc'
        case sort_key.to_s
        when /^name/
            order("LOWER(listings.name) #{ direction }")
        when /^description/
            order("LOWER(listings.description) #{ direction }")
        when /^price/
            order("listings.price #{ direction }")
        when /^created_at/
            order("LOWER(listings.created_at) #{ direction }")
        else
            raise(ArgumentError, "Invalid sort option: #{ sort_key.inspect }")
        end
    }
    scope :search_query, lambda { |query|
        return nil  if query.blank?

        terms = query.downcase.split(/\s+/)
        terms = terms.map { |e|
            (e.gsub('*', '%') + '%').gsub(/%+/, '%')
        }

        num_or_conds = 1
        where(
            terms.map { |term|
            "(LOWER(listings.name) LIKE ?)"
            }.join(' AND '),
            *terms.map { |e| [e] * num_or_conds }.flatten
        )
    }
    scope :with_catid, lambda { |catids|
        where(catid: [*catids])
    }
    scope :with_created_at_gte, lambda { |ref_date|
       where('students.created_at >= ?', ref_date)
    }
end
