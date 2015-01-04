Spree::Order.class_eval do
  # attr_accessible :state, :is_pos, :completed_at, :payment_state

  scope :pos, -> { where(:is_pos => true) }
  scope :unpaid, -> { where("payment_state != 'paid'") }
  scope :unpaid_pos_order, ->{ pos.unpaid }

  def clean!
    payments.delete_all
    line_items.each { |line_item| contents.remove(line_item.variant, line_item.quantity, pos_shipment) }
    #shipment is removed on removing all items, so initializing a new shipment
    assign_shipment_for_pos
  end

  def complete_via_pos
    touch :completed_at
    create_tax_charge!
    save!
    payments.first.capture!
    # capture_payments!
    # self.finalize!
    updater.update_payment_state
    shipments.each { |shipment|  shipment.finalize_pos }
    

    updater.update_shipment_state
    save!
    updater.run_hooks

    deliver_order_confirmation_email
  end

  def assign_shipment_for_pos 
    shipments.create_shipment_for_pos_order if is_pos?
  end

  def save_payment_for_pos(payment_method_id, card_name = nil)
    payments.delete_all
    payment = payments.create(:amount => total, :payment_method_id => payment_method_id, :card_name => card_name)
  end

  def associate_user_for_pos(new_user_email)
    associate_with_user = Spree::User.where(:email => new_user_email).first || Spree::User.create_with_random_password(new_user_email)
    self.email = new_user_email if associate_with_user.valid?
    associate_with_user
  end

  def pos_shipment
    shipments.last
  end
end