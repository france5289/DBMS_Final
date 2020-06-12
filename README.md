# DBMS_Final
DBMS final project : Movie forum
## Entity List
- Movie : 紀錄電影資訊
  - **Movie_name**
  - Rating (分級)
    - 18+
    - 15+
    - 12+
    - 6+
    - 0+
  - Tomato_score
  - IMDB_score
  - World_Box
- Producer : 紀錄製片商資訊
  - **PName**
  - Country
  - Founded
- User : 使用者資訊
  - **id**
  - BDate
  - Sex
- Platform : 觀影平台資訊
  - **Plat_name**
  - official_web
  - Category
    - theater
    - streamer   
- Director
  - **DName**
  - Sex
  - BDate

## TODO
- User search
> given user id 回傳其基本資訊(Uid, Sex, BDate)
> 顯示 user 喜歡哪些 movie (**SQL Exist**) 討厭哪些 movie
- Advanced Search
  - **SQL Having** :
    - ex : 有哪些電影有 3 個以上的讚
  - **SQL Max**
    - 哪部電影 IMDB or Rotten tomato 分數最高
  - **SQL Min**
    - 哪部電影 IMDB or ROtten Tomato 分數最低  
  - **SQL Avg**
    - 導演拍的片的平均評分或票房
- Data Insert
  - **SQL DELETE**
    - 刪除 movie, user, platform, director, producer...
  - **SQL INSERT**
    - 插入 movie, user, platform, director, producer...  
  - **SQL Update**
    - 更改 movie, user, platform, director, producer... 

## Link to website
140.116.245.105:6868