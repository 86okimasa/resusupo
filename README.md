# テーブル設計

## admins テーブル

| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| shop_name | string | null: false |
| email     | string | null: false |
| password  | string | null: false |

### Association

- has_one :information


## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :comments
- has_many :follows

## informations

| Column         | Type       | Options           |
| -------------- | ---------- | ----------------- |
| admin          | references | foreign_key: true |
| phone_number   | string     | null: false       |
| prefecture_id  | integer    | null: false       |
| municipalities | string     | null: false       |
| address        | string     | null: false       |
| building       | string     |                   |
| access         | string     | null: false       |
| open_hour      | time       | null: false       |
| close_hour     | time       | null: false       |
| holiday        | string     | null: false       |
| budget         | integer    | null: false       |
| seat_number    | integer    | null: false       |
| tobacco_id     | integer    | null: false       |
| child_id       | integer    | null: false       |

### Association

- belongs_to :admin
- has_many :information_genres
- has_many :genres, through: :information_genres
- has_many :information_cashlesses
- has_many :cashlesses, through: :information_cashlesses
- has_many :information_wi_fis
- has_many :wi_fis, through: :information_wi_fis
- has_one_attached :image
- has_many :comments, dependent: :destroy
- has_many :follows, dependent: :destroy
- has_many :users, through: :follows
- has_many :dishes
- belongs_to_active_hash :prefecture
- belongs_to_active_hash :tobacco
- belongs_to_active_hash :child

## dishes

| Column         | Type       | Options           |
| -------------- | ---------- | ----------------- |
| cooking_name   | string     | null: false       |
| cooking_detail | text       | null: false       |
| information    | references | foreign_key: true |

### Association

- belongs_to :information

## appeals

| Column        | Type       | Options           |
| ------------- | ------ ----| ----------------- |
| appeal_point  | string     | null: false       |
| explanation   | text       | null: false       |
| information   | references | foreign_key: true |

### Association

- belongs_to :information

## measures

| Column          | Type       | Options           |
| --------------- | ------ ----| ----------------- |
| content         | text       | null: false       |
| information     | references | foreign_key: true |

### Association

- belongs_to :information
- has_many :measure_generals

## measure_generals

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| measure     | references | foreign_key: true |
| general     | integer    | null: false       |

### Association

- belongs_to :measure
- belongs_to_active_hash :general


## comments

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| text        | text       | null: false       |
| user        | references | foreign_key: true |
| information | references | foreign_key: true |
| rate        | integer    | null: false       |

### Association

- belongs_to :user
- belongs_to :information 

## follows

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| user        | references | foreign_key: true |
| information | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :information 

## information_cashless

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| cashless    | integer    | null: false       |
| information | references | foreign_key: true |

### Association

- belongs_to_active_hash :cashless
- belongs_to :information 

## information_genre

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| genre       | integer    | null: false       |
| information | references | foreign_key: true |

### Association

- belongs_to_active_hash :genre
- belongs_to :information

## information_wi_fi

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| wi_fi       | integer    | null: false       |
| information | references | foreign_key: true |

### Association

- belongs_to_active_hash :wi_fi
- belongs_to :information 