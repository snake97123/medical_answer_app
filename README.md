# テーブル設計

## Usersテーブル
|  Column            |  Type   |  Option                    |
| ------------------ | ------- | -------------------------- |
|  user_nickname     | string  | null: false                |
|  user_email        | string  | null: false   unique:true  |
|  user_password     | string  | null: false                |

### Association  

has_many    pharmacists
has_many    questions


## Pharmacistsテーブル
|  Column              |  Type    |  Option                    |
| -------------------- | -------- | -------------------------- |
| pharmacist_name      | string   | null: false                |
| pharmacist_email     | string   | null: false  unique:true   |
| pharmacist_password  | string   | null: false                |
| number               | integer  | null: false                |
| family_name          | string   | null: false                |
| first_name           | string   | null: false                |
| family_name_kana     | string   | null: false                |
| first_name_kana      | string   | null: false                |
| phone_number         | string   | null: false                |


### Association

belongs_to  user
belongs_to  question


## Questionsテーブル
|  Column              |  Type    |  Option                    |
| -------------------- | -------- | -------------------------- |
| title                | string   | null: false                |
| content              | string   | null: false                |
| solved               | string   | null: false                |

### Association

has_many     pharmacists
belong_to    user