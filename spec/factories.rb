FactoryGirl.define do
	
	factory :user do
		sequence(:email)      {|n| "user_#{n}@openshop.com"}
		password              'default_password'
    password_confirmation 'default_password'
    first_name            'Hernan'
    last_name             'Herrera'
    birthdate							'1992-04-23'
	end

	factory :store do
		sequence(:title)      {|n| "title_#{n}"}
		description						"Sample description"
		user_id								FactoryGirl.create(:user)
	end

end