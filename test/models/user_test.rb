# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  name               :string
#  age                :integer
#  sex                :string
#  email              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  encrypted_password :string
#  salt               :string
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @user = users(:shiva)
  end

=begin
  test "validate presence of name age sex email password" do
  	@user.name = 'ShivaK'
  	@user.password ='Shiva'
  	@user.save
  	#@user.password = "Shiva"
  	
  	puts @user.errors.count
  	puts @user.errors.to_a

  	assert @user.valid?
  end

  test "validate length of name email password" do
    @user.password = 'Shi'
    @user.name = 'skk'
    @user.save

  	puts @user.errors.count
  	puts @user.errors.to_a

  	assert @user.valid?
  end
=end
  test "validate format of emil" do
  	addresses = %w[Shiva@gmail.com shiva.1@gmail.com shi@gmail.com.org]
  	addresses.each do |addr|
  		@user.email = addr
  		@user.password = 'Shiva'
  		@user.save
  		puts @user.errors.to_a
  		assert @user.valid?
  	end

  end

  test "associated microposts should be destroyed" do
    @user.save
    @user.microposts.create!(content: "Lorem ipsum")
    assert_difference 'Micropost.count', -1 do
      @user.destroy
    end
  end






end
