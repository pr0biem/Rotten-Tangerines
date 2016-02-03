it "accesses the dashboard" do
  User.create(
    email: 'user@admin.com'
    firstname: 'admin'
    lastname: 'admin'
    password: 'password'
    password_confirmation: 'password'
    )

  visit root_path
  click_link "log in"
  fill_in 'Email', with: 'user@admin.com'
  fill_in 'Password' with: 'password'

  current_path.should eq admin_dashboard_path
  within 'h1' do
    page.should have_content 'Administration'
  end
  page.should have_content 'Manage Users'
  page.should have_content 'Manage Movies'
end