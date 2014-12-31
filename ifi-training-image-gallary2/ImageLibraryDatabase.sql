create table Category(
	CategoryId int auto_increment,
    CategoryName varchar(100),
    primary key (CategoryId)
);

create table Image(
	ImageId int auto_increment,
    CategoryId int,
    ImageName varchar(100),
    ImageType varchar(100),
    Image mediumblob,
    Description varchar(500),
    Uploader varchar(100),
    primary key (ImageId),
    constraint FK_Category foreign key (CategoryId) references Category(CategoryId)
);


	