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
- has_many :cuisine
- has-many :appeals

## cuisines

| Column         | Type   | Options     |
| -------------- | ------ | ----------- |
| cooking_name   | string | null: false |
| cooking_detail | text   | null: false |

### Association

- belongs_to :information

## appeals

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| appeal_point | string | null: false |
| explanation  | text   | null: false |

### Association

- belongs_to :information



