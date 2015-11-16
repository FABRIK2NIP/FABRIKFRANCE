class Print < ActiveRecord::Base
  cattr_accessor :form_steps do
    %w(attachment finition confirm)
  end

  attr_accessor :form_step

  validates :attachment, presence: true, if: -> { required_for_step?(:attachment) }
  validates :materiau, :qualite, :livraison, presence: true, if: -> { required_for_step?(:finition) }
  validates :address, :town, :departement, :zipcode, :pays, :useridentifiant, presence: true, if: -> { required_for_step?(:confirm) }


  def required_for_step?(step)
    return true if form_step.nil?
    return true if self.form_steps.index(step.to_s) <= self.form_steps.index(form_step)
  end

  mount_uploader :attachment, AttachmentUploader

end
