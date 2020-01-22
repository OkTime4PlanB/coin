# frozen_string_literal: true

require 'rails_helper'

describe 'devise', type: :feature do
  before :each do
    create(:user)
  end

  it 'logs me in' do
    visit '/users/sign_in'
    fill_in 'Email', with: 'philip@schwaighofer.me'
    fill_in 'Password', with: 'password'
    click_button('Log in')
    expect(page).to have_content 'Signed in successfully.'
  end

  it 'signs me in' do
    visit '/users/sign_up'
    fill_in '* Email', with: 'philip@schwaighofer2.me'
    fill_in '* Password', with: 'password', exact: true
    fill_in '* Password confirmation', with: 'password', exact: true
    click_button('Sign up')
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end

  it 'logs me out' do
    visit '/'
    fill_in 'Email', with: 'philip@schwaighofer.me'
    fill_in 'Password', with: 'password'
    click_button('Log in')
    click_link('Logout')
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end
end
