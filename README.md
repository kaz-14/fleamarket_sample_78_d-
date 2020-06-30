# README

usersテーブル
|nickname|string| null:false
|email|string| null:false, unique: true, 
|password|string| null:false
|password_conform|string| null:false
|first_name|string| null:false
|last_name|string| null:false
|first_name_kana|string| null:false
|last_name_kana|string| null:false
|birthday|date| null:false
Association
- has_one :addresses
- has_one :cards
- has_many :products


addressesテーブル
|user_id|references|null:false,foreign_key: true|
|postal_code|string|null: false
|prefecture_id|string|null: false, foreign_key: true|
|city|string|null: false|
|block_number|string|null: false|
|apartment_name|string|
Association
- belongs_to :user
- has_many :products

productsテーブル
|name|string| null:false
|description|text|null: false
|price|integer| null:false
|condition|integer| null:false
|status|integer| null:false
|brand|string|
|send_price|integer| null:false
|buyer_id|integer| null:false
|category_id|integer| null:false, foreign_key: true
|user|references|index: true, foreign_key: true|
|shipping_date|string| null:false, foreign_key: true
|prefecture|integer| null:false
|size|string| null: false
Association
- belongs_to :user
- belongs_to :category
- has_many :images


cardsテーブル
|user_id|references| null:false, foreign_key: true
|customer_id|string| null:false
|card_id|string| null:false
Association
- belongs_to :user

imagesテーブル
image|text|null: false
product|references| null: false, foreign_key: true
Association
- belongs_to :products

categoriesテーブル
name| string | null: false
ancestry| string
Association
- has_many:product



