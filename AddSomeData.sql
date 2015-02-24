DROP TABLE IF EXISTS dogs;
DROP TABLE IF EXISTS dog_info;

CREATE TABLE dogs (
  dog_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR (50),
  nick_name VARCHAR (50),
  owners_telephone VARCHAR (25),
  email VARCHAR (50),
  member_since DATE DEFAULT '0100-00-00',
  PRIMARY KEY (dog_id)
);

CREATE TABLE dog_info (
	doginfo_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	need_for VARCHAR (50),
	description TEXT,
	dog_idfk SMALLINT UNSIGNED,
	PRIMARY KEY (doginfo_id)
);

INSERT INTO dogs (first_name, nick_name, owners_telephone, email, member_since)
       VALUES  	('Han Solo', '"Lil Mister"', '602 111-1111', 'lilmr@rentapup.com','2013-09-10'),
               	('Mr.Sunny', '"Chubs"', '602 443-4567','mrsunny@rentapup.com', '2011-01-12'),
               	('Brutus', '"The Big Guy"', '480 555-4432', 'brutusbigguy@rentapup.com', '2015-03-08'),
               	('Willy', '"Macho Man"', '480 317-4444', 'machoman@hotmail.com', '2010-11-10'),
               	('Ricky', '"Steamboat"','623 612-5678','r_steamboat@rentapup.com', '2014-01-01'),
               	('Bruno', '"Little Guy"', '602 565-5656', 'bruno@rentapup.com', Now()),
               	('Samson', '"Boo Boo"', '480 000-0000','booboo@rentapup.com','2000-12-03'),
               	('Posh', '"Poshy"', '480 111-1111','poshspice@rentapup.com','2006-05-23'),
               	('Reggie', '"Beast Mode"', '480 222-3333','rejumiah@rentapup.com', '2012-12-09');

INSERT INTO dog_info (need_for, description, dog_idfk)
	VALUES  ('Companionship', 'Looking to meet that special someone? Issues
initiating conversation with those who catch your eye? Let Han the pug do all
the work for you!', '1'),

		      ('Relaxation', 'Too much stress? Do you find you can never unwind?
Rent Samson the bulldog for an afternoon and take notes...this pup can do
nothing like it is a full-time job. Also great with the kids!', '7'),

	        ('Temper Management Problems', 'Feeling angry all the time? Looking
to borrow a puppy for the afternoon to help you cool off a little? Reggie the
bulldog will be sure and get angry about all the things you normally would so
you can focus on the finer things for a change! WARNING: Reggie may get angry
with you.', '9'),

		      ('Marriage or Relationship Problems', 'Having problems with your
significant other? Want to buy them a puppy to make things better but know they
will probably just be mad you bought a dog? Rent Mr. Sunny for the day and watch
them get furious you brought a dog home! Then tell them its only for the
afternoon and watch them overflow with joy because of his cute looks and playful
personality!', '2'),
	      
	       	('Entertain the Kids', 'Is your boss on your back about finishing the
new project but your kids keep preventing you from doing work? Rent Willy the
puppy and let him handle the kids while you finish that report! Willy is a
tough little guy who just wants to play all the time. Your kids will be asleep
after an hour of playing with this little guy!' , '4'),

	       	('Pest Problems', 'Are squirrels, racoons, and other critters ruining
the yard you spent all those hours perfecting?  Brutus the boxer is one tough
puppy! His hobbies include chasing things, barking at things, and chasing things
again. Seriously, rent this pup for the afternoon and see if your pest problem
doesn''t clear up right away.', '3'),

	       	('Just Want to Have Some Fun', 'Been working overtime lately? Trying
to blow off some steam? Posh the bulldog is the perfect choice for you! She
loves to play and just hang out! Posh sure knows how to help you unwind and
always looking to have a good time!', '8'),
	       
	       	('Sleep Problems', 'Can''t catch any sleep lately? Tried everything
but nothing seems to help you relax? Bruno is one sleepy little puppy, so much
so that it is infectious! Rent this guy and you''ll be asleep with 30 minutes
guarenteed!', '6'),

		      ('Preparation for Buying Your Own Dog', 'Been thinking about buying a
puppy but unsure exactly what you''re getting into? Ricky is the perfect puppy
to test the waters before getting a dog of your own! He is one fun puppy
complete with all standard puppy difficulties including (but not limited to): no
potty training, chews on anything and everything, and energy for days! Rent this
guy for the day and see if you''re ready to take the ultimate step for yourself.', '5');
