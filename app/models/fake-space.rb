# SpacesController

# before_action :find_space, only: [:show, :update, :edit, :destroy]

#   def index 
#     @spaces = Space.all 
#   end

#   def show 
#   end 

#   def new 
#     @space = Space.new 
#   end 

#   def create 
#     @space = Space.new(space_params)
#     if @space.save 
#       redirect_to @space 
#     else 
#       render :new 
#     end
#   end 

#   def edit 
#   end

#   def update 
#     @space.update(space_params)
#     redirect_to space_path(@space)
#   end 

#   def 
#     @space.destroy 
#   end

#   private 

#   def find_space 
#     @space = Space.find(params[:id])
#   end

#   def space_params 
#     #ToDo, identify params to be passed into the space_params
#   end
# end

#Space Model

# class Space < ApplicationRecord

#   validates :title, presence: true
#   # needs user_id
#   validates :price_per_day, presence: true
#   validates :address, presence: true, 
#   validates :availability_status, presence: true,
#   # missing validations on floor_space, longitude, latitude, description
# end

#Routes

##resources :spaces, only: [:index, :show, :new, :create]

# class CreateSpaces < ActiveRecord::Migration[6.0]
#   def change
#     create_table :spaces do |t|
#       t.string :title
#       t.integer :floor_space
#       t.integer :price_per_day
#       t.text :description
#       t.text :address
#       t.integer :longitude
#       t.integer :latitude
#       t.boolean :internet
#       t.boolean :availability_status
#       t.boolean :heating
#       t.boolean :lighting
#       t.references :user, foreign_key: true

#       t.timestamps
#     end
#   end
# end

# Change Table/Schema

# def change
#   create_table "windows", force: :cascade do |t|
#     t.string "title"
#     t.integer "floor_space"
#     t.integer "price_per_day"
#     t.text "description"
#     t.text "address"
#     t.integer "longitude"
#     t.integer "latitude"
#     t.boolean "internet"
#     t.boolean "availability_status"
#     t.boolean "heating"
#     t.boolean "lighting"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
# end