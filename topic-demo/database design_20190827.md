## postdata库  
### 1. 话题表  
**表名：** tbl_topic_info  
**说明：**   

|字段名|数据类型|约束|说明|
|:---|:---|:---|:---|
|topic_id|bigint(10)|主键 |话题ID|
|topic_title|varchar(100)||话题标题|
|topic_content|varchar(1024)||话题内容|
|user_id|bigint(10)||用户ID|
|create_time|varchar(100)||创建时间|
|update_time|varchar(100)||更新时间|

### 2. 回复表  
**表名：** tbl_topic_reply  
**说明：**   
|字段名|数据类型|约束|说明|
|:---|:---|:---|:---|
|reply_id|bigint(10)|主键 |回复ID|
|topic_id|bigint(10)||话题ID|
|reply_content|varchar(1024)||回复内容|
|user_id|bigint(10)||用户ID|
|create_time|varchar(0)||创建时间|
|update_time|varchar(0)||更新时间|

### 3. 用户表  
**表名：** tbl_user_info  
**说明：**   

|字段名|数据类型|约束|说明|
|:---|:---|:---|:---|
|user_id|bigint(10)|主键 |用户ID|
|nickname|varchar(50)||用户昵称|
|email|varchar(100)||邮箱|
|icon_path|varchar(200)||头像路径|
|type_id|int(10)||角色ID|
|password|varchar(100)||密码|
|create_time|varchar(100)||创建时间|
|update_time|varchar(100)||更新时间|
|is_valid|int(5)||是否有效，0：有效，1：封禁|

### 4. 角色表  
**表名：** tbl_role_info  
**说明：**   

|字段名|数据类型|约束|说明|
|:---|:---|:---|:---|
|role_id|int(10)|主键 |角色ID|
|role_name|varchar(50)||角色名称，包括普通用户、管理员、超级管理员|
|create_time|varchar(100)||创建时间|
|update_time|varchar(100)||更新时间|

### 5. 权限表  

**表名：** tbl_right_info  
**说明：**   

| 字段名      | 数据类型     | 约束 | 说明                           |
| :---------- | :----------- | :--- | :----------------------------- |
| right_id    | int(10)      | 主键 | 权限ID                         |
| right_name  | varchar(50)  |      | 权限名称，包括增加、删除、修改 |
| create_time | varchar(100) |      | 创建时间                       |
| update_time | varchar(100) |      | 更新时间                       |

### 6. 角色权限表  

**表名：** tbl_role_right  
**说明：**   

| 字段名      | 数据类型     | 约束 | 说明     |
| :---------- | :----------- | :--- | :------- |
| trr_id      | int(10)      | 主键 | 记录标识 |
| role_id     | int(10)      |      | 角色ID   |
| right_id    | int(10)      |      | 权限ID   |
| create_time | varchar(100) |      | 创建时间 |
| update_time | varchar(100) |      | 更新时间 |

