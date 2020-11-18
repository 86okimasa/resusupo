# テーブル設計

## admins テーブル

| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| shop_name | string | null: false |
| email     | string | null: false |
| password  | string | null: false |


## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |