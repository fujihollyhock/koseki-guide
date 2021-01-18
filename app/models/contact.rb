class Contact
  include ActiveModel::Model

  attr_accessor :email, :message

  validates :email, :presence => {:message => 'メールアドレスを入力してください'}
  validates :message, :presence => {:message => 'お問い合わせ内容を入力してください'}
end