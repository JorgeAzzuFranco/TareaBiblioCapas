-- Tablas
CREATE TABLE LIBRO(
	id_libro serial primary key,
	isbn text unique,
	titulo text,
	autor text,
	existencia int,
	genero text
);

-- Inserts
INSERT INTO LIBRO (ISBN, TITULO, AUTOR, EXISTENCIA, GENERO) 
VALUES	('9788499182995', 'Eragon', 'Christopher Paolini', 5,'Fantasia'),
		('9788499182971', 'Eldest', 'Christopher Paolini', 6,'Fantasia'),
		('9788499182988', 'Brisingr', 'Christopher Paolini', 4,'Fantasia'),
		('9788478447909','Corazon de tinta', 'Cornelia Funke',3,'Medieval'),
		('9788478449231','Sangre de tinta', 'Cornelia Funke',3,'Medieval'),
		('9788498411881','Muerte de tinta', 'Cornelia Funke',3,'Medieval');
		--('','','',,''),

INSERT INTO LIBRO (ISBN, TITULO, AUTOR, EXISTENCIA, GENERO) 
VALUES 	('9788408206231','Brida','Paulo Coelho',3,'Aventura'),
		('9789587060775','El alquimista','Paulo Coelho',5,'Aventura'),
		('9789584502483','Cupido es un murcielago','Maria Fernanda Heredia',2,'Romance'),
		('9788408193470','Hippie','Paulo Coelho',1,'Aventura'),
		('9781501236556','Tu','Charles Benoit',2,'Misterio'),
		('9785040861118','El codigo Da Vinci','Dan Brown',2,'Misterio'),
		('9780307409324','El halcon Maltes','Dashiell Hammett',3,'Misterio'),
		('9781725306271','Dracula','Bram Stoker',2,'Terror'),
		('9789158213005','It','Stephen King',5,'Terror'),
		('9782709646048','El resplandor','Stephen King',2,'Terror'),
		('9781444730074','Misery','Stephen King',1,'Terror'),
		('9789736972638','Don quijote de la mancha','Miguel de Cervantes',10,'Clasico'),
		('9781604240443','Hamlet','William Shakespeare',9,'Clasico'),
		('9788467021820','Don Alvaro','Duque de Rivas',6,'Clasico'),
		('9782203163102','La Odisea','Homero',10,'Clasico'),
		('9781781108765','Harry Potter 1','J. K. Rowling',2,'Magia'),
		('9781856136129','Harry Potter 2','J. K. Rowling',2,'Magia'),
		('9782740417959','Harry Potter 3','J. K. Rowling',2,'Magia'),
		('9789985312094','Harry Potter 4','J. K. Rowling',2,'Magia'),
		('9783551354051','Harry Potter 5','J. K. Rowling',2,'Magia'),
		('9784863892453','Harry Potter 6','J. K. Rowling',2,'Magia'),
		('9780747595861','Harry Potter 7','J. K. Rowling',2,'Magia'),
		('9780440505129','Lluvia de oro','Zane Gray',1,'Oeste'),
		('9789022548295','Warlock','Willbur Smith',1,'Oeste'),
		('9787556019915','Viaje al oeste','Wu ChengEn',1,'Oeste'),
		('9780736610162','Wilt','Tom Sharpe',1,'Comedia'),
		('9781508802624','La niña de mama','Cristina Ensaya',1,'Drama'),
		('9781414290416','Enterrado en la vida','Arnold Bennet',2,'Comedia'),
		('9783807701271','Sin plumas','Woody Allen',3,'Comedia'),
		('9780745118307','La suerte de Jim','Kimley Amis',4,'Comedia'),
		('9782264004482','Gracias Jeeves','P. G. Wodehouse',1,'Comedia'),
		('9781542048569','Pideme lo que quieras','Megan Max',1,'Romance'),
		('9780553745801','Outlander','Diana Gabaldon',2,'Romance'),
		('9780449808207','50 Sombras de Grey','E. L. James',4,'Romance'),
		('9788580572797','50 Sombras mas oscuras','E. L. James',6,'Romance'),
		('9788700790049','50 Sombras liberadas','E. L. James',3,'Romance'),
		('9783844911275','Bajo la misma estrella','John Green',2,'Romance'),
		('9780596522360','Aprende SQL','Alan Beaulier',1,'Informatica'),
		('9781491904404','Data Science from scratch','Joel Grus',2,'Informatica'),		
		('9781449338770','Hadoop','Tom White',2,'Informatica'),	
		('9780132770873','Java: How to program?','Paul Deitel',1,'Informatica'),
		('9780132350884','Codigo limpio','Robert Martin',6,'Informatica'),	
		('9781430219491','Coders at work','Peter Seibel',7,'Informatica'),
		('9787508319148','Programming pearls','Jon Bentley',3,'Informatica'),	
		('9788532642172','Los media y la modernidad','John Thompson',2,'Comunicacion'),	
		('9788481556339','Manual de comunicacion','Carlos Ongalio',3,'Comunicacion'),	
		('9788491803164','Relaciones publicas 2.0','Cristina Aced',4,'Comunicacion'),	
		('9782354562632','Slide:ology','Nancy Duarte',2,'Comunicacion'),	
		('9781591844518','Start with why','Simon Sinek',1,'Comunicacion'),	
		('9780525435327','El ultimo teorema de fermat','Simon singh',2,'Matematica'),
		('9788817095105','La proporcion aurea','Mario Livio',1,'Matematica'),
		('9784102184219','La musica de los numeros','Marcus de Sautoy',1,'Matematica'),
		('9786075265483','Calculo de una variable','James Stewart',2,'Matematica'),
		('9789684392113','Algebra de Baldor','Aurelio Baldor',4,'Matematica'),
		('9789580435143','Matematicas cotidianas para dummies','Charles Seiter',2,'Matematica');

