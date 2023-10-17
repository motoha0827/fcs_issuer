# frozen_string_literal: true

class CoinTransaction < ApplicationRecord
  belongs_to :stable_coin
  belongs_to :wallet

  enum payment_type: {
    issue: 0,
    burn: 1
  }

  validates :amount, presence: true
  validates :payment_type, presence: true
  validates :transaction_time, presence: true
end
