Create table users(
id 			int(255) auto_increment not null,
role 		varchar(20),
email 		varchar(255),
name 		varchar(255),
lastname		varchar(255),
password		varchar(255),
nick			varchar(50),
bio			varchar(255),
active 		varchar(2),
image		varchar(255),
CONSTRAINT user_uniques_fields UNIQUE (email, nick),
CONSTRAINT pk_users PRIMARY KEY(id)
)Engine = InnoDb;


Create table publications(
id 			int(255) auto_increment not null,
user_id 		int(255),
text			mediumtext,
document 	varchar(255),
image		varchar(255),
status		varchar(255),
created_at 	datetime,
CONSTRAINT pk_publications PRIMARY KEY(id),
CONSTRAINT fk_publictions_users FOREIGN KEY(user_id) references users(id) 
)Engine = InnoDb;


Create table following(
id 			int(255) auto_increment not null,
user			int(255),
following	int(255),
CONSTRAINT pk_following PRIMARY KEY(id),
CONSTRAINT fk_following_users FOREIGN KEY(user) references users(id),
CONSTRAINT fk_following FOREIGN KEY(following) references users(id)
)Engine = InnoDb;

Create table private_message(
id 			int(255) auto_increment not null,
emitter 		int(255),
receiver		int(255),
message		longtext,
file			varchar(255),
image		varchar(255),
readed		varchar(3),
created_at 	datetime,
CONSTRAINT pk_private_message PRIMARY KEY(id),
CONSTRAINT fk_emitter_privates FOREIGN KEY(emitter) references users(id),
CONSTRAINT fk_receiver_privates FOREIGN KEY(receiver) references users(id)
)Engine = InnoDb;

Create table likes(
id 			int(255) auto_increment not null,
user			int(255),
publication	int(255),
CONSTRAINT pk_likes PRIMARY KEY(id),
CONSTRAINT fk_likes_users FOREIGN KEY(user) references users(id),
CONSTRAINT fk_likes_publications FOREIGN KEY(publication) references users(id)
)Engine = InnoDb;

Create table notifications(
id 			int(255) auto_increment not null,
user_id 		int(255),
type			varchar(255),
type_id		int(255),
readed		varchar(3),
extra		varchar(100),
created_at 	datetime,
CONSTRAINT pk_notifications PRIMARY KEY(id),
CONSTRAINT fk_notifications_user FOREIGN KEY(user_id) references users(id)
)Engine = InnoDb;