update libro set isbn='978234650556', genero='Programacion' where id_libro=111;

INSERT INTO LIBRO (ISBN, TITULO, AUTOR, EXISTENCIA, GENERO) 
VALUES	('9780201700596','Fisica Universitaria','Hugh D. Young',3,'Fisica'),
		('9781119293590','Fisica para dummies','Steven Holzner',1,'Fisica'),
		('9788401389078','Desayuno con particulas','Sonia Fernandez-Vidal',2,'Fisica'),
		('9788845905131','El tao de la fisica','Fritjof Capra',5,'Fisica'),
		('9789684395862','Fisica general','Hector Perez',7,'Fisica'),
		('9788429193671','Analisis quimico cuantitativo','Deborah Garcia',5,'Quimica'),
		('9784833700030','Principios de analisis instrumental','Douglas Skoog',7,'Quimica'),
		('9789043025904','Quimica para dummies','john T. Moore',3,'Quimica'),
		('9788187336983','Quimica organica','L. G. Wade',1,'Quimica'),
		('9786074429879','Fundamentos de quimica organica','Paula Yurka',4,'Quimica'),
		('9781594621215','El origen de las especies','Charles Darwin',4,'Biologia'),
		('9783867283212','La biologia de la creencia','Bruce Lipton',4,'Biologia'),
		('9782744500176','Biologia celular y molecular','Gerald Karp',3,'Biologia'),
		('9783527805747','Biologia para dummies','Donna Rae Siegfried',1,'Biologia'),
		('9791026902201','Sapiens','Yuval Noah',5,'Biologia'),
		('9788806164836','El universo elegante','Brian Green',2,'Astronomia'),
		('9788376484983','Hiperespacio','Michio Kaku',1,'Astronomia'),
		('9780393035056','Agujeros negros y tiempo curvo','Kip Thorne',1,'Astronomia');



INSERT INTO LIBRO (ISBN, TITULO, AUTOR, EXISTENCIA, GENERO) 
VALUES	('','Spring','Rod Jhonson',4,'Prgramacion')
		('9781846146060','Pensar rapido, pensar despacio','Daniel Kahn',2,'Psicologia'),
		('9781400069286','El poder de los habitos','Charles Duhigg',2,'Psicologia'),
		('9781299073944','El efecto lucifer','Philip Zimbardo',3,'Psicologia'),
		('9781530423033','Psicologia de las masas y analisis del yo','Sigmund Freud',1,'Psicologia'),
		('9780007492077','Por que mentimos','Dan Ariely',2,'Psicologia'),
		('9780061629525','Las trampas del deseo','Dan Ariely',1,'Psicologia'),
		('9789875550063','Psicologia para principiantes','Ricardo Bur',2,'Psicologia'),
		('9781471105654','Poder sin limites','Tony Robbins',3,'Superacion'),
		('9781407482514','Secret','Rhonda Byrne',4,'Superacion'),
		('9780091929114','La semana laboral de 4 horas','Timothy Ferrell',2,'Superacion'),
		('9783839880920','Libera tu magia','Elizabeth Gilbert',3,'Superacion'),
		('9789616312134','Controle su destino','Tony Robbins',4,'Superacion'),
		('9780800780333','El poder del pensamiento positivo','Normal Peale',1,'Superacion'),
		('9785000578193','Fuera de serie','Malcom Gladwell',1,'Superacion'),
		('9781503256361','El capital','Karl Marx',1,'Economia'),
		('9788496426221','Analisis economico','Joseph Schumpeter',4,'Economia'),
		('9785553670740','El crash de 1929','John Kenneth',6,'Economia'),
		('9783861507789','Economia y sociedad','Max Webber',7,'Economia'),
		('9788416029785','Economia en colores','Xavier Sala',4,'Economia'),
		('9789729241406','Economia','Paul Samuelson',1,'Economia'),
		('9780730308782','Ansiedad para dummies','Laura Smith',2,'Salud'),
		('9788408201755','Un dia, una comida','Yoshinori Nakane',4,'Salud'),
		('9782298098655','Cerebro de pan','Dr. David Perlmutter',5,'Salud'),
		('9788416472512','Transforma tu salud','Xavi Verdauger',5,'Salud'),
		('9780470642733','Masaje para dummies','Steve Capellini',1,'Salud');


-- Consulta
select * from libro;
select count(*) from libro;
SELECT * FROM LIBRO WHERE LOWER(AUTOR) iLIKE '%re%' ;