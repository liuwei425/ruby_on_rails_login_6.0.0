class Post < ApplicationRecord
    belongs_to :category
    validates :title, :content, :category_id, :country,  presence: true
    def country_name
        c = ISO3166::Country[self.country]
        return c.translations[I18n.locale.to_s] || c.name
    end
end
