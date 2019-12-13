class EmailValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
        record.errors[attribute] << (options[:message] || "Is not an email")
      end
    end
  end

class Advisor < ApplicationRecord
    self.primary_key = 'idAdvisor'
    validates :name, presence:true, numericality: false, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/, message: "Is not a name" }, length: { in: 6..60 }
    validates :email, presence:true, uniqueness: true, email: true, length: { in: 5..40 }
    validates :intern, inclusion: { in: [true, false] }
end