require 'rails_helper'

RSpec.describe BookController, type: :controller do
  render_views

  it "has books" do
    get :list
    expect(response.status).to eq(200)
  end

  it "lists all books after creating a book successfully" do
    expect { post :create, params: {books: {title: "Example Book", price: 39.99, subject_id: 2, description: "this is a test book" }}
    }.to change { Book.all.count }.by(1)
    expect(response.status).to eq(302)
    expect(response).to redirect_to :action => :list
  end

  it "goes back to book detail after failing to create a book" do
    expect { post :create, params: {books: {title: "Example Book", subject_id: 2, description: "this is a test book" }}
    }.to change { Book.all.count }.by(0)
    expect(response.status).to eq(200)
    expect(controller).to render_template(:new)
  end

  it "blows up when the price is 88.88" do
    expect { post :create, params: {books: {title: "Example Book", price: 88.88, subject_id: 2, description: "this is a test book" }}
    }.to change { Book.all.count }.by(0)
    expect(response.status).to eq(500)
  end
end
