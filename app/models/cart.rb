class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  has_many :items, through: :line_items

  before_destroy :resume_order

  def add_instrument(instrument)
    current_item = line_items.find_by(instrument_id: instrument.id)

    if current_item
      current_item.increment(:quantity)
    else
      current_item = line_items.build(instrument_id: instrument.id)
    end
    current_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end

  def resume_order
      # Envoy un mail de confirmation pour la commande 
      OrderMailer.resume_order(current_user,items).deliver_now

      # Enregistre les commandes effectuées
      items.each{|item|
         Order.create(user_id:current_user.id, item_id: item.id)
      }
  end

end
