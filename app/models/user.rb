class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  #validates :email, format: { with: /^(.+)@(.+)$/, message: "Email invalid" }, uniqueness: { case_sensitive: false }, length: { minimum: 4, maximum: 254 }
  validates :password, presence: true, confirmation: true, length: { within: 6..40 }
  validates :phone_number, presence: true, numericality: true, length: { minimum: 10, maximum: 15 }

  # TO-DO: has_many :windows


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

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

# rails g model Space title floor_space:integer price_per_day:integer description:text address:text longitude:integer latitude:integer internet:boolean availability_status:boolean heating:boolean lighting:boolean user:references

# rails g controller Spaces

##resources :spaces, only: [:index, :show, :new, :create]