# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :profile, polymorphic: true
  has_one_attached :image
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :likes
  has_many :properties
  has_many :messages_sent, class_name: 'InboxMessage', foreign_key: 'sender_id'
  has_many :messages_received, class_name: 'InboxMessage', foreign_key: 'receiver_id'
end
