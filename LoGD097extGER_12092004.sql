# Datenbankfile f�r
# LoGD 0.9.7+jt ext (GER) last release
# 12.9.2004
# 

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `accounts`
#

CREATE TABLE accounts (
  acctid int(11) unsigned NOT NULL auto_increment,
  name varchar(50) NOT NULL default '',
  sex tinyint(4) unsigned NOT NULL default '0',
  specialty int(4) unsigned NOT NULL default '0',
  darkarts int(11) unsigned NOT NULL default '0',
  magic int(11) unsigned NOT NULL default '0',
  thievery int(11) unsigned NOT NULL default '0',
  experience int(11) unsigned NOT NULL default '0',
  charisma int(11) unsigned NOT NULL default '0',
  seenlover tinyint(4) unsigned NOT NULL default '0',
  gold int(11) unsigned NOT NULL default '0',
  weapon varchar(50) NOT NULL default 'Fists',
  armor varchar(50) NOT NULL default 'T-Shirt',
  seenmaster int(4) unsigned NOT NULL default '0',
  level int(11) unsigned NOT NULL default '1',
  defence int(11) unsigned NOT NULL default '1',
  attack int(11) unsigned NOT NULL default '1',
  alive int(11) unsigned NOT NULL default '1',
  goldinbank int(11) NOT NULL default '0',
  marriedto int(11) unsigned NOT NULL default '0',
  playerkills int(4) unsigned NOT NULL default '1',
  spirits int(4) NOT NULL default '0',
  laston datetime NOT NULL default '0000-00-00 00:00:00',
  hitpoints int(11) NOT NULL default '10',
  maxhitpoints int(11) unsigned NOT NULL default '10',
  gems int(11) unsigned NOT NULL default '0',
  weaponvalue int(11) unsigned NOT NULL default '0',
  armorvalue int(11) unsigned NOT NULL default '0',
  location int(4) unsigned NOT NULL default '0',
  turns int(11) unsigned NOT NULL default '10',
  title varchar(32) NOT NULL default '',
  password varchar(32) binary NOT NULL default '',
  darkartuses int(4) unsigned NOT NULL default '0',
  magicuses int(4) unsigned NOT NULL default '0',
  thieveryuses int(4) unsigned NOT NULL default '0',
  badguy text NOT NULL,
  allowednavs text NOT NULL,
  output text NOT NULL,
  loggedin tinyint(4) unsigned NOT NULL default '0',
  resurrections int(11) unsigned NOT NULL default '0',
  superuser int(11) unsigned NOT NULL default '0',
  weapondmg int(11) NOT NULL default '0',
  armordef int(11) NOT NULL default '0',
  age int(11) unsigned NOT NULL default '0',
  charm int(11) unsigned NOT NULL default '0',
  specialinc varchar(50) NOT NULL default '',
  specialmisc text NOT NULL,
  login varchar(50) NOT NULL default '',
  slainby varchar(50) NOT NULL default '',
  lastmotd datetime NOT NULL default '0000-00-00 00:00:00',
  playerfights int(11) unsigned NOT NULL default '3',
  lasthit datetime NOT NULL default '0000-00-00 00:00:00',
  seendragon tinyint(4) unsigned NOT NULL default '0',
  dragonkills int(11) unsigned NOT NULL default '0',
  drunkenness int(11) unsigned NOT NULL default '0',
  locked tinyint(4) unsigned NOT NULL default '0',
  restorepage varchar(128) default '',
  seenbard tinyint(4) unsigned NOT NULL default '0',
  hashorse tinyint(4) unsigned NOT NULL default '0',
  bufflist text NOT NULL,
  gentime double unsigned NOT NULL default '0',
  gentimecount int(11) unsigned NOT NULL default '0',
  lastip varchar(40) NOT NULL default '',
  uniqueid varchar(32) default NULL,
  dragonpoints text NOT NULL,
  boughtroomtoday tinyint(4) NOT NULL default '0',
  emailaddress varchar(128) NOT NULL default '',
  emailvalidation varchar(32) NOT NULL default '',
  killedin varchar(20) NOT NULL default '',
  sentnotice int(11) NOT NULL default '0',
  prefs text NOT NULL,
  pvpflag datetime NOT NULL default '0000-00-00 00:00:00',
  transferredtoday int(11) unsigned NOT NULL default '0',
  hauntpoints int(11) unsigned NOT NULL default '0',
  soulpoints int(11) unsigned NOT NULL default '0',
  gravefights int(11) unsigned NOT NULL default '0',
  hauntedby varchar(50) NOT NULL default '',
  deathpower int(11) unsigned NOT NULL default '0',
  gensize int(11) unsigned NOT NULL default '0',
  recentcomments datetime NOT NULL default '0000-00-00 00:00:00',
  donation int(11) unsigned NOT NULL default '0',
  donationspent int(11) unsigned NOT NULL default '0',
  donationconfig text NOT NULL,
  referer int(11) unsigned NOT NULL default '0',
  refererawarded tinyint(4) unsigned NOT NULL default '0',
  bio varchar(255) NOT NULL default '',
  race tinyint(4) NOT NULL default '0',
  superuser2 int(11) unsigned NOT NULL default '0',
  banoverride tinyint(4) default '0',
  buffbackup text NOT NULL,
  biotime datetime NOT NULL default '0000-00-00 00:00:00',
  history text NOT NULL,
  bounty int(11) unsigned NOT NULL default '0',
  amountouttoday int(11) unsigned NOT NULL default '0',
  pk tinyint(3) unsigned NOT NULL default '0',
  dragonage int(11) unsigned NOT NULL default '0',
  bestdragonage int(11) unsigned NOT NULL default '0',
  lastwebvote date NOT NULL default '0000-00-00',
  bounties int(11) unsigned NOT NULL default '0',
  ctitle varchar(25) NOT NULL default '',
  usedouthouse tinyint(1) unsigned NOT NULL default '0',
  beta tinyint(3) unsigned NOT NULL default '0',
  avatar text NOT NULL,
  fedmount tinyint(4) NOT NULL default '0',
  gotfreeale tinyint(1) NOT NULL default '0',
  house int(10) unsigned NOT NULL default '0',
  housekey int(10) unsigned NOT NULL default '0',
  lottery int(10) unsigned NOT NULL default '0',
  reputation int(8) NOT NULL default '0',
  punch int(11) NOT NULL default '1',
  witch int(4) NOT NULL default '0',
  message text NOT NULL,
  msgdate datetime NOT NULL default '0000-00-00 00:00:00',
  battlepoints int(11) NOT NULL default '0',
  seenAcademy tinyint(3) NOT NULL default '0',
  birthday text NOT NULL,
  PRIMARY KEY  (acctid),
  KEY name (name),
  KEY level (level),
  KEY login (login),
  KEY alive (alive),
  KEY laston (laston),
  KEY lasthit (lasthit),
  KEY emailaddress (emailaddress),
  KEY msgdate (msgdate),
  KEY loggedin (loggedin),
  KEY locked (locked)
) TYPE=MyISAM;

#
# Daten f�r Tabelle `accounts`
#

INSERT INTO accounts (login,name,password,superuser,laston) VALUES ("ADMIN","ADMIN","7cc93b8005c402adcca36d68cd6a573c",3,now());

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle armor
#

CREATE TABLE armor (
  armorid int(11) unsigned NOT NULL auto_increment,
  armorname varchar(128) default NULL,
  value int(11) NOT NULL default '0',
  defense int(11) NOT NULL default '1',
  level int(11) NOT NULL default '0',
  PRIMARY KEY  (armorid)
) TYPE=MyISAM;

#
# Daten f�r Tabelle `armor`
#

INSERT INTO armor VALUES (1, 'R�schenunterhosen', 48, 1, 0);
INSERT INTO armor VALUES (2, 'Flanell Pyjama', 225, 2, 0);
INSERT INTO armor VALUES (3, 'Einfache lange Unterhosen', 585, 3, 0);
INSERT INTO armor VALUES (4, 'Einfaches Unterhemd', 990, 4, 0);
INSERT INTO armor VALUES (5, 'Gestrickte Socken', 1575, 5, 0);
INSERT INTO armor VALUES (6, 'Gestrickte Handschuhe', 2250, 6, 0);
INSERT INTO armor VALUES (7, 'Alte Lederlatschen', 2790, 7, 0);
INSERT INTO armor VALUES (8, 'Einfache Hosen', 3420, 8, 0);
INSERT INTO armor VALUES (9, 'Einfache Jacke', 4230, 9, 0);
INSERT INTO armor VALUES (10, 'Zigeunerumhang', 5040, 10, 0);
INSERT INTO armor VALUES (11, 'Alte Lederkappe', 5850, 11, 0);
INSERT INTO armor VALUES (12, 'Alter Lederarmschutz', 6840, 12, 0);
INSERT INTO armor VALUES (13, 'Regenschirm', 8010, 13, 0);
INSERT INTO armor VALUES (14, 'Alte Lederhosen', 9000, 14, 0);
INSERT INTO armor VALUES (15, 'Alte Lederjacke', 10350, 15, 0);
INSERT INTO armor VALUES (16, 'Flip-Flops', 48, 1, 1);
INSERT INTO armor VALUES (17, 'Badeanzug und Handtuch', 225, 2, 1);
INSERT INTO armor VALUES (18, 'Baumwollunterhemd', 585, 3, 1);
INSERT INTO armor VALUES (19, 'Baumwollsocken', 990, 4, 1);
INSERT INTO armor VALUES (20, 'Baumwollhandschuhe', 1575, 5, 1);
INSERT INTO armor VALUES (21, 'Lederstiefel', 2250, 6, 1);
INSERT INTO armor VALUES (22, 'Lederkappe', 2790, 7, 1);
INSERT INTO armor VALUES (23, 'Lederarmsch�tzer', 3420, 8, 1);
INSERT INTO armor VALUES (24, 'Lederleggings', 4230, 9, 1);
INSERT INTO armor VALUES (25, 'Ledermantel', 5040, 10, 1);
INSERT INTO armor VALUES (26, 'Lederkape mit Kapuze', 5850, 11, 1);
INSERT INTO armor VALUES (27, 'Hirschlederleggings', 6840, 12, 1);
INSERT INTO armor VALUES (28, 'Hirschlederg�rtel', 8010, 13, 1);
INSERT INTO armor VALUES (29, 'Hirschledermantel', 9000, 14, 1);
INSERT INTO armor VALUES (30, 'Kleines Rohlederschild', 10350, 15, 1);
INSERT INTO armor VALUES (31, 'Arbeitsstiefel', 48, 1, 2);
INSERT INTO armor VALUES (32, 'Latzhose', 225, 2, 2);
INSERT INTO armor VALUES (33, 'Feste Lederhandschuhe', 585, 3, 2);
INSERT INTO armor VALUES (34, 'Feste Lederarmsch�tzer', 990, 4, 2);
INSERT INTO armor VALUES (35, 'Feste Lederstiefel', 1575, 5, 2);
INSERT INTO armor VALUES (36, 'Stabiler Lederhelm', 2250, 6, 2);
INSERT INTO armor VALUES (37, 'Robuste Lederhosen', 2790, 7, 2);
INSERT INTO armor VALUES (38, 'Schwerer Ledermantel', 3420, 8, 2);
INSERT INTO armor VALUES (39, 'Schwerer Lederumhang', 4230, 9, 2);
INSERT INTO armor VALUES (40, 'Holzf�llerhelm', 5040, 10, 2);
INSERT INTO armor VALUES (41, 'Holzf�llerhandschuh', 5850, 11, 2);
INSERT INTO armor VALUES (42, 'Holzf�llerarmschutz', 6840, 12, 2);
INSERT INTO armor VALUES (43, 'Holzf�llerbeinschienen', 8010, 13, 2);
INSERT INTO armor VALUES (44, 'Holzf�llerumhang', 9000, 14, 2);
INSERT INTO armor VALUES (45, 'Drachenschild der Holzf�ller', 10350, 15, 2);
INSERT INTO armor VALUES (46, 'Duschhaube und Handtuch', 48, 1, 3);
INSERT INTO armor VALUES (47, 'Bademantel', 225, 2, 3);
INSERT INTO armor VALUES (48, 'Wolfsfellhandschuhe', 585, 3, 3);
INSERT INTO armor VALUES (49, 'Wolfsfellstiefel', 990, 4, 3);
INSERT INTO armor VALUES (50, 'Wolfsfellarmschutz', 1575, 5, 3);
INSERT INTO armor VALUES (51, 'Wolfsfellhosen', 2250, 6, 3);
INSERT INTO armor VALUES (52, 'Wolfsfellumhang', 2790, 7, 3);
INSERT INTO armor VALUES (53, 'Wolfsfellkape', 3420, 8, 3);
INSERT INTO armor VALUES (54, 'Wolfmaster\'s Armschutz', 4230, 9, 3);
INSERT INTO armor VALUES (55, 'Wolfmaster\'s Handschuh', 5040, 10, 3);
INSERT INTO armor VALUES (56, 'Wolfmasters Helm', 5850, 11, 3);
INSERT INTO armor VALUES (57, 'Wolfmaster\'s Leggings', 6840, 12, 3);
INSERT INTO armor VALUES (58, 'Wolfmaster\'s Lederwams', 8010, 13, 3);
INSERT INTO armor VALUES (59, 'Wolfschutzkape', 9000, 14, 3);
INSERT INTO armor VALUES (60, 'Schild des Wolfmaster\'s', 10350, 15, 3);
INSERT INTO armor VALUES (61, 'S��e Unterhosen', 48, 1, 4);
INSERT INTO armor VALUES (62, 'Putziges Unterhemd', 225, 2, 4);
INSERT INTO armor VALUES (63, 'Nietenbesetzter Lederhelm', 585, 3, 4);
INSERT INTO armor VALUES (64, 'Nietenbesetzter Handschuh', 990, 4, 4);
INSERT INTO armor VALUES (65, 'Lederstiefel mit Stahlkappen', 1575, 5, 4);
INSERT INTO armor VALUES (66, 'Nietenbesetzte Lederleggings', 2250, 6, 4);
INSERT INTO armor VALUES (67, 'Nietenbesetzte Tunika', 2790, 7, 4);
INSERT INTO armor VALUES (68, 'Umhang des Gerbers', 3420, 8, 4);
INSERT INTO armor VALUES (69, 'Rostige Kettenhaube', 4230, 9, 4);
INSERT INTO armor VALUES (70, 'Rostige Kettenhandschuhe', 5040, 10, 4);
INSERT INTO armor VALUES (71, 'Rostiger Kettenarmschutz', 5850, 11, 4);
INSERT INTO armor VALUES (72, 'Rostige Kettenstiefel', 6840, 12, 4);
INSERT INTO armor VALUES (73, 'Rostige Kettenbeinschienen', 8010, 13, 4);
INSERT INTO armor VALUES (74, 'Rostige Kettentunika', 9000, 14, 4);
INSERT INTO armor VALUES (75, 'Gro�es Eisenschild', 10350, 15, 4);
INSERT INTO armor VALUES (76, 'H�schenpantoffeln', 48, 1, 5);
INSERT INTO armor VALUES (77, 'Fleezepyjama', 225, 2, 5);
INSERT INTO armor VALUES (78, 'Bequeme Unterw�che aus Leder', 585, 3, 5);
INSERT INTO armor VALUES (79, 'Schwere Kettenhaube', 990, 4, 5);
INSERT INTO armor VALUES (80, 'Schwerer Handschuh', 1575, 5, 5);
INSERT INTO armor VALUES (81, 'Schwerer Kettenarmschutz', 2250, 6, 5);
INSERT INTO armor VALUES (82, 'Schwere Kettenstiefel', 2790, 7, 5);
INSERT INTO armor VALUES (83, 'Schwere Kettenbeinschienen', 3420, 8, 5);
INSERT INTO armor VALUES (84, 'Schwere Kettentunika', 4230, 9, 5);
INSERT INTO armor VALUES (85, 'Armschutz f�r Drachenkrieger', 5040, 10, 5);
INSERT INTO armor VALUES (86, 'Handschuh f�r Drachenkrieger', 5850, 11, 5);
INSERT INTO armor VALUES (87, 'Stiefel f�r Drachenkrieger', 6840, 12, 5);
INSERT INTO armor VALUES (88, 'Beinschienen f�r Drachenkrieger', 8010, 13, 5);
INSERT INTO armor VALUES (89, 'Brustpanzer f�r Drachenkrieger', 9000, 14, 5);
INSERT INTO armor VALUES (90, 'Schild f�r Drachenkrieger', 10350, 15, 5);
INSERT INTO armor VALUES (91, 'Bluejeans', 48, 1, 6);
INSERT INTO armor VALUES (92, 'Baumwollhemd', 225, 2, 6);
INSERT INTO armor VALUES (93, 'Guter Bronzehelm', 585, 3, 6);
INSERT INTO armor VALUES (94, 'Guter Panzerhandschuh', 990, 4, 6);
INSERT INTO armor VALUES (95, 'Guter Bronzearmschutz', 1575, 5, 6);
INSERT INTO armor VALUES (96, 'Gute Bronzestiefel', 2250, 6, 6);
INSERT INTO armor VALUES (97, 'Guter Bronzebeinschutz', 2790, 7, 6);
INSERT INTO armor VALUES (98, 'Guter Bronzebrustpanzer', 3420, 8, 6);
INSERT INTO armor VALUES (99, 'Verzauberter Bronzehelm', 4230, 9, 6);
INSERT INTO armor VALUES (100, 'Verzauberter Bronzehandschuh', 5040, 10, 6);
INSERT INTO armor VALUES (101, 'Verzauberter Bronzearmschutz', 5850, 11, 6);
INSERT INTO armor VALUES (102, 'Verzauberte Bronzestiefel', 6840, 12, 6);
INSERT INTO armor VALUES (103, 'Verzauberte Bronzebeinschienen', 8010, 13, 6);
INSERT INTO armor VALUES (104, 'Verzauberter Bronzebrustpanzer', 9000, 14, 6);
INSERT INTO armor VALUES (105, 'Sch�tzendes Einhornfell', 10350, 15, 6);
INSERT INTO armor VALUES (106, 'Fass', 48, 1, 7);
INSERT INTO armor VALUES (107, 'Lampenschirm', 225, 2, 7);
INSERT INTO armor VALUES (108, 'Perfekter Stahlhelm', 585, 3, 7);
INSERT INTO armor VALUES (109, 'Perfekte Stahlhandschuhe', 990, 4, 7);
INSERT INTO armor VALUES (110, 'Perfekte Stahlstiefel', 1575, 5, 7);
INSERT INTO armor VALUES (111, 'Perfekte Armsch�tzer aus Stahl', 2250, 6, 7);
INSERT INTO armor VALUES (112, 'Perfekte Beinschienen aus Stahl', 2790, 7, 7);
INSERT INTO armor VALUES (113, 'Perfektes Brustschild aus Stahl', 3420, 8, 7);
INSERT INTO armor VALUES (114, 'Umhang aus Greif-Federn', 4230, 9, 7);
INSERT INTO armor VALUES (115, 'Zwergen Kettenhaube', 5040, 10, 7);
INSERT INTO armor VALUES (116, 'Zwergen Panzerhandschuhe', 5850, 11, 7);
INSERT INTO armor VALUES (117, 'Zwergen Kettenstiefel', 6840, 12, 7);
INSERT INTO armor VALUES (118, 'Zwergen Kettenarmsch�tzer', 8010, 13, 7);
INSERT INTO armor VALUES (119, 'Zwergen Kettenbeinsch�tzer', 9000, 14, 7);
INSERT INTO armor VALUES (120, 'Zwergen Kettenbrustschutz', 10350, 15, 7);
INSERT INTO armor VALUES (121, 'Feigenblatt', 48, 1, 8);
INSERT INTO armor VALUES (122, 'Kilt', 225, 2, 8);
INSERT INTO armor VALUES (123, 'Majest�tischer Goldhelm', 585, 3, 8);
INSERT INTO armor VALUES (124, 'Majest�tische Goldhandschuhe', 990, 4, 8);
INSERT INTO armor VALUES (125, 'Majest�tische Goldstiefel', 1575, 5, 8);
INSERT INTO armor VALUES (126, 'Majest�tische goldene Armsch�tzer', 2250, 6, 8);
INSERT INTO armor VALUES (127, 'Majest�tische goldene Beinschienen', 2790, 7, 8);
INSERT INTO armor VALUES (128, 'Majest�tisches goldenes Brustschild', 3420, 8, 8);
INSERT INTO armor VALUES (129, 'Majest�tisches Goldschild', 4230, 9, 8);
INSERT INTO armor VALUES (130, 'Goldverzierter Umhang', 5040, 10, 8);
INSERT INTO armor VALUES (131, 'Verzauberter Rubinring', 5850, 11, 8);
INSERT INTO armor VALUES (132, 'Verzauberter Saphirring', 6840, 12, 8);
INSERT INTO armor VALUES (133, 'Verzauberter Jadering', 8010, 13, 8);
INSERT INTO armor VALUES (134, 'Verzauberter Amethystring', 9000, 14, 8);
INSERT INTO armor VALUES (135, 'Verzauberter Diamantring', 10350, 15, 8);
INSERT INTO armor VALUES (136, 'Silberner Knopf', 48, 1, 9);
INSERT INTO armor VALUES (137, 'Nachtgewand aus Elfenseide', 225, 2, 9);
INSERT INTO armor VALUES (138, 'Handschuhe aus Elfenseide', 585, 3, 9);
INSERT INTO armor VALUES (139, 'Hausschuhe aus Elfenseide', 990, 4, 9);
INSERT INTO armor VALUES (140, 'Stirnband aus Elfenseide', 1575, 5, 9);
INSERT INTO armor VALUES (141, 'Leggings aus Elfenseide', 2250, 6, 9);
INSERT INTO armor VALUES (142, 'Tunika aus Elfenseide', 2790, 7, 9);
INSERT INTO armor VALUES (143, 'Umhang aus Elfenseide', 3420, 8, 9);
INSERT INTO armor VALUES (144, 'Ring der Nacht', 4230, 9, 9);
INSERT INTO armor VALUES (145, 'Ring des Tages', 5040, 10, 9);
INSERT INTO armor VALUES (146, 'Ring der Einsamkeit', 5850, 11, 9);
INSERT INTO armor VALUES (147, 'Ring des Friedens', 6840, 12, 9);
INSERT INTO armor VALUES (148, 'Ring des Mutes', 8010, 13, 9);
INSERT INTO armor VALUES (149, 'Ring der Keuschheit', 9000, 14, 9);
INSERT INTO armor VALUES (150, 'Der eine Ringe', 10350, 15, 9);
INSERT INTO armor VALUES (151, 'Pegasus\' Tarnumhang', 5040, 10, 10);
INSERT INTO armor VALUES (152, 'Pegasus\' Brustschild', 4230, 9, 10);
INSERT INTO armor VALUES (153, 'Pegasus\' Beinsch�tzer', 3420, 8, 10);
INSERT INTO armor VALUES (154, 'Pegasus\' bessere Stiefel', 2790, 7, 10);
INSERT INTO armor VALUES (155, 'Pegasus\' Stiefel', 2250, 6, 10);
INSERT INTO armor VALUES (156, 'Pegasus\' Armsch�tzer', 1575, 5, 10);
INSERT INTO armor VALUES (157, 'Pegasus\' Panzerhandschuhe', 990, 4, 10);
INSERT INTO armor VALUES (158, 'Pegasus\' Helm', 585, 3, 10);
INSERT INTO armor VALUES (159, 'Plateauschuhe', 225, 2, 10);
INSERT INTO armor VALUES (160, 'Freizeitanzug', 48, 1, 10);
INSERT INTO armor VALUES (161, 'Pegasus\' Federschmuck', 5850, 11, 10);
INSERT INTO armor VALUES (162, 'Pegasus\' Federg�rtel', 6840, 12, 10);
INSERT INTO armor VALUES (163, 'Pegasus\' geschm�cktes Bild', 8010, 13, 10);
INSERT INTO armor VALUES (164, 'Pegasus\' geschm�ckter Federring', 9000, 14, 10);
INSERT INTO armor VALUES (165, 'Pegasus\' geschm�ckte Krone', 10350, 15, 10);
INSERT INTO armor VALUES (166, 'Neue Klamotten', 48, 1, 11);
INSERT INTO armor VALUES (167, 'H�hnerkost�m', 225, 2, 11);
INSERT INTO armor VALUES (168, 'Fehdehandschuh der Gnade', 585, 3, 11);
INSERT INTO armor VALUES (169, 'Armsch�tzer der Sch�nheit', 990, 4, 11);
INSERT INTO armor VALUES (170, 'Helm der Heilung', 1575, 5, 11);
INSERT INTO armor VALUES (171, 'Beinsch�tzer des Gl�cks', 2250, 6, 11);
INSERT INTO armor VALUES (172, 'Stiefel der Helden', 2790, 7, 11);
INSERT INTO armor VALUES (173, 'Tunika der Toleranz', 3420, 8, 11);
INSERT INTO armor VALUES (174, 'Deckmantel der Zuversicht', 4230, 9, 11);
INSERT INTO armor VALUES (175, 'Ring der Rechtschaffenheit', 5040, 10, 11);
INSERT INTO armor VALUES (176, 'Nackenschutz des Selbstliebe', 5850, 11, 11);
INSERT INTO armor VALUES (177, 'Anh�nger der Macht', 6840, 12, 11);
INSERT INTO armor VALUES (178, 'Brustschutz der Mildt�tigkeit', 8010, 13, 11);
INSERT INTO armor VALUES (179, 'Schild der �berlegenheit', 9000, 14, 11);
INSERT INTO armor VALUES (180, 'Zepter der St�rke', 10350, 15, 11);
INSERT INTO armor VALUES (181, 'Drachenhaut Lederhelm', 48, 1, 12);
INSERT INTO armor VALUES (182, 'Drachenhaut  Beinschutz', 225, 2, 12);
INSERT INTO armor VALUES (183, 'Drachenhaut  Lederstiefel', 585, 3, 12);
INSERT INTO armor VALUES (184, 'Drachenhaut  Lederarmschutz', 990, 4, 12);
INSERT INTO armor VALUES (185, 'Drachenhaut  Lederleggings', 1575, 5, 12);
INSERT INTO armor VALUES (186, 'Drachenhaut  Ledertunika', 2250, 6, 12);
INSERT INTO armor VALUES (187, 'Drachenhaut Ledermantel', 2790, 7, 12);
INSERT INTO armor VALUES (188, 'Drachenhorn Helm', 3420, 8, 12);
INSERT INTO armor VALUES (189, 'Drachenhorn Beinsch�tzer', 4230, 9, 12);
INSERT INTO armor VALUES (190, 'Drachenhorn Stiefel', 5040, 10, 12);
INSERT INTO armor VALUES (191, 'Drachenhorn Armsch�tzer', 5850, 11, 12);
INSERT INTO armor VALUES (192, 'Drachenhorn Hosentr�ger', 6840, 12, 12);
INSERT INTO armor VALUES (193, 'Drachenhorn Brustschild', 8010, 13, 12);
INSERT INTO armor VALUES (194, 'Drachenhorn Tarnmantel', 9000, 14, 12);
INSERT INTO armor VALUES (195, 'Drachenkrallen Amulett', 10350, 15, 12);


# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `bans`
#

CREATE TABLE bans (
  ipfilter varchar(15) NOT NULL default '',
  uniqueid varchar(32) NOT NULL default '',
  banexpire date default NULL,
  banreason text NOT NULL
) TYPE=MyISAM;

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `commentary`
#

CREATE TABLE commentary (
  commentid int(11) unsigned NOT NULL auto_increment,
  section varchar(20) default NULL,
  author int(11) unsigned NOT NULL default '0',
  comment varchar(200) NOT NULL default '',
  postdate datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (commentid),
  KEY section (section),
  KEY postdate (postdate)
) TYPE=MyISAM;

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `creatures`
#

CREATE TABLE creatures (
  creatureid int(11) NOT NULL auto_increment,
  creaturename varchar(50) default NULL,
  creaturelevel int(11) default NULL,
  creatureweapon varchar(50) default NULL,
  creaturelose varchar(120) default NULL,
  creaturewin varchar(120) default NULL,
  creaturegold int(11) default NULL,
  creatureexp int(11) default NULL,
  creaturehealth int(11) default NULL,
  creatureattack int(11) default NULL,
  creaturedefense int(11) default NULL,
  oldcreatureexp int(11) default NULL,
  createdby varchar(50) default NULL,
  location tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (creatureid),
  KEY creaturelevel (creaturelevel)
) TYPE=MyISAM;

#
# Daten f�r Tabelle `creatures`
#

INSERT INTO creatures VALUES (0, 'Unversch�mter Sch�ler', 1, 'Verschlissenes Buch', 'Du hast diesen Sch�ler zum permanenten Nachsitzen verurteilt.', NULL, 36, 14, 10, 1, 1, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Dornenstrauch', 1, 'verdammte Dornen', 'Wie k�nnen unbewegliche Objekte nur so wehrhaft sein?', NULL, 36, 14, 10, 1, 1, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Bl�tenzauberin', 3, 'Blumenst�ngel', 'Diese Blume riecht bald nicht mehr gut', NULL, 148, 34, 32, 5, 4, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Sp�her', 3, 'Stumpfer Dolch', 'Er konnte nur noch seinen Dolch wegwerfen, damit du ihn nicht bekommst.', NULL, 148, 34, 32, 5, 4, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Amazone', 3, 'Pfeil und Bogen', 'Das wunderh�bsche Kriegerm�dchen hat zum erstenmal einen Kampf verloren', NULL, 148, 34, 32, 5, 4, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, '24 Amseln', 3, 'Vogelkacke', 'Nur weg hier.', NULL, 148, 34, 32, 5, 4, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Junge Hexensch�lerin', 2, 'Neu gelernte Zauberspr�che', 'Vielleicht h�tte sie h�rter studieren sollen.', NULL, 97, 24, 21, 3, 3, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Windan, der Barbar', 2, 'Federspeer', 'Er war wirklich nur ein Federgewicht', NULL, 97, 24, 21, 3, 3, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Natter', 2, 'hypnotisierende Augen', 'Du unterbrichst den Blickkontakt, um dein eigenes Leben zu retten', NULL, 97, 24, 21, 3, 3, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Steintroll', 2, 'M�hlsteinmahlz�hne', 'Dieser Troll war steinhart h�sslich', NULL, 97, 24, 21, 3, 3, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Lag', 2, 'Unberechenbare Positionswechsel', 'Er war deiner k�mpferischen Bandbreite einfach nicht gewachsen.', NULL, 97, 24, 21, 3, 3, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Schreiende Todesfee', 2, 'Qu�lend sch�ne Stimme', 'Du st��t ihr deine Waffe in die Brust und beendest ihr Lied', NULL, 97, 24, 21, 3, 3, 14, 'anpera', 1);
INSERT INTO creatures VALUES (0, 'St�mmiger Mann', 15, 'Faszinierendes Absorbtionsverm�gen', 'Fantasierend nicht faszinierend....Ha, Ha, Ha!', NULL, 531, 189, 155, 29, 21, 14, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'zwergenhaftes Krallen�ffchen', 2, 'St�ck Baumrinde', 'Der seltsame kleine Affe f�llt vom Baum und bleibt regungslos liegen.', NULL, 97, 24, 21, 3, 3, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Schlammloch', 2, 'z�he Pampe', 'Es wird Stunden dauern, das wieder sauber zu bekommen', NULL, 97, 24, 21, 3, 3, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Grunzendes Schwein', 1, 'Ringelschw�nzchen', 'Mmmh, Schinken...', NULL, 36, 14, 10, 1, 1, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Kleine lila Maus', 1, 'Lila Peitschenschwanz', 'Es steht geschrieben in schwarz auf weiss: diese seltsame Maus in Technicolor ist nicht mehr', NULL, 36, 14, 10, 1, 1, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Einhornbaby', 1, 'Stumpfes Horn', 'Du f�hlst dich wie ein Trottel dabei, etwas sooo s�sses umgebracht zu haben', NULL, 36, 14, 10, 1, 1, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'K�stenr�uber', 5, 'Gestohlenes Schwert', 'Dein Gold ist mein!', NULL, 198, 55, 53, 9, 7, 15, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Gigantischer Wassergeist', 5, 'Sintflutartige Wolkenbr�che', 'Der Wassergeist wurde auf einen Fr�hlingsschauer reduziert!', NULL, 198, 55, 53, 9, 7, 15, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Veteranenhahn', 5, 'ohrenbet�ubendes Kr�hen', 'Es ist so still pl�tzlich...', NULL, 198, 55, 53, 9, 7, 15, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Kahlk�pfiger Arzt', 5, 'Rostiges Skalpell', 'Tja, das war wohl DEIN Lebensfaden!', NULL, 198, 55, 53, 9, 7, 15, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Sendbote der Orks', 5, 'Diplomatie', 'Du warst nie f�r die Diplomatie geeignet.', NULL, 198, 55, 53, 9, 7, 15, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Rosa Dinosaurier', 5, 'Hilfreiche Art', 'Es sieht aus als w�re eine Person in dem Drachen gewesen.  Warum wohl?', NULL, 198, 55, 53, 9, 7, 15, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Zaubernder Gnom', 5, '"Skelett eines Familienangeh�rigen"', 'Nachdem du sein Familienmitglied get�tet hast, st�rzt er sich schwachsinnig von einem Felsen.', NULL, 198, 55, 53, 9, 7, 15, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Ausgewachsenes Einhorn', 5, 'M�chtiges Horn', 'Ein Einhorn ist etwas sch�nes, sogar wenn es tot ist.', NULL, 198, 55, 53, 9, 7, 15, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Kleiner Hase', 4, 'Nadelscharfe Z�hne', 'Er dachte, du w�rdest immer wegrennen!', NULL, 162, 45, 43, 7, 6, 15, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Monstr�ser Staubhase', 4, 'Niesreiz', 'Du fegst den Hasen unter den teppich, als niemand hinsieht.', NULL, 162, 45, 43, 7, 6, 15, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'kleiner Drachen', 4, 'heisse Luft', 'F�r einen Moment hast du geglaubt, DAS war der legend�re gr�ne Drache.', NULL, 162, 45, 43, 7, 6, 15, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Goblinw�chter', 4, 'W�chterhammer', 'harr harr harr', NULL, 162, 45, 43, 7, 6, 15, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Gefl�gelter D�mon des Todes', 4, 'Rote Glut', 'Du schneidest ihm den Kopf ab, um sicher zu sein, dass er tot ist.', NULL, 162, 45, 43, 7, 6, 15, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Nerviges Skelett', 4, 'Rostiges Schwert', 'Hmm, sein Oberschenkel w�re ein Leckerli f�r deinen Hund.', NULL, 162, 45, 43, 7, 6, 15, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Polar B�r', 4, 'Schreckliche Klauen', 'Der B�r muss aber wirklich etwas an seiner Einstellung arbeiten.', NULL, 162, 45, 43, 7, 6, 15, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Jack Torrance', 4, 'Hausmeisterbesen', 'Ich galube, das war mein letzter Schnaps', NULL, 162, 45, 43, 7, 6, 15, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Kr�melmonster', 3, 'riesige Kekskr�mel', 'Kein Wunder, dass es so schw�chlich war. Da ist ja kaum was im Magen gelandet.', NULL, 148, 34, 32, 5, 4, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Waldkobold', 3, 'nerviges Gekicher', 'Diesen Kobold hast du kleingehackt!', NULL, 148, 34, 32, 5, 4, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Schlafwandler', 8, 'M�digkeit', 'Dieser Schlafwandler wacht nie mehr auf!', NULL, 302, 89, 84, 15, 11, 19, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Schwarm Bienen', 8, 'Millionen Stiche', 'Du f�hlst dich wie ein Nadelkissen, aber du lebst.', NULL, 302, 89, 84, 15, 11, 19, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Gordon der K�seesser', 8, 'Blauschimmel', 'Die K�seplatte ist serviert!', NULL, 302, 89, 84, 15, 11, 19, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Dampfgeist', 8, 'Siedendheisse Dampfd�sen', 'Jetzt ist gerade noch genug Dampf f�r einen Espresso �brig.', NULL, 302, 89, 84, 15, 11, 19, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Wildpferde', 8, 'Zugkraft', 'Ich glaube es stimmt, was gesagt wird. Wildpferde taugen nicht zu Karrenziehen.', NULL, 302, 89, 84, 15, 11, 19, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Meuchelm�rder', 8, 'Langdolch', 'Meuchelm�rder ermordet. Gibt\'s ne Belohnung?', NULL, 302, 89, 84, 15, 11, 19, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Tochter des Teufels', 8, 'Verdammt geiles Aussehen', 'Sie war eines der M�dchen, vor denen dich deine Mutter immer gewarnt hat.', NULL, 302, 89, 84, 15, 11, 19, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Spassvogel', 7, 'Schallendes Lachen', 'hahaha hihihi hohoho', NULL, 268, 77, 74, 13, 10, 17, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Untote Moorleiche', 7, 'Verrosteter Schlegel', 'Stirb an einem anderen Tag nochmal.', NULL, 268, 77, 74, 13, 10, 17, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Lehrer', 7, 'Hausaufgaben', 'Angriff: 1, Verteidigung: 1, so schauts aus!', NULL, 268, 77, 74, 13, 10, 17, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Lindsey, die Tochter von Erin dem Ninja-Eichhorn', 7, 'Erdnussschleuder', 'Alle Eichh�rnchen sind dumme N�sse.', NULL, 268, 77, 74, 13, 10, 17, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Gr�ner Alligator', 7, 'Alles zermalmende Z�hne', 'Mensch!  Der h�tte dich t�ten k�nnen!', NULL, 268, 77, 74, 13, 10, 17, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Sarg', 7, 'Schreckliche Warnungen', 'Die beste Waffe gegen S�rge sind Holzw�rmer.', NULL, 268, 77, 74, 13, 10, 17, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Verliebter Narr', 7, 'lachhafte Liebesbriefe', 'Jetzt muss ein anderer seine Briefe fertig schreiben!', NULL, 268, 77, 74, 13, 10, 17, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Marsha, die Frau die aus dem Dschungel kam', 7, 'Dressierte Affen', 'Arme Marsha, sie dachte, die Affen w�ren besser dressiert.', NULL, 268, 77, 74, 13, 10, 17, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Strauchdieb', 6, 'Schwerer Ast', 'Komisch. Er hatte gar keinen Strauch dabei.', NULL, 234, 66, 64, 11, 8, 16, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Schwarzer Tiger', 6, 'Klauen', 'Du schaust dir den K�rper des Tigers an und �berlegst, ob das nicht ein wunderbarer Bettvorleger w�re.', NULL, 234, 66, 64, 11, 8, 16, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Goldene Gans', 6, '14 Karat Gold-Eier', 'Jetzt ist sie tot, aber zu schwer um sie ins Dorf zu bringen und zu Grillen. Verschenkte Zeit.', NULL, 234, 66, 64, 11, 8, 16, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Bettie der wunderbare Kung-Fu-Schmetterling', 6, 'gewaltige Kung-Fu-Fl�gel', 'Du hast im Kampf einen Schmetterling get�tet. Du mu�t jetzt wohl sehr stolz sein', NULL, 234, 66, 64, 11, 8, 16, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Troll Krieger', 6, 'St�hlernes Breitschwert', 'Hmm, er roch lebend schon nicht sehr gute, wie wird er denn morgen riechen?', NULL, 234, 66, 64, 11, 8, 16, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Herz aus Stein', 6, 'Unromantische Gedanken', 'So, nun ist es zerbrochen.', NULL, 234, 66, 64, 11, 8, 16, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Clown des Todes', 6, 'Luftballontiere aus dem Jenseits', 'Du dr�ckst kurz die Nase des Clown und gehst von dannen.', NULL, 234, 66, 64, 11, 8, 16, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Unsichtbarer Mann', 6, 'Etwas unsichtbares und sehr scharfes', 'Hmm, tot oder versteckt. Verdammt, ich seh ihn nicht.', NULL, 234, 66, 64, 11, 8, 16, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Magischer Pilz', 6, 'Tanzende Farben', 'Das ware wohl ein wenig zuviel vom eigenen Gift!', NULL, 234, 66, 64, 11, 8, 16, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'W�tender Oger', 12, 'ausgerissener Baum', 'Nu bist du Baumfutter', NULL, 435, 141, 125, 23, 17, 31, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Magischer Spiegel', 12, 'Schmeichelnde Bemerkungen', 'Spieglein, Spieglein auf dem Boden, du geh�rst jetzt zu den Toten.', NULL, 435, 141, 125, 23, 17, 31, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'S�ldner', 12, 'Blutgieriger Blick', 'Darauf ein frisches Ale!', NULL, 435, 141, 125, 23, 17, 31, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Der Teufel', 11, 'Ewige Verdammnis', 'Also f�r den Teufel war er nicht sehr hei�.', NULL, 402, 127, 115, 21, 15, 27, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Mitglied der B�rgerwehr', 11, 'Sack voll T�rklinken', 'Dieses Gemetzel ekelt dich an.', NULL, 402, 127, 115, 21, 15, 27, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Racheengel', 11, 'Flammenschwert', 'Leben und sterben lassen. Das ist meine Rache!', NULL, 402, 127, 115, 21, 15, 27, 'anpera', 1);
INSERT INTO creatures VALUES (0, 'Soldat der Stadt Eythgim', 11, 'Kriegsschrei', 'Eythgim scheint einen pers�nlichen Krieg mit dir zu f�hren.', NULL, 402, 127, 115, 21, 15, 27, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Heulsuse', 11, '�berflutung', 'Einen Schwamm! Ein K�nigreich f�r einen Schwamm!', NULL, 402, 127, 115, 21, 15, 27, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Pygm�en-Drachen', 11, 'Feueratem', 'Du hoffst, dass er nicht mit dem gr�nen Drachen verwand war.', NULL, 402, 127, 115, 21, 15, 27, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Eifriger Fotograf', 11, 'Blitzlichter', 'Jetzt kommt wieder kein Bild von dir in die Zeitung.', NULL, 402, 127, 115, 21, 15, 27, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Dein Spiegelbild im Wasser', 11, '- deine Waffe', 'Wie dumm muss man sein, um sein eigenes Spiegelbild anzugreifen .... und zu gewinnen?', NULL, 402, 127, 115, 21, 15, 27, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Rotkehlchen der Gl�ckseligkeit', 11, 'Erhebende Melodien', 'Gl�ckseligkeit wurde schon immer �berbewertet.', NULL, 402, 127, 115, 21, 15, 27, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Erin das Ninjaeichh�rnchen', 10, 'Eichel werfender Wahnsinn', 'Das Eichh�rnchen war wohl etwas geistesgest�rt!', NULL, 369, 114, 105, 19, 14, 24, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Fortula, die schlichte Katze', 10, 'Klauen und Z�hne', 'Jetzt ist sie schlicht tot.', NULL, 369, 114, 105, 19, 14, 24, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Zombie', 10, 'Verrottendes Fleisch', 'Jetzt besteht er nur noch aus Fetzen, nicht wahr?', NULL, 369, 114, 105, 19, 14, 24, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Holzf�llergeist', 10, 'Phantom Axt', 'Du weist nicht wie, aber du hast etwas get�tet, das schon tot war.  Gut f�r dich.', NULL, 369, 114, 105, 19, 14, 24, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Kampfhund', 10, 'Eisenbeschlagene Z�hne', 'Das w�re ein pr�chtiges Exemplar f�r Hundek�mpfe gewesen. Schade drum.', NULL, 369, 114, 105, 19, 14, 24, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Bogensch�tze', 10, 'T�dliches Zielen', 'Er brauchte so lange zum Zielen, dass du zu ihm liefst und ihn einfach in den Hintern getreten hast.', NULL, 369, 114, 105, 19, 14, 24, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Huhn', 10, 'spitzer Schnabel', 'Das Gl�ck l�chelt auf dich herab - du wirst heute gut essen.', NULL, 369, 114, 105, 19, 14, 24, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Gartenzwerg', 10, '�rgerliche Geschmacklosigkeit', 'Dummer Gartenzwerg. Was macht er auch im Wald?', NULL, 369, 114, 105, 19, 14, 24, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Wache der Stadt Eythgim', 10, 'Stossdegen', 'Die B�rger der Stadt werden sehr �rgerlich sein!', NULL, 369, 114, 105, 19, 14, 24, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Hungernder K�nstler', 9, 'Armselige Pinselstriche', 'Der hat sich selbst totgemalt.', NULL, 336, 101, 94, 17, 13, 21, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Wuscheliges Frettchen', 9, 'Einschmeichelnde Niedlichkeit', 'Frettchen sind SO gewaltt�tig!', NULL, 336, 101, 94, 17, 13, 21, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'B�sewicht aus einem Bong-Film', 9, 'Handy des Todes', 'Verdammt, wer wirft schon mit einem Handy?  Ich meine, das kann wirklich wehtun!', NULL, 336, 101, 94, 17, 13, 21, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Grosser Greif', 9, 'Schnabel und Krallen', 'Diese mystische Figur gibt es jetzt wirklich nicht mehr.', NULL, 336, 101, 94, 17, 13, 21, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Romulaner', 9, 'Konfusion �ber den falschen Film', 'Also im Fernsehn sahen sie tapferer aus!', NULL, 336, 101, 94, 17, 13, 21, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Dreizehiges Faultier', 12, 'Langsame Angriffe', 'Deine flinken Bewegungen waren ein wenig zu schnell f�r das Faultier.', NULL, 435, 141, 125, 23, 17, 31, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Tod', 12, 'Kalter Griff', 'Das ist er jetzt!  TOT!!!!!', NULL, 435, 141, 125, 23, 17, 31, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Kerberos', 13, 'Drei wiederk�uende M�gen', 'Jeder Atemzug ist besser als der letzte.', NULL, 467, 156, 135, 25, 18, 36, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Mann aus dem tiefen tiefen dunklen Wald', 13, 'Schnarchen und Bei�en', 'Nun ist der Mann aus dem tiefen tiefen dunklen Wald endg�ltug tot.', NULL, 467, 156, 135, 25, 18, 36, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Teufel im blauen Anzug', 13, 'Verf�hrerische Versprechungen', 'Aber du ziehst ja schwarze Anz�ge vor.', NULL, 467, 156, 135, 25, 18, 36, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Rattenherde', 8, 'Unglaublich viele scharfe Z�hne', 'Es geht auch ohne Fl�te...', NULL, 302, 89, 84, 15, 11, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Kommandant der Armee von Eythgim', 13, 'Siegertaktik', 'Du besiegst die Armee indem du ihren F�hrer t�test.', NULL, 467, 156, 135, 25, 18, 36, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Chink', 15, 'beschworene Doppelg�nger', 'Er kam aus dem Nichts und es blieb von ihm nichts.', '', 531, 189, 155, 29, 21, 0, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Pushmi Pullyew', 13, 'Wiederspr�chliche Argumente', 'Die Creatur ist sich nicht sicher ob sie tot ist oder lebt, aber du hast ihr ja die Entscheidung abgenommen.', NULL, 467, 156, 135, 25, 18, 36, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Gro�er Wal', 13, 'Schwanz', 'Du wei�t, da� es dir in der Kneipe NIEMAND glauben wird, da� du im Wald von einem Wal angegriffen wurdest.', NULL, 467, 156, 135, 25, 18, 36, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Gorma der Leprakranke', 13, 'Fortschreitender Verfall', 'Sieht aus als w�re ihm seine Strategie abgefallen...', NULL, 467, 156, 135, 25, 18, 36, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Samurai Meister', 14, 'Daisho', 'Du verbeugst dich vor dem gefallenen Meister, bevor du weiterziehst.', NULL, 499, 172, 145, 27, 20, 42, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Prinz der Stadt Eythgim', 14, 'Bestechungsgold', 'Du bist nicht bestechlich aber er war sterblich.', NULL, 499, 172, 145, 27, 20, 42, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Knochenkrieger', 15, 'seltsam funkelndes Schwert', 'Seine Wegrenn-Taktik konnte ihm nicht die Knochen retten', NULL, 531, 189, 155, 29, 21, 49, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Wuschiger Wuschel', 14, 'Kahle m�nnliche Dekopuppe', 'Der Wuschel war wohl nicht wirklich wuschig?', NULL, 499, 172, 145, 27, 20, 42, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Prinzessin der Stadt Eythgim', 15, 'Verf�hrerische Worte', 'Sie wollte dich in Versuchung f�hren, aber du hast ihr wiederstanden.', NULL, 531, 189, 155, 29, 21, 42, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'H�ssliche Harpie', 14, 'Vergifteter Atem', 'Ihr Atem war schlimmer als ihr Aussehen, und du dachtest nicht, da� das m�glich sein kann.', NULL, 499, 172, 145, 27, 20, 42, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Feldmaus', 14, 'Kautabak', 'Das war mal eine starke Maus!!!!', NULL, 499, 172, 145, 27, 20, 42, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'K�nig der Stadt Eythgim', 16, 'K�nigliche Befehle', 'Ich glaube das macht DICH jetzt zum K�nig dieser Stadt.', NULL, 563, 207, 166, 31, 22, 49, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Zyklopenkrieger', 15, 'Feuerauge', 'Der tote Zyklope schaut dich starr aus einem Auge an.', NULL, 531, 189, 155, 29, 21, 49, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Amor', 15, 'Pinkfarbene Pfeile der Liebe', 'Du bist nun tot Amor. Du wirst NIE deine Liebe finden.', NULL, 531, 189, 155, 29, 21, 49, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Klatschkolumnenautorin', 15, 'An den Haaren herbeigezogene Stories', 'Sie war wohl nur die Ausgeburt eines verr�ckten Aliens, der Elvis imitiert.', NULL, 531, 189, 155, 29, 21, 49, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Teuflischer Zauberer', 15, 'Gequ�lte Seelen', 'Nun sind die armen Seelen frei.', NULL, 531, 189, 155, 29, 21, 49, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Artemis, G�ttin der Jagd', 15, 'Gefl�gelte Hirsche', 'Der Mond weint um die get�tete Artemis.', NULL, 531, 189, 155, 29, 21, 49, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Zentaur Bogensch�tze', 15, 'T�dliche Treffsicherheit', 'Das perverse Mischlingswesen liegt still auf dem Boden.', NULL, 531, 189, 155, 29, 21, 49, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Mime', 15, 'Etwas eingebildetes', 'Sein Tod ist wie eine sehr schlechte Farce.', NULL, 531, 189, 155, 29, 21, 49, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Schwarzer Drachen', 14, 'Z�hne und Klauen', 'Irgendwo hast du so einen Drachen schonmal gesehen....', NULL, 499, 172, 145, 27, 20, 42, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Mainzelm�nnchen', 16, 'Winzige Waffen', 'Der kleine Krieger stirbt mit einem ohnm�chtigen Quietschen.', NULL, 563, 207, 166, 31, 22, 57, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Dunkelheit', 16, 'Selbsteingeredeter Terror', 'Du hast vor der Dunkelheit keine Angst mehr.', NULL, 563, 207, 166, 31, 22, 57, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'K�nig der Berge', 16, 'G�ttliche Wut', 'Der K�nig ist tot, es lebe der K�nig!', NULL, 563, 207, 166, 31, 22, 57, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Uriger �si', 10, 'Unverst�ndlicher Dialekt', '"Do mua�t scho friara aufsteh\', du Zniachtl!"', NULL, 369, 114, 105, 19, 14, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Mephisto', 14, 'Kugelblitze', 'Er hat nichts fallen lassen! Das trifft dich h�rter als seine Magie...', NULL, 499, 172, 145, 27, 20, 42, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Eisdrachen', 13, 'Frostatem', 'Du hast ihn besiegt, dir aber sicher eine Erk�ltung eingefangen.', NULL, 467, 156, 135, 25, 18, 36, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Carrie', 3, 'Telekinese', 'Das Schuldach war wohl doch zu schwer!', NULL, 148, 34, 32, 5, 4, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Football Fan', 6, 'Verr�ckte Cheerleader', 'Dieser Fan hat jetzt keinen Spass mehr.', NULL, 234, 66, 64, 11, 8, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'K�nig Agrippa', 13, 'Flammende Fl�gelmuttern', 'Du starrst auf seine qualmenden �berreste und sinnierst �ber den Sinn von flammenden Fl�gelmuttern.', NULL, 467, 156, 135, 25, 18, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Gigant', 13, '�berw�ltigende Keule', 'Aaaah - beinahe w�re er auf dich gefallen!', NULL, 467, 156, 135, 25, 18, 36, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Herrenausstatter', 5, 'Riesenhut', 'Tja, solche H�te sind aus der Mode.', NULL, 198, 55, 53, 9, 7, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Berufsverkehr-Pendler', 11, 'Strassenkreutzer', 'Auf diesen Waldwegen konnte er mit dieser Geschwindigkeit nicht gewinnen.', NULL, 402, 127, 115, 21, 15, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Nachtschwester', 7, 'Kopfkissen', 'Schade, dass sie tot ist, ich mochte sie.', NULL, 268, 77, 74, 13, 10, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Ulysses Wolfgang', 14, 'L�cherliche L�gen', 'Tod den L�gen!  Tod Ulysses Wolfgang', NULL, 499, 172, 145, 27, 20, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Verr�ckte Audrey', 9, 'Gefr��ige K�tzchen', 'Ein kleiner Stups und Audrey und ihre K�tzchen sind Geschichte.', NULL, 336, 101, 94, 17, 13, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Strahlende gl�ckliche Menschen', 5, 'H�nde des Schreckens', 'Sie wollten nur deine Freunde sein.  Du Leichtgl�ubiger.', NULL, 198, 55, 53, 9, 7, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Teletubbie', 1, 'Hallo!!!', 'Winke Winke!', NULL, 36, 14, 10, 1, 1, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Andre Linoge', 4, 'Stock', 'Du solltest mir geben, was ich will. Aber nicht mich t�ten!!!', NULL, 162, 45, 43, 7, 6, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Enormer Wollkn�ul', 5, 'unglaublich abflussverstopfende Wirkung', 'In die Kanalisation gesp�lt, Aaaaargh!!!!', NULL, 198, 55, 53, 9, 7, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Annie Wilkes', 4, 'Rasenm�her', 'Und das, obwohl ich dein gr��ter Fan war!', NULL, 162, 45, 43, 7, 6, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Verf�hrerische Vampirin', 14, 'temperamentvolle Bewegungen', 'Es war eine Schande sie zu t�ten.', NULL, 499, 172, 145, 27, 20, NULL, 'anpera', 1);
INSERT INTO creatures VALUES (0, 'Vampirus der Fledermausgott', 16, 'G�ttliche Macht', 'Du bist sogar noch g�ttlicher als er!', NULL, 563, 207, 166, 31, 22, NULL, 'anpera', 1);
INSERT INTO creatures VALUES (0, 'Methan-Mann', 7, '�bele Gase', 'Das m�ssen die Bohnen gewesen sein, die er gegessen hat!', NULL, 268, 77, 74, 13, 10, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Wuschiges Mammut', 8, 'Sein Handlanger, das Gnu', 'Du kletterst auf die �berreste des Mammut und erkl�rst Dich zum K�nig oder K�nigin.', NULL, 302, 89, 84, 15, 11, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Kurt Barlow', 3, 'Vampirz�hne', 'Mist, das war wohl mein letzter Bi�!', NULL, 148, 34, 32, 5, 4, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Ein Flederm�uschen', 1, 'winzige Flatterfl�gel', 'Dummes Ding', NULL, 36, 14, 10, 1, 1, NULL, 'anpera', 1);
INSERT INTO creatures VALUES (0, 'Kleine Fledermaus', 2, 'Kleine Giftz�hne', 'Der kleine S�uger f�llt auf den Boden', NULL, 97, 24, 21, 3, 3, NULL, 'anpera', 1);
INSERT INTO creatures VALUES (0, 'F�rster', 3, 'Jagdflinte', 'In seinem Rucksack findest du das Buch "Drachensuche f�r Dummies"', NULL, 148, 34, 32, 5, 4, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Lelant Gaunt', 4, 'Intrigen', 'H�tte nie gedacht, dass mein Laden pleite macht!', NULL, 162, 45, 43, 7, 6, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Einsiedler, der im Wald wohnt', 5, 'selbstgebastelte Schleuder', 'Er ermahnt Dich w�hrend er stirbt: "Verlass den Drachenwald."', NULL, 198, 55, 53, 9, 7, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Mitglied der anonymen Drachenliebhaber', 6, 'Pl�schdrache', 'Wenn jemand einen Button tr�gt, mit der Aufschrift "Ich liebe Drachen", ist er nicht mehr so anonym, wie er denkt!', NULL, 234, 66, 64, 11, 8, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Drachenw�chter, 1. Klasse', 8, 'Nervige Spr�che', 'Klassenziel nicht erreicht!', NULL, 302, 89, 84, 15, 11, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Senior Drachenw�chter', 9, 'H�hlenforscherausstattung', 'Du findest ein Exemplar von "H�hlendrachen und wo man sie findet." in seinem Rucksack.', NULL, 336, 101, 94, 17, 13, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Meister der Drachenw�chter', 10, 'Macht des Versteckens', 'Du wunderst dich, warum niemand die W�chter bewacht.', NULL, 369, 114, 105, 19, 14, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Junior Drachenb�ndiger', 11, '10-Fuss lange Drachenlanze', 'Gut, dass so eine Lanze nur bei Drachen Wirkung erzielt!', NULL, 402, 127, 115, 21, 15, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Junior Drachenb�ndiger', 12, 'Lange Peitsche', 'Wenn er nicht den Unterschied zwischen dir und einem Drachen erkennt, hat er sein leben verpennt.', NULL, 435, 141, 125, 23, 17, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Senior Drachenb�ndiger', 13, 'Sehr gro�er Hulahupp-Reifen', 'Du �berlegst dir, ob es gut war ihn zu t�ten. Du h�ttest gerne gesehen, wie ein Drachen durch den Reifen h�pft.', NULL, 467, 156, 135, 25, 18, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Meister der Drachenb�ndiger', 14, 'Gez�hmter Drache', 'Nachdem du den Meister get�tet hast, rennt der Drache furchtvoll davon.', NULL, 499, 172, 145, 27, 20, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Drachenreiter im Training', 15, 'Mechanischer Bulle', 'So lernen die Drachenreiten????', NULL, 531, 189, 155, 29, 21, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Drachenreiter', 16, 'Fliegender Drachen', 'Ein gut gezielter Schu� holt sie beide vom Himmel auf den Boden der Tatsachen zur�ck.', NULL, 563, 207, 166, 31, 22, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Eingefleischter Drachenbeobachter', 7, 'Fernglas', 'Alles was er sagen konnte war: "Pssssst,, du verscheuchst die Drachen!"', NULL, 268, 77, 74, 13, 10, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Camper', 2, 'Marshmallow R�ststock', 'Mit dem letzten Atem spricht er: "...und ich hab nichtmal den Drachen gesehen."', NULL, 97, 24, 21, 3, 3, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Mittelgro�e Fledermaus', 3, 'Markersch�tternde Schreie', 'Get�tet, just for fun.', NULL, 148, 34, 32, 5, 4, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'eine gro�e Fledermaus', 4, 'Guano', 'Ich glaube jetzt ist ein Bad f�llig!', NULL, 162, 45, 43, 7, 6, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Eine gigantische Fledermaus', 5, 'Festkrallen und Bei�en', 'Warum fliegen Kinoflederm�use immer in die Haare der Opfer?', NULL, 198, 55, 53, 9, 7, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Ein Vampirflederm�uschen', 6, 'Messerscharfe d�nne Z�hne', 'Bei der Wiedergeburt sollte es wohl eher ein Moskito werden.', NULL, 234, 66, 64, 11, 8, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Kleine Vampirfledermaus', 7, 'T�dliche Fangz�hne', 'Als sie auf dem Boden liegt, zertritts du sich noch gr�ndlich!', NULL, 268, 77, 74, 13, 10, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Eine mittelgro�e Vampirfledermaus', 8, 'Echos', 'Wer hat behauptet, da� dies Fledermaus  "mittelgro�" ist?  Kann sein, da� es eine junge Riesenfledermaus war.', NULL, 302, 89, 84, 15, 11, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Riesige Vampirfledermaus', 9, 'Blutdurst', 'Hmm, beim Roten Kreuz habe ich mehr Blut gespendet.', NULL, 336, 101, 94, 17, 13, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Vampir in Fledermausgestalt', 10, 'Schlechter rum�nischer Akzent', '"Ich vollte doch nur dein Blud!"', NULL, 369, 114, 105, 19, 14, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Prinz der Vampirflederm�use', 11, 'T�dlicher Griff', 'Und du dachtest Vampire w�ren Christdemokraten.', NULL, 402, 127, 115, 21, 15, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'K�nig der Vampirflederm�use', 12, 'Rote Augen', 'Du beschlie�t zu verschwinden, bevor der Rest der Flederm�use kommt um ihren K�nig zu r�chen.', NULL, 435, 141, 125, 23, 17, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Magischer Vampir', 13, 'Versteinernde Spr�che', 'Ein kalter Schauer l�uft �ber deinen R�cken .  Du w�rst jetzt lieber in der Kneipe.', NULL, 467, 156, 135, 25, 18, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Wahnsinnige Vampirfledermaus', 15, 'Zahlreiche Attacken', 'Warum gibt es so verdammt viele Flederm�use hier im Wald?', NULL, 531, 189, 155, 29, 21, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Wanderer', 1, 'Wanderstab', 'Seine letzten Worte waren: "...Ich muss den Drachen besch�tzen"', NULL, 36, 14, 10, 1, 1, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Mummelgreis des Winters', 9, 'Bittere K�lte', 'Du hebst deine F�uste �ber seinen Tod. Armselige Leiche.', NULL, 336, 101, 94, 17, 13, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Barfliege', 1, 'Alkoholfahne', 'Gut, dass du das Biest erledigt hast, bevor es die Zirrhose getan h�tte!', NULL, 36, 14, 10, 1, 1, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Geistesgest�rter Gnom', 1, 'Ein zugeh�ngter Spiegel', 'Bin ich so doof!', NULL, 36, 14, 10, 1, 1, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Regierung', 7, 'Steuern', 'Diese Steuerr�ckzahlung bringst du auf die Bank', NULL, 268, 77, 74, 13, 10, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Herrin des Sees', 10, 'Excalibur', 'Nimm das, du Wasserflittchen!', NULL, 369, 114, 105, 19, 14, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'kleiner B�r', 2, 'Pranken', 'Schade, der gute Pelz ist vom Kampf v�llig durchl�chert', NULL, 97, 24, 21, 3, 3, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Untoter Zenturio', 5, 'Bronzespeer', 'Hmm. Jetzt ist er richtig tot.', NULL, 198, 55, 53, 9, 7, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Verr�ckter Barde', 2, 'defekter Pentameter', 'Wer kann hier nicht singen?', NULL, 97, 24, 21, 3, 3, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'D�rrer Mann', 1, 'Dornenzweig', 'Und ich dachte, ich k�nnte �ber Wasser gehen.', NULL, 36, 14, 10, 1, 1, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Untoter Ruderer', 1, 'Vergammeltes Ruder', 'Komisch ... hab hier gar kein Wasser in der N�he gesehen...', NULL, 36, 14, 10, 1, 1, NULL, 'anpera', 1);
INSERT INTO creatures VALUES (0, 'Goblin Helferlein', 1, 'Stumpfes Messer', 'Wer h�tte gedacht, dass Goblins Helfer haben?', NULL, 36, 14, 10, 1, 1, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Grosse haarige Spinne', 1, 'Klebrige Spinnweben', 'Ich *HASSE* Spinnen!', NULL, 36, 14, 10, 1, 1, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'streunende Katze', 1, 'n�chtliche Katzenmusik', 'Endlich! Ruhe in der Nacht.', NULL, 36, 14, 10, 1, 1, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Zeichentrickhase', 1, 'Dumme Witze', 'Th- Th- That\'s all folks!', NULL, 36, 14, 10, 1, 1, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Ver�rgerte Meise', 2, 'unabl�ssiges Plappern', 'Nicht mein Tag.', NULL, 97, 24, 21, 3, 3, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'tollw�tige Maus', 1, 'Kleine Z�hnchen', 'Diese kleinen Z�hnchen haben WEH getan!', NULL, 36, 14, 10, 1, 1, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'lebendiger Zweig', 1, 'Beeren und Dornen', 'Ich habe ihn umgeknickt wie einen d�rren .... naja, Zweig', NULL, 36, 14, 10, 1, 1, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Der Gro�e Bogeyman', 3, 'In die Finger beissen, w�hrend du schl�fst', 'Ok.. Das war bl�d.  Aber nicht gruselig.. Sorry f�r alles.. Ich denke, ich lasse heute Nacht das Licht an.', NULL, 148, 34, 32, 5, 4, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'hungriger Copperfield-Zombie', 2, 'schlecht gemachte Zauberkunstst�cke', 'Das n�chste Mal esse ich dich besser..', NULL, 97, 24, 21, 3, 3, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Stephen King', 2, '1000 Manuskripte', 'Und ich schreibe doch weiter.', NULL, 97, 24, 21, 3, 3, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Junger Ghoul', 2, 'gepiercte Fingern�gel', 'Du l�sst ihn als Futter f�r die anderen Ghouls..', NULL, 97, 24, 21, 3, 3, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Klappriges Skelett', 2, 'Rostiger Nagel', 'Asche zu Asche, Skelett zu Staub.', NULL, 97, 24, 21, 3, 3, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Frisch gestorbener Zombie', 2, 'F�uste', 'Jetzt kann ich in Frieden ruhen.', NULL, 97, 24, 21, 3, 3, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Feenhund', 2, 'gl�hende Augen', 'Die L�mpchen in seinen Augen brennen durch.', NULL, 97, 24, 21, 3, 3, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Jung-Zauberer', 3, 'Lebensabsaugende Spr�che', 'Er macht einen letzten Atemzug und zerschmilzt zu einer �belen Br�he.', NULL, 148, 34, 32, 5, 4, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Walddieb', 3, 'Vergiftetes Kurzschwert', 'Seine Taschen sind leer. Ich glaube, er war ein schlechter Dieb.', NULL, 148, 34, 32, 5, 4, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Vermodertes Skelett', 3, 'Verfaulte F�uste', 'Uuups, jetzt verfault der Rest auch noch', NULL, 148, 34, 32, 5, 4, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, '�rgerliche Fee', 3, 'Gewaltiger Feenstaub', 'Hmmm, jetzt hat mich mein Staub gepudert.', NULL, 148, 34, 32, 5, 4, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Goblin J�ger', 3, 'ein Kurzbogen', 'Nur einer? Treten die sonst nicht in Rudeln auf?', NULL, 148, 34, 32, 5, 4, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Tolpatschiger junger B�r', 3, 'Scharfe Krallen', 'So puzige junge B�rchen haben hier nichts verloren.', NULL, 148, 34, 32, 5, 4, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Wiederbelebter Kartoffelsack', 3, '1000 faulige Kartoffeln', 'Hmmm, das war wohl nichts mit dem Wiederbeleben!', NULL, 148, 34, 32, 5, 4, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Kackwiesel', 4, 'stinkende F�rze', 'So ein Scheiss..........', NULL, 162, 45, 43, 7, 6, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Der Buick', 4, 'Offener Kofferraum', 'Sprit alle. Und nun?', NULL, 162, 45, 43, 7, 6, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'George Stark', 4, 'Schwere B�cher', 'Schei� Sperlinge', NULL, 162, 45, 43, 7, 6, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Dampf Geist', 4, 'Verdammt heisser Dampf', 'War wohl doch nur heisse Luft, h�?', NULL, 162, 45, 43, 7, 6, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Ruheloser Zombie', 4, 'Zerbrochenes Langschwert', 'Endlich hat er Ruhe.', NULL, 162, 45, 43, 7, 6, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Zombie Soldat', 4, 'Rostiger Speer', 'Sein letzter Befehl: Gehe zur H�lle..', NULL, 162, 45, 43, 7, 6, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Cujo', 4, 'Tollwut', 'Autsch, jetzt hast du mir das Fell �ber die Ohren gezogen.', NULL, 162, 45, 43, 7, 6, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Tommyknocker', 4, 'Strahlenwaffe', 'grzaufdff alkdfjasdfl kadfjdfj (Marsianisch) .', NULL, 162, 45, 43, 7, 6, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Blaine der Mono', 4, 'R�tsel', 'Mist, du weisst wohl alles!!!!!!!!', NULL, 162, 45, 43, 7, 6, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Fliegender Dolch', 4, 'Rasiermesserscharfer Stahl', 'Der Dolch zersplittert, als er den Boden ber�hrt.', NULL, 162, 45, 43, 7, 6, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Goblin K�mpfer', 5, 'gebogenes Kurzschwert', 'Tot ... und vergessen.', NULL, 198, 55, 53, 9, 7, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Andy der Roboter', 5, 'Killerhoroskope', 'Tja, heute stand wohl nichts gutes in deinen Sternen.', NULL, 198, 55, 53, 9, 7, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Arbeitsw�tiger Elefant', 2, 'zuviel Arbeit', 'Arg, daf�r muss ich �berstunden schieben.......', NULL, 97, 24, 21, 3, 3, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Der Schlammmann', 5, 'verzauberter Schlamm', 'Pech, der Schlamm trocknet in der hei�en Sonne.', NULL, 198, 55, 53, 9, 7, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Lupo, der hypnotisierende Chihuahua', 5, 'Grauer Star', 'Du schaffst es, den gro�en hypnotischen Augen zu entkommen...', NULL, 198, 55, 53, 9, 7, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Ghoul', 5, 'Hunger auf Fleisch', 'Der Ghoul f�llt zu Boden mit einem St�ck Fleisch zwischen den Z�hnen.', NULL, 198, 55, 53, 9, 7, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Heruntergekommener Halsabschneider', 5, 'Rasiermesserscharfer Dolch', 'Und wieder ein Bandit weniger im Wald.', NULL, 198, 55, 53, 9, 7, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Berserker Ork', 5, 'Orkische Streitaxt', 'Gruuuunnnzzzzzzz....', NULL, 198, 55, 53, 9, 7, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Verr�ckter Holzf�ller', 5, 'Stumpfe Axt', 'Hmm, der ist jetzt wohl auf die richtige Gr��e zurechtgestutzt.', NULL, 198, 55, 53, 9, 7, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Tanzender Elefant', 3, 'schwingender R�ssel', 'Du hast mich besiegt wie eine Maus.', NULL, 148, 34, 32, 5, 4, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Waldkatze', 6, 'Bedrohliche Krallen', 'Ausgeschnurrt !!!!!!!!', NULL, 234, 66, 64, 11, 8, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Reisender Geisterbeschw�rer', 6, 'Ein untoter Riese', 'Der Geisterbeschw�rer schwebt als schwarze Wolke davon *puff*.', NULL, 234, 66, 64, 11, 8, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Eiskaltes Skelett', 6, 'Die K�lte des Grabes', 'Ich w�rde mir w�nschen, dass einer von diesen Kollegen das Ale in der Kneipe k�hlen w�rde!', NULL, 234, 66, 64, 11, 8, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Frost Geist', 6, 'K�lte bis ins Knochenmark', 'Und wieder einen noch k�lter gemacht.', NULL, 234, 66, 64, 11, 8, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Geist eines Drachenj�gers', 6, 'Warnung vor dem Schicksal', 'Jeder fragt sich, was im wohl passiert ist.', NULL, 234, 66, 64, 11, 8, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Dopplek�pfiger Magier', 6, 'Dopplet bedrohliche Zauberspr�che', 'Zwei K�pfe sind nicht besser als einer. Man muss nur einen mehr abschlagen.', NULL, 234, 66, 64, 11, 8, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Geisterwolf', 6, 'geisterhaftes Heulen', 'So, jetzt ist Ruhe.  Endg�ltig.', NULL, 234, 66, 64, 11, 8, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'H�lzerner Golem', 6, 'Eichenholzf�uste', 'Die Wahrhaftigkeit gab dir das Leben, die Wahrhaftigkeit befreite dich auch wieder davon!', NULL, 234, 66, 64, 11, 8, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Behinderte Ente', 6, 'verdrehte Fl�gel', 'Es gibt 50 Arten, eine Ente zu tranchieren.', NULL, 234, 66, 64, 11, 8, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Dunkler Druide', 7, 'Korruptes Wesen', 'Jo man, ich war wohl besser.', NULL, 268, 77, 74, 13, 10, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Eidechsenmann', 7, 'Miese Bogensch�tzenf�higkeiten', 'Ich weiss, wo man aus ihm ein paar sch�ne Stiefel machen lassen kann,', NULL, 268, 77, 74, 13, 10, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Diabolischer Diener', 7, 'D�monisches Labyrinth', 'Seine R�stung zischt, als er zu einem kleinen H�ufchen zerschmilzt.', NULL, 268, 77, 74, 13, 10, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Gigantische Baumspinne', 7, 'Gesponnene Geschosse', 'Nachdem du sie halbiert hast, ist sie garnicht mehr so gross.', NULL, 268, 77, 74, 13, 10, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Flammender Zombie', 7, 'F�uste aus Feuer', 'Du bl�ste seine Flamme des Lebens aus, steckst dir aber vorher eine Zigarette an ihr an.', NULL, 268, 77, 74, 13, 10, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Gespenstischer Zauberer', 7, 'Spr�che der Dunkelheit', 'Und es werde Licht.', NULL, 268, 77, 74, 13, 10, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Herr der Zauberer', 7, 'Armee von Untoten', 'Du t�test den Zauberer und seine Lakaien zerfallen zu Staub.', NULL, 268, 77, 74, 13, 10, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Anregende Finsternis', 7, 'Finsternis der 1000 N�chte', 'Leichte Beschwingtheit kehrt in diesen Teil des Waldes zur�ck.', NULL, 268, 77, 74, 13, 10, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Tempelw�chterstatue', 7, 'Marmorf�uste', 'So, und wo ist der Tempel?', NULL, 268, 77, 74, 13, 10, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Eulenb�r', 7, 'Klauen und eine b�rige Umarmung', 'Ich will nicht wissen, wo sie den ausgebr�tet haben.', NULL, 268, 77, 74, 13, 10, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Der Mann in Schwarz', 8, 'Schwarzer Zauber', 'Nichts desto trotz. Tot isser!', NULL, 302, 89, 84, 15, 11, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Gnom Illusionist', 8, 'Grausame Illusionen', 'Die Illusionen gab es nur in seinem Kopf.', NULL, 302, 89, 84, 15, 11, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'D�monisches Skelett', 8, 'Teuflische Zeichen', 'Die Geister seiner Opfer haben es in die H�lle geholt.', NULL, 302, 89, 84, 15, 11, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Verr�ckter Druidenmeister', 8, 'Irres Lachen', 'Das irre Lachen starb mit ihm.', NULL, 302, 89, 84, 15, 11, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Wassergeist', 8, 'Spr�che des Wassers', 'Jetzt hab ich ihn nass gemacht.', NULL, 302, 89, 84, 15, 11, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Erdgeist', 8, 'Erdbebundene Zauberspr�che', 'Er war aber etwas schmutzig.', NULL, 302, 89, 84, 15, 11, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Waldriese', 8, 'Entwurzelter Baum', 'Bist jetzt etwas eingetrocknet, gr�ner Mann?', NULL, 302, 89, 84, 15, 11, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'D�monischer Ritter', 8, 'Diabolische Lanze', 'Gute Nacht, edler Ritter.', NULL, 302, 89, 84, 15, 11, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Riesenzombie', 8, 'Gigantische F�uste', 'Je gr��er sie sind, desto mehr stinken sie!', NULL, 302, 89, 84, 15, 11, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Frost Geist', 9, 'Die k�hle Ber�hrung des Grabes', 'Als du dich von dem Kampf erholst, schmilzt der Geist hinweg.', NULL, 336, 101, 94, 17, 13, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Kleiner Walddrache', 9, 'Zuschnappende Rei�z�hne', 'Drache.. OK. Gr�n... OK.  M�chtig.. N�n�.', NULL, 336, 101, 94, 17, 13, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Ein Rudel fleischfressender Lemuren', 9, 'Jammern und Heulen', 'Was zum Teufel ist ein Lemure??', NULL, 336, 101, 94, 17, 13, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Albino-B�r aus der Gruft', 9, 'Faulig stinkende Klauen', 'Du fertigst den B�r Ruckzuck ab und schaust nach ob es noch mehr davon gibt:', NULL, 336, 101, 94, 17, 13, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Der schwarze Ritter des Tales', 9, 'Ebenholzschwert', 'Als er stirbt, belegt er dich mit dem Fluch NIE den Drachen zu besiegen.', NULL, 336, 101, 94, 17, 13, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Elmearischer Spion', 9, 'Kleiner Dolch', 'Er isst seine Informationen auf, bevor du sie an dich nehmen kannst..', NULL, 336, 101, 94, 17, 13, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Schleichender Schatten', 9, 'Krallen der Dunkelheit', 'Du hast ihn dorthin geschickt, wo er herkam.', NULL, 336, 101, 94, 17, 13, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Geisterbeschw�render Ur-Zauberer', 9, 'Schreie von 1000 Seelen', 'Im Sterben explodiert er in einer S�ule von schwarzen Flammen!', NULL, 336, 101, 94, 17, 13, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Eiserner Golem', 9, 'Verrostete F�uste', 'Rostentferner h�tte ihm gutgetan.', NULL, 336, 101, 94, 17, 13, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'H�llenhund', 9, 'Feuriger Atem', 'Er zerplatzt in lauter kleine Flammen und versinkt in der Erde.', NULL, 336, 101, 94, 17, 13, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Kooperativer Lakai', 7, 'Schlagw�rter', 'Das war wohl nix..', NULL, 268, 77, 74, 13, 10, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Anwalt von Microsoft', 8, 'Klageschriften', 'Wieder ein Anwalt, der nie wieder �rger macht!', NULL, 302, 89, 84, 15, 11, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Ein alter Grossvater', 3, 'Geschichten, die niemand h�ren will', 'Das erinnert dich daran, dass du deine Schuhe besohlen lassen willst', NULL, 148, 34, 32, 5, 4, 14, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'chinesischer Koch', 3, 'Katzenfutter', 'Shin shang shong', NULL, 148, 34, 32, 5, 4, 14, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Passierte Erbsen', 5, 'Gr�ner Schleim', 'Lasst uns f�r die Erbsen beten.', NULL, 198, 55, 53, 9, 7, 15, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Halbfertiger Magier', 8, 'Schmerzhafter Zauber', 'Der Kampf war nur halb so schwer wie erwartet.', NULL, 302, 89, 84, 15, 11, 19, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'B�rger von Eythgim', 9, 'Verunglimpfung', 'Verflucht, was hab ich ihm getan?', NULL, 336, 101, 94, 17, 13, 21, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Alte Vettel', 9, 'Verwunschene rote Rosen', 'Jetzt ist sie dran mit dem verzauberten Schlaf.', NULL, 336, 101, 94, 17, 13, 21, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'W�tender B�ffel', 9, 'Trampelnde Hufe', 'Weisst du wie man einen solchen B�ffel stoppt?  Nimm ihm seine Kreditkarte weg!', NULL, 336, 101, 94, 17, 13, 21, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Bauer', 9, 'Simple Taktik', 'Tja, das war ein schlechter Zug!', NULL, 336, 101, 94, 17, 13, 21, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Verr�ckter Fussballmoderator', 12, 'Lautes Gebr�ll', 'TOOOOOOOOOOOOOR!!!!!!', NULL, 435, 141, 125, 23, 17, 31, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Herr der Zeit', 12, 'Alte Zeit', 'Der Sieg freut dich nicht, denn du wei�t, da� er wiederkommt.', NULL, 435, 141, 125, 23, 17, 31, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Bogensch�tze aus der Stadt Eythgim', 12, 'Flammende Pfeile', 'Der Baum neben dir brennt. L�sche ihn lieber.', NULL, 435, 141, 125, 23, 17, 31, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Beseelte Sturmwolke', 12, 'Blitze', 'Der Sturm ist vor�ber und du siehst den blauen Himmel durch die Reste der Wolke hindurchblitzen.', NULL, 435, 141, 125, 23, 17, 31, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Engelhaftes bezauberndes Kind', 1, 'Sonderbare Fragen', 'Du denkst es war die Alliteration die es erledigt hat.', NULL, 36, 14, 10, 1, 1, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Verwirrter Gnom', 1, 'ein verh�ngter Spiegel', 'Was passiert, wenn ICH sowas mache?', NULL, 36, 14, 10, 1, 1, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Wassergeist', 1, 'Wasserspritzer', 'Das war erfrischend.', NULL, 36, 14, 10, 1, 1, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'kleines B�umchen', 1, 'Arrrr!', 'Aha! Ein Zahnstocher', NULL, 36, 14, 10, 1, 1, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Forumuser', 2, 'unkontrollierter Spam', 'Stopp Spam!', NULL, 97, 24, 21, 3, 3, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'untoter Newbie', 2, 'ignorierte F.A.Q.', 'Er h�tte vielleicht doch mal die F.A.Q. lesen sollen...', NULL, 97, 24, 21, 3, 3, NULL, 'anpera', 1);
INSERT INTO creatures VALUES (0, 'Seelenfresser', 8, 'unsagbarer Appetit', 'Fahr zur H�lle mit all den Seelen in dir.', NULL, 302, 89, 84, 15, 11, NULL, 'anpera', 1);
INSERT INTO creatures VALUES (0, 'Hundehaufen', 1, 'unmotiviertes Herumliegen', 'Man, das war schei...', NULL, 36, 14, 10, 1, 1, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Untoter Greifvogel', 6, 'Knochenklaue', 'Du hast nun Hunger auf H�hnchenkeule', NULL, 234, 66, 64, 11, 8, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Nachtm�hre', 5, 'Donnernde Hufe', 'Du �berlegst, ob das ein geeignetes Reittier gewesen w�re.', NULL, 198, 55, 53, 9, 7, NULL, 'theKlaus', 1);
INSERT INTO creatures VALUES (0, 'Wilder Nordmann', 8, 'Kriegshammer', 'Wir die scheint, stirbt der Nordmann mit einem L�cheln im Gesicht.', NULL, 302, 89, 84, 15, 11, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Besessener Magier', 5, 'Schwarze Magie', 'Sei 7 mal verflucht....', NULL, 198, 55, 53, 9, 7, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Dunkler Paladin', 8, 'Verfluchtes Schwert', 'Danke, dass du meine Seele erl�st hast!', NULL, 302, 89, 84, 15, 11, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Schneemann', 3, 'Schneeball', '.... das wurde zu heiss!', NULL, 148, 34, 32, 5, 4, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Plymouth', 3, 'Abgase', 'too fast, too furious', NULL, 148, 34, 32, 5, 4, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Clown', 3, 'Ballon', 'zur�ck in die Kan�le', NULL, 148, 34, 32, 5, 4, NULL, 'theKlaus', 0);
INSERT INTO creatures VALUES (0, 'Cicero', 15, 'Wohl�berlegtes Gelaber in unverst�ndlichem Latein', 'Jetzt war er mit seinem Latein am Ende', NULL, 531, 189, 155, 29, 21, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Versicherungsvertreter', 14, 'Seelenf�nger', 'Hoffentlich hatte er eine gute Lebensversicherung', NULL, 499, 172, 145, 27, 20, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Schattenkrieger', 13, 'Unsichtbare Klinge', 'Des Teufels Schergen schwinden dahin.', NULL, 467, 156, 135, 25, 18, NULL, 'anpera', 1);
INSERT INTO creatures VALUES (0, 'Brennender Bush', 12, 'Wurzel des B�sen', 'Du bezweifelst, dass du alles erwischt hast.', NULL, 435, 141, 125, 23, 17, NULL, 'anpera', 0);
INSERT INTO creatures VALUES (0, 'Bluescreen', 12, 'R�stungsschutzverletzung', 'Da will man mal eine schwere Ausnahme machen und dann sowas...', NULL, 435, 141, 125, 23, 17, NULL, 'Net', 0);
INSERT INTO creatures VALUES (0, 'Einsamkeit', 17, 'Stille', 'Wie h�rt es sich an, mit einer Hand zu klatschen?', 'Wie h�rt es sich an, mit einer Hand zu klatschen?', 36, 0, 1, 0, 0, 0, NULL, 0);
INSERT INTO creatures VALUES (0, 'Einsamkeit', 18, 'Stille', 'Wie h�rt es sich an, mit einer Hand zu klatschen?', 'Wie h�rt es sich an, mit einer Hand zu klatschen?', 0, 0, 1, 0, 25, 0, NULL, 0);

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `debuglog`
#

CREATE TABLE debuglog (
  id int(11) unsigned NOT NULL auto_increment,
  date datetime NOT NULL default '0000-00-00 00:00:00',
  actor int(11) unsigned default NULL,
  target int(11) unsigned default NULL,
  message text NOT NULL,
  PRIMARY KEY  (id),
  KEY date (date),
  KEY actor (actor),
  KEY target (target)
) TYPE=MyISAM;

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `faillog`
#

CREATE TABLE faillog (
  eventid int(11) unsigned NOT NULL auto_increment,
  date datetime NOT NULL default '0000-00-00 00:00:00',
  post tinytext NOT NULL,
  ip varchar(40) NOT NULL default '',
  acctid int(11) unsigned default NULL,
  id varchar(32) NOT NULL default '',
  PRIMARY KEY  (eventid),
  KEY date (date),
  KEY acctid (acctid),
  KEY ip (ip)
) TYPE=MyISAM;

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `houses`
#

CREATE TABLE houses (
  houseid int(11) unsigned NOT NULL auto_increment,
  owner int(11) unsigned NOT NULL default '0',
  status int(10) unsigned NOT NULL default '0',
  gold int(10) unsigned NOT NULL default '0',
  gems int(10) unsigned NOT NULL default '0',
  housename varchar(25) default NULL,
  description text NOT NULL,
  PRIMARY KEY  (houseid),
  UNIQUE KEY houseid (houseid)
) TYPE=MyISAM;

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle items
#

CREATE TABLE items (
  id int(11) unsigned NOT NULL auto_increment,
  name varchar(128) NOT NULL default '',
  class varchar(10) NOT NULL default '',
  owner int(11) unsigned NOT NULL default '0',
  value1 int(11) NOT NULL default '0',
  value2 int(11) NOT NULL default '0',
  gold int(11) unsigned NOT NULL default '0',
  gems int(11) unsigned NOT NULL default '0',
  description text,
  hvalue int(11) NOT NULL default '0',
  buff text NOT NULL,
  PRIMARY KEY  (id),
  KEY class (class)
) TYPE=MyISAM;

#
# Daten f�r Tabelle `items`
#

INSERT INTO items VALUES (0, 'Schnitzerei aus Holz', 'Beute.Prot', 0, 0, 0, 20, 0, 'Wertloser Plunder', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Feuerstein', 'Beute.Prot', 0, 0, 0, 25, 0, 'Wertloser Plunder', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Ogerzahn', 'Beute.Prot', 0, 0, 0, 10, 0, 'Wertloser Plunder', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Drachenschuppe', 'Beute.Prot', 0, 0, 0, 100, 0, 'Komponente f�r magische Tr�nke', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Stuhlbein', 'Beute.Prot', 0, 0, 0, 5, 0, 'Wertloser Plunder', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Rostiger Nagel', 'Beute.Prot', 0, 0, 0, 1, 0, 'Wertloser Plunder', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Kleine Tonscheibe', 'Beute.Prot', 0, 0, 0, 5, 0, 'Wertloser Plunder', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Holztisch', 'M�bel.Prot', 0, 0, 0, 2000, 4, 'Ein massiver Tisch aus Holz, wie er auch in der Dark Horse Tavern zu finden ist.', 0, 'a:0:{}');
INSERT INTO items VALUES (0, '4 Holzst�hle', 'M�bel.Prot', 0, 0, 0, 1500, 4, '4 massive St�hle aus Holz, wie man sie auch in der Dark Horse Tavern finden kann.', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Ledersofa', 'M�bel.Prot', 0, 0, 0, 5000, 12, 'Ein edles Sofa aus Drachenleder.', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Fledermausfl�gel', 'Beute.Prot', 0, 0, 0, 150, 0, 'Komponente f�r magische Tr�nke', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Glasperle', 'Beute.Prot', 0, 0, 0, 10, 0, 'Wertloser Plunder', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Alter Knochen', 'Beute.Prot', 0, 0, 0, 2, 0, 'Wertloser Plunder', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Himmelbett', 'M�bel.Prot', 0, 0, 0, 5500, 15, 'In solchen Betten schlafen sonst nur K�nige!', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Verzierter Schreibtisch', 'M�bel.Prot', 0, 0, 0, 3000, 8, 'Eindeutig elfische Handwerkskunst.', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Glasfigur', 'Beute.Prot', 0, 0, 0, 0, 1, 'Eine wertvolle Tierfigur aus geschliffenem Glas.', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Fluch der Schw�che', 'Fluch.Prot', 0, 0, 0, 10, 3, 'Ein m�chtiger Fluch, der dich f�r mehrere Tage schw�cht.', 4, 'a:7:{s:4:"name";s:11:"`GSchw�chen";s:8:"roundmsg";s:36:"`GEin m�chtiger Fluch schw�cht dich.";s:7:"wearoff";s:49:"`GDer Fluch hat f�r heute seine Wirkung verloren.";s:6:"rounds";s:2:"10";s:6:"atkmod";s:3:"0.9";s:6:"defmod";s:3:"0.9";s:8:"activate";s:7:"offense";}');
INSERT INTO items VALUES (0, 'Fluch der Toten', 'Fluch.Prot', 0, 0, 0, 50, 5, 'Ein m�chtiger, permanenter Fluch, der dein Sterben beschleunigt.', 0, 'a:6:{s:4:"name";s:10:"Todesfluch";s:8:"roundmsg";s:54:"`TDer Todesfluch verursacht dir h�llische Schmerzen.`0";s:7:"wearoff";s:46:"`TDer Todesfluch l�sst f�r heute von dir ab.`0";s:6:"rounds";s:2:"20";s:5:"regen";s:4:"-1.1";s:8:"activate";s:10:"roundstart";}');
INSERT INTO items VALUES (0, 'Gro�er Spiegel', 'M�bel.Prot', 0, 0, 0, 3000, 6, 'Ein gro�er, hochwertiger  Wandspiegel aus poliertem Metall.', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Fluch der Blindheit', 'Fluch.Prot', 0, 0, 0, 100, 2, 'Dieser alte Fluch schw�cht deine Sehkraft und senkt somit deinen Angriffwert f�r 4 Tage.', 4, 'a:6:{s:4:"name";s:9:"Blindheit";s:8:"roundmsg";s:29:"`1Du kannst kaum etwas sehen.";s:9:"effectmsg";s:40:"`1Deine Sehkraft kehrt f�r heute zur�ck.";s:6:"rounds";s:2:"20";s:6:"atkmod";s:3:"0.9";s:8:"activate";s:7:"offense";}');
INSERT INTO items VALUES (0, 'Fluch des Vampirs', 'Fluch.Prot', 0, 0, 0, 100, 3, 'Dieser Fluch saugt f�r 5 Tage an deiner Lebensenergie.', 5, 'a:5:{s:4:"name";s:11:"Vampirfluch";s:9:"effectmsg";s:29:"`TEin Fluch saugt dich aus.`0";s:6:"rounds";s:2:"12";s:5:"regen";s:4:"-1.1";s:8:"activate";s:10:"roundstart";}');
INSERT INTO items VALUES (0, 'Zimmerpflanze', 'M�bel.Prot', 0, 0, 0, 500, 2, 'Gr�n und fast zu gro� f�r eine Zimmerpflanze. Allerdings nicht f�r Trolle.', 0, 'a:0:{}');
INSERT INTO items VALUES (0, 'Magiebarriere', 'Zaub.Prot', 0, 10, 10, 150, 2, 'Dieser Zauber kann 10x verwendet werden und blockt jeweils einen Angriff deines Gegners komplett ab.', 0, 'a:5:{s:4:"name";s:13:"Magiebarriere";s:8:"roundmsg";s:94:"`VEin hellblauer Energieschild blitzt auf und blockt den Angriff deines Gegners komplett ab.`0";s:6:"rounds";s:1:"1";s:12:"badguyatkmod";s:1:"0";s:8:"activate";s:7:"defense";}');
INSERT INTO items VALUES (0, 'Verst�rkter Schlag', 'Zaub.Prot', 0, 1, 1, 100, 0, 'Dieser einfache Zauber l�sst den Anwender einen Schlag mit leicht erh�htem Angriff ausf�hren.', 0, 'a:6:{s:4:"name";s:18:"Verst�rkter Schlag";s:8:"roundmsg";s:56:"`VDein Angriffswert ist f�r diesen Schlag leicht erh�ht.";s:6:"rounds";s:1:"1";s:6:"atkmod";s:3:"1.5";s:12:"badguydefmod";s:3:"0.5";s:8:"activate";s:7:"offense";}');
INSERT INTO items VALUES (0, 'Funkenregen', 'Zaub.Prot', 0, 5, 5, 500, 1, 'Dieser Zauber erzeugt einen Regen aus brennenden Funken, die deinen Gegner sch�digen. Er kann 5x verwendet werden.', 0, 'a:7:{s:4:"name";s:11:"Funkenregen";s:9:"effectmsg";s:67:"`VEin Funken landet auf {badguy} und verursacht {damage} Schaden.`0";s:6:"rounds";s:1:"3";s:11:"minioncount";s:1:"3";s:15:"minbadguydamage";s:1:"0";s:15:"maxbadguydamage";s:1:"3";s:8:"activate";s:7:"offense";}');
INSERT INTO items VALUES (0, 'Blitzschlag', 'Zaub.Prot', 0, 1, 1, 500, 0, 'Dieser Zauber l�sst einen m�chtigen Blitz aus deiner Hand in den Gegner fahren.', 0, 'a:7:{s:4:"name";s:11:"Blitzschlag";s:9:"effectmsg";s:83:"`#Ein Blitz schl�gt aus deiner Hand auf {badguy} und verursacht {damage} Schaden.`0";s:6:"rounds";s:1:"1";s:11:"minioncount";s:1:"1";s:15:"minbadguydamage";s:1:"2";s:15:"maxbadguydamage";s:23:"$session[user][level]*2";s:8:"activate";s:7:"offense";}');
INSERT INTO items VALUES (0, 'Kleiner Heiltrank', 'Zaub.Prot', 0, 1, 1, 250, 0, 'Ein schwacher Heiltrank, der aber durchaus Leben retten kann. Er enth�lt nur einen Schluck und heilt 25 Punkte.', 0, 'a:7:{s:4:"name";s:9:"Heiltrank";s:9:"effectmsg";s:40:"`rDu wirst um {damage} Punkte geheilt.`0";s:14:"effectnodmgmsg";s:43:"`rDer Heilzauber war wohl schon schlecht.`0";s:13:"effectfailmsg";s:43:"`rDer Heilzauber war wohl schon schlecht.`0";s:6:"rounds";s:1:"1";s:5:"regen";s:2:"25";s:8:"activate";s:10:"roundstart";}');
INSERT INTO items VALUES (0, 'Golem', 'Zaub.Prot', 0, 1, 1, 500, 5, 'Dieser m�chtige Zauber - bestehend aus einem Erdklumpen - erschafft ein magisches Wesen, das 45 Runden auf deiner Seite k�mpft.', 0, 'a:10:{s:4:"name";s:5:"Golem";s:7:"wearoff";s:33:"`TDein Golem zerf�llt zu Staub.`0";s:9:"effectmsg";s:50:"`TDein Golem trifft mit {damage} Schadenspunkten`0";s:14:"effectnodmgmsg";s:48:"`TDein Golem trifft, macht aber keinen Schaden`0";s:13:"effectfailmsg";s:50:"`TDein Golem ist zu langsam und schl�gt daneben.`0";s:6:"rounds";s:2:"45";s:11:"minioncount";s:1:"1";s:15:"minbadguydamage";s:1:"0";s:15:"maxbadguydamage";s:21:"$session[user][level]";s:8:"activate";s:7:"offense";}');
INSERT INTO items VALUES (0, 'Raserei', 'Zaub.Prot', 0, 2, 2, 500, 2, 'Dies ist mehr eine Kampftechnik, als es mit Magie zu tun hat. Dein Angriffswert steigt, deine Verteidigung leidet allerdings unter dieser blinden Raserei. Kann 3 Tage lang 2x eingesetzt werden.', 3, 'a:7:{s:4:"name";s:7:"Raserei";s:8:"roundmsg";s:70:"`qDu f�hrst in blinder Raserei einen besonders heftigen Angriff aus.`0";s:6:"rounds";s:1:"1";s:6:"atkmod";s:3:"1.1";s:6:"defmod";s:3:"0.9";s:12:"badguydefmod";s:3:"0.9";s:8:"activate";s:10:"roundstart";}');
INSERT INTO items VALUES (0, 'H�llengestank', 'Fluch.Prot', 0, 0, 0, 50, 1, 'Dieser Fluch l�sst einen Geruch an dir haften, der die Gegner besonders aggressiv macht.', 5, 'a:6:{s:4:"name";s:17:"`QH�llengestank`0";s:8:"roundmsg";s:79:"`QDer verfluchte H�llengestank an dir macht deinen Gegner besonders aggressiv`0";s:7:"wearoff";s:56:"`QDas Blut deines Gegners �berdeckt den H�llengestank.`0";s:6:"rounds";s:2:"10";s:12:"badguyatkmod";s:4:"1.08";s:8:"activate";s:7:"offense";}');

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `logdnet`
#

CREATE TABLE logdnet (
  serverid int(11) unsigned NOT NULL auto_increment,
  address varchar(255) NOT NULL default '',
  description varchar(255) NOT NULL default '',
  priority double NOT NULL default '100',
  lastupdate datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (serverid)
) TYPE=MyISAM;

#
# Daten f�r Tabelle `logdnet`
#

INSERT INTO logdnet VALUES (1, '', '', '100', '2004-07-06 19:23:52');

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `mail`
#

CREATE TABLE mail (
  messageid int(11) unsigned NOT NULL auto_increment,
  msgfrom int(11) unsigned NOT NULL default '0',
  msgto int(11) unsigned NOT NULL default '0',
  subject varchar(50) NOT NULL default '',
  body text NOT NULL,
  sent datetime NOT NULL default '0000-00-00 00:00:00',
  seen tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (messageid),
  KEY msgto (msgto),
  KEY seen (seen)
) TYPE=MyISAM;

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `masters`
#

CREATE TABLE masters (
  creatureid int(11) unsigned NOT NULL auto_increment,
  creaturename varchar(50) default NULL,
  creaturelevel int(11) default NULL,
  creatureweapon varchar(50) default NULL,
  creaturelose varchar(120) default NULL,
  creaturewin varchar(120) default NULL,
  creaturegold int(11) default NULL,
  creatureexp int(11) default NULL,
  creaturehealth int(11) default NULL,
  creatureattack int(11) default NULL,
  creaturedefense int(11) default NULL,
  PRIMARY KEY  (creatureid)
) TYPE=MyISAM;

#
# Daten f�r Tabelle `masters`
#

INSERT INTO masters VALUES (1, 'Mireraband', 1, 'Dolch', 'Gut gemacht %W, ich h�tte wissen sollen, dass du etwas gewachsen bist.', 'Wie ich es mir gedacht habe, %w, dein K�nnen reicht an das meine nicht heran!', NULL, NULL, 11, 2, 2);
INSERT INTO masters VALUES (2, 'Fie', 2, 'Kurzschwert', 'Gut gemacht %W, du weisst wirklich etwas anzufangen mit %X.', 'Du h�ttest wissen m�ssen, dass du keine Chance hast gegen mein %X', NULL, NULL, 22, 4, 4);
INSERT INTO masters VALUES (3, 'Glynyc', 3, 'Riesiger nagelgespickter Streitkolben', 'Aah! Besiegt von jemandem wie dir! Als n�chstes wird mich wohl Mireraband fertigmachen.', 'Haha, vielleicht solltest du zur�ck in die Klasse von Mireraband.', NULL, NULL, 33, 6, 6);
INSERT INTO masters VALUES (4, 'Guth', 4, 'Nagelgespickte Keule', 'Ha! Hahaha, exzellenter Kampf %W!  Hab so einen Kampf schon nicht mehr erlebt, seit ich damals in der RAF war!', 'Damals in der RAF haben wir deinesgleichen lebendig gefr�hst�ckt. Geh an deinen Fertigkeiten arbeiten, alter Knabe.', NULL, NULL, 44, 8, 8);
INSERT INTO masters VALUES (5, 'Un�lith', 5, 'Gedankenkontrolle', 'Dein Geist ist st�rker als meiner. Ich gebe auf.', 'Deine mentalen Kr�fte haben noch Schw�chen. Meditiere �ber dein Versagen und du wirst mich eines Tages besiegen k�nnen!', NULL, NULL, 55, 10, 10);
INSERT INTO masters VALUES (6, 'Adwares', 6, 'Zwergische Kampfaxt', 'Ach!  Du f�hrst dein %X mit K�nnen!', 'Har! Du brauchst noch viel �bung!', NULL, NULL, 66, 12, 12);
INSERT INTO masters VALUES (7, 'Gerrard', 7, 'Kampfbogen', 'Hmm, eventunnel hab ich dich untersch�tzt.', 'Wie ich es mir gedacht habe.', NULL, NULL, 77, 14, 14);
INSERT INTO masters VALUES (8, 'Ceiloth', 8, 'Orkos Breitschwert', 'Gut gemacht %W, Ich sehe grosse Taten in deiner Zukunft liegen.', 'Du wirst zwar m�chtig, aber nicht so m�chtig bis jetzt.', NULL, NULL, 88, 16, 16);
INSERT INTO masters VALUES (9, 'Dwiredan', 9, 'Zwillingsschwerter', 'Vielleicht h�tte ich etwas nehmen sollen wie dein %X...', 'Vielleicht solltest du mal �ber ein Zwillingsschwert nachdenken, bevor du es nochmal versuchst.', NULL, NULL, 99, 18, 18);
INSERT INTO masters VALUES (10, 'Sensei Noetha', 10, 'Asiatische Kampfk�nste', 'Dein Stil war �berlegen, deine Verfassung besser. Ich verneige mich vor dir.', 'Lerne deinen Stil anzupassen und du k�nntest siegen.', NULL, NULL, 110, 20, 20);
INSERT INTO masters VALUES (11, 'Celith', 11, 'Geworfene Halos', 'Wow, wie konntest du all diese Halos austricksen?', 'Vorsicht vor diesem letzten Halo, er kommt hierher zur�ck!', NULL, NULL, 121, 22, 22);
INSERT INTO masters VALUES (12, 'Gadriel the Elven Ranger', 12, 'Elbischer Langbogen', 'Ich akzeptiere, dass du mich besiegt hast, weil Elfen unsterblich sind, du aber nicht. So ist der Sieg am Ende doch mein', 'Vergiss nicht, dass Elfen unsterblich sind. Sterbliche werden wahrscheinlich niemals einen von uns besiegen.', NULL, NULL, 132, 24, 24);
INSERT INTO masters VALUES (13, 'Adoawyr', 13, 'Gargantuan Breitschwert', 'Wenn ich dieses Schwert h�tte aufheben k�nnen, w�re ich wahrscheinlich besser gewesen.', 'Haha, ich konnte nichtmal das Schwert aufheben und hab trotzdem gewonnen!', NULL, NULL, 143, 26, 26);
INSERT INTO masters VALUES (14, 'Yoresh', 14, 'T�dliche Ber�hrung', 'Nun, du konntest meiner Ber�hrung ausweichen. Ich gratuliere dir.', 'H�te dich das n�chste Mal vor meiner Ber�hrung!', NULL, NULL, 154, 28, 28);

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `motd`
#

CREATE TABLE motd (
  motditem int(11) unsigned NOT NULL auto_increment,
  motdtitle varchar(200) default NULL,
  motdbody text,
  motddate datetime default NULL,
  motdtype tinyint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (motditem)
) TYPE=MyISAM;

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `mounts`
#

CREATE TABLE mounts (
  mountid int(11) unsigned NOT NULL auto_increment,
  mountname varchar(50) NOT NULL default '',
  mountdesc tinytext,
  mountcategory varchar(50) NOT NULL default '',
  mountbuff text,
  mountcostgems int(11) unsigned NOT NULL default '0',
  mountcostgold int(11) unsigned NOT NULL default '0',
  mountactive int(11) unsigned NOT NULL default '1',
  mountforestfights int(11) NOT NULL default '0',
  tavern tinyint(4) unsigned NOT NULL default '0',
  newday tinytext NOT NULL,
  recharge text NOT NULL,
  partrecharge text NOT NULL,
  mine_canenter int(10) unsigned NOT NULL default '0',
  mine_candie int(10) unsigned NOT NULL default '0',
  mine_cansave int(10) unsigned NOT NULL default '0',
  mine_tethermsg text NOT NULL,
  mine_deathmsg text NOT NULL,
  mine_savemsg text NOT NULL,
  PRIMARY KEY  (mountid),
  KEY mountid (mountid)
) TYPE=MyISAM;

#
# Daten f�r Tabelle `mounts`
#

INSERT INTO mounts VALUES (1, 'Pony', 'Dieses gutm�tige Wesen ist noch jung.', 'Pferde', 'a:5:{s:4:"name";s:14:"`&Pony Attacke";s:8:"roundmsg";s:25:"Dein Pony k�mpft mit dir!";s:6:"rounds";s:2:"20";s:6:"atkmod";s:3:"1.2";s:8:"activate";s:7:"offense";}', 4, 0, 1, 1, 1, 'Du steckst dein(e/n) {weapon} in die Satteltasche deines Ponys und machst dich auf ins Abenteuer!', '`&Remembering that is has been quite some time since you last fed your pony, you decide this is a perfect time to relax and allow it to graze the field a bit. You doze off enjoying this peaceful serenity.`0', '`&You dismount in the field to allow your pony to graze for a moment even though it has recently been fully fed.  As you lean back in the grass to watch the clouds, your pony whickers softly and trots off into the underbrush.  You search for a while before returning to the fields hoping that it\'ll return.  A short time later, your pony trots back into the clearing holding its head high, looking much more energized and with a very equine grin on its face.`0', 0, 0, 0, '', '', '');
INSERT INTO mounts VALUES (2, 'Wallach', 'Dieses kr�ftige Tier ist unglaublich treu.', 'Pferde', 'a:5:{s:4:"name";s:16:"`&Wallach Attack";s:8:"roundmsg";s:28:"Dein Wallach k�mpft mit dir!";s:6:"rounds";s:2:"40";s:6:"atkmod";s:3:"1.2";s:8:"activate";s:7:"offense";}', 6, 0, 1, 2, 1, 'Du schnallst dein {weapon} auf den Sattel deines Wallachs und machst dich auf ins Abenteuer!', '`&Dir f�llt ein, dass es schon einen Weile her ist, seit du deinen Wallach zuletzt gef�ttert hast. Deshalb beschliesst du, da� dies der richtige Augenblick ist, ihn hier grasen zu lassen und selbst etwas auszuspannen. Du d�st vor dich hin und genie�t die friedliche Umgebung.`0', '`&Du steigst ab und l�sst deinen Wallach grasen, obwohl er erst gef�ttert wurde. `0', 0, 0, 0, '', '', '');
INSERT INTO mounts VALUES (3, 'Hengst', 'Dieses edle Tier ist riesig und stark!', 'Pferde', 'a:5:{s:4:"name";s:16:"`&Hengst Attacke";s:8:"roundmsg";s:27:"Dein Hengst k�mpft mit dir!";s:6:"rounds";s:2:"60";s:6:"atkmod";s:3:"1.2";s:8:"activate";s:7:"offense";}', 10, 0, 1, 3, 1, 'Du steckst dein {weapon} in die Satteltasche deines Hengst und machst dich auf ins Abenteuer.', '`&Dir f�llt ein, dass es schon einen Weile her ist, seit du deinen Hengst zuletzt gef�ttert hast. Deshalb beschliesst du, da� dies der richtige Augenblick ist, ihn hier grasen zu lassen und selbst etwas auszuspannen. Du d�st vor dich hin und genie�t die friedliche Umgebung.`0', '`&Du steigst ab und l�sst deinen Hengst grasen, obwohl er erst gef�ttert wurde.  Als du dich im Gras ausruhst, um die Wolken zu beobachten, trottet dein Hengst ins Unterholz. Du suchst ihn eine Weile, bevor du aufgibst und hoffst, dass er von alleine wiederkommt. Kurze Zeit sp�ter erscheint dein Hengst wieder auf der Lichtung, mit erhobenem Kopf und einem breiten Grinsen im Gesicht. Er sieht gut erholt aus`0', 0, 0, 0, '', '', '');
INSERT INTO mounts VALUES (4, 'Hund', 'Der treuste Freund den ma f�r Geld kofen kann', 'Haustiere', 'a:10:{s:4:"name";s:6:"`&Hund";s:8:"roundmsg";s:24:"Dein Hund k�mpft mit dir";s:7:"wearoff";s:54:"Dein Hund ist ersch�pft und kann nicht weiter k�mpfen.";s:9:"effectmsg";s:20:"Dein Hund greift an!";s:14:"effectnodmgmsg";s:39:"Dein Hund greift an, trifft aber nicht.";s:13:"effectfailmsg";s:22:"Dein Hund kratzt sich.";s:6:"rounds";s:2:"25";s:15:"minbadguydamage";s:1:"0";s:15:"maxbadguydamage";s:1:"5";s:8:"activate";s:7:"offense";}', 0, 1000, 1, 0, 0, 'Dein Hund streckt sich und ist bereit f�r neue Abentuer.', 'Dein Hund konnte sich vollst�ndig erholen.', 'Dein Hund hat sich beim Herumschn�ffeln etwas erholt.', 90, 10, 90, 'Dein Hund holt Hilfe und versucht dir das Leben zu retten!', 'Leider hat die Treue zu dir deinem Hund das Leben gekostet', 'Dein Hund konnte dich befreien.');
INSERT INTO mounts VALUES (5, 'Maus', 'Ne Maus eben... tsss', 'Haustiere', 'a:7:{s:4:"name";s:9:"M�usezahn";s:7:"wearoff";s:56:"Deine Maus verkr�melt sich irgendwo in deiner R�stung...";s:9:"effectmsg";s:31:"Deine Maus zwickt deinen Gegner";s:6:"rounds";s:2:"10";s:15:"minbadguydamage";s:1:"1";s:15:"maxbadguydamage";s:1:"2";s:8:"activate";s:15:"offense,defense";}', 0, 100, 1, 0, 0, 'Du setzt dir deine Maus auf die Schulter und ziehst los.', 'Deine Maus hat sich v�llig erholt.', 'Deine MAus konnte ein bisschen regenerieren.', 100, 100, 0, '', 'Deine Maus wurde nie wieder gesehen.', '');
INSERT INTO mounts VALUES (6, 'Schwarzer Drachen', 'Ui, ganz frisch gefangen und hochgef�hrlich! Nich ganz billig. Riskiere jedesmal mein Leben daf�r.', 'Kreaturen', 'a:12:{s:4:"name";s:7:"Drachen";s:8:"roundmsg";s:23:"Dein Drachen greift an!";s:7:"wearoff";s:31:"Dein Drachen zieht sich zur�ck.";s:9:"effectmsg";s:50:"Dein Drachen wirbelt deinen Gegner durch die Luft.";s:13:"effectfailmsg";s:36:"Dein Drachen verfehlt deinen Gegner.";s:6:"rounds";s:3:"250";s:6:"atkmod";s:3:"1.1";s:6:"defmod";s:3:"1.1";s:15:"minbadguydamage";s:1:"1";s:15:"maxbadguydamage";s:2:"15";s:12:"badguydmgmod";s:3:"0.9";s:8:"activate";s:7:"offense";}', 50, 200, 1, 3, 0, 'Dein schwarzer Drachen weckt dich fr�h ... begierig auf frisches Monsterfleisch.', 'Dein schwarzer Drachen setzt sich auf einen gro�en Baum am Rande der Lichtung und steckt den Kopf zwischen die Fl�gel. Nach seinem Nickerchen ist er v�llig erholt.', 'Dein schwarzer Drachen setzt sich auf einen gro�en Baum am Rande der Lichtung und steckt den Kopf zwischen die Fl�gel. Sein lautes Schnarchen verscheucht sicher alle Monster in der Gegend. Naja, wenigstens konnte ER regenerieren.', 0, 0, 0, 'Dein Drachen setzt sich auf den Mineneingang und wartet.', 'Dein Drachen l�sst sich davon nicht beeindrucken und fliegt in die Freiheit.', 'Dein Drachen l�sst sich davon nicht beeindrucken und fliegt in die Freiheit.');
INSERT INTO mounts VALUES (7, 'Schachtel Fl�he', 'Die heb ich selbst von meinen Kreaturen gepfl�ckt. Nervige kleene Biester.', 'Kreaturen', 'a:7:{s:4:"name";s:5:"Fl�he";s:8:"roundmsg";s:86:"Deine Fl�he lenken deinen Gegner ab und senken seinen Angriffs- und Verteidigungswert.";s:7:"wearoff";s:52:"Die Fl�he fallen ersch�pft in ihre Schachtel zur�ck.";s:6:"rounds";s:2:"25";s:12:"badguyatkmod";s:3:"0.9";s:12:"badguydefmod";s:3:"0.9";s:8:"activate";s:18:"roundstart,offense";}', 1, 500, 1, 0, 0, 'Dir muss ein Floh entwischt sein. Ein Zwicken weckt dich fr�her als sonst.', '', '', 100, 100, 0, '', '', '');
INSERT INTO mounts VALUES (8, 'Einhorn', 'Ein Prachtexemplar! Man kann auf ihm reiten und sein Horn hat heilende Wirkung. War nicht leicht zu z�hmen!', 'Pferde', 'a:7:{s:4:"name";s:19:"Schutz des Einhorns";s:7:"wearoff";s:41:"Dein Einhorn zieht sich ersch�pft zur�ck.";s:9:"effectmsg";s:109:"`#Dein Einhorn ber�hrt dich mit seinem Horn und �bertr�gt einen Teil der Lebenskraft deines Gegners auf dich.";s:14:"effectnodmgmsg";s:21:"Du bist v�llig gesund";s:6:"rounds";s:3:"160";s:7:"lifetap";s:3:"0.9";s:8:"activate";s:7:"defense";}', 50, 200, 1, 3, 1, 'Dein Einhorn piekst dich mit seinem Horn und gibt dir frische Energie f�r den Tag.', 'Dein Einhorn stellt sich in den Schatten eines Baumes und grast. Du bemerkst, wie es weisslich schimmert, w�hrend es vollst�ndig regeneriert.', 'Dein Einhorn verschwindet f�r eine Weile im Wald und kommt gut erholt zur�ck.', 100, 0, 100, '', '', 'Dein Einhorn rettet dich!');
INSERT INTO mounts VALUES (9, 'Phoenix', 'Also ich werd nicht schlau aus dem Vieh.', 'Kreaturen', 'a:12:{s:4:"name";s:7:"Phoenix";s:7:"wearoff";s:84:"Dein Phoenix scheint durch irgendwas im Wald abgelenkt zu werden und flattert davon.";s:9:"effectmsg";s:44:"Dein Phoenix flattert wirr um deinen Gegner.";s:14:"effectnodmgmsg";s:39:"Dein Phoenix spielt mit einem Grashalm.";s:13:"effectfailmsg";s:60:"Nur knapp entkommt dein Phoenix einem Schlag deines Gegners.";s:6:"rounds";s:2:"45";s:5:"regen";s:1:"1";s:11:"minioncount";s:1:"1";s:15:"minbadguydamage";s:1:"1";s:15:"maxbadguydamage";s:2:"10";s:7:"lifetap";s:3:"1.1";s:8:"activate";s:15:"offense,defense";}', 25, 8000, 1, -1, 0, 'Dein Phoenix hat dich die ganze Nacht kaum Schlafen lassen. V�llig fertig hast du heute einen Waldkampf weniger.', 'Dein Phoenix hat sich pr�chtig am�siert und regeneriert vollst�ndig.', 'Dein Phoenix am�siert am�siert sich gut und regeneriert etwas.', 0, 0, 0, '', '', '');

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `nastywords`
#

CREATE TABLE nastywords (
  words longtext
) TYPE=MyISAM;

#
# Daten f�r Tabelle `nastywords`
#

INSERT INTO nastywords VALUES ('*.de.vu *hitler *nigger* *phuck* *shit* amcik andskota arsch* arschloch arse* asshole atouche ayir bastard bitch* boiolas bollock* buceta butt-pirate cabron cawk cazzo chraa chuj cipa clit cock* cunt* dago daygo dego dike dirsa dupa dziwka ejackulate ejaculate ekrem* ekto enculer faen fanculo fanny fatass feces felcher ficken fitta fitte flikker foreskin fuck fuk* futkretzn fuxor gook guiena helvete hoer* honkey honky hore http:* http://* http://*.*.* http://*.*.*.* huevon hui hure injun jism jizz kanker* kawk kike klootzak knulle kuksuger kurac kurwa kusi* kyrp�* leitch lesbian lesbo mamhoon masturbat* merd merde mibun monkleigh motherfucker mouliewop muie mulkku muschi nazis nepesaurio nigga* nigger nutsack orospu paska* pendejo penis perse phuck phuck picka pierdol* pillu* pimmel pimpis piss* pizda poontsee poop porn preteen preud prick pron pula pule pusse pussy puta puto qahbeh queef* queer* qweef rautenberg schaffer scheiss* scheisse schei�* schei�e schlampe schmuck screw scrotum sharmuta sharmute shemale shipal shiz shpincter skribz skurwysyn slut smut sphencter spic spierdalaj splooge suka teets teez testicle tits titties titty twat twaty vittu votze wank* wetback* whoar whore wichser woose wop www.* www.*.* www.*.*.* yed zabourah');

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `news`
#

CREATE TABLE news (
  newsid int(11) unsigned NOT NULL auto_increment,
  newstext text NOT NULL,
  newsdate date NOT NULL default '0000-00-00',
  accountid int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (newsid,newsdate),
  KEY accountid (accountid)
) TYPE=MyISAM;

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `petitionmail`
#

CREATE TABLE petitionmail (
  petitionid int(11) NOT NULL default '0',
  messageid int(11) NOT NULL default '0',
  msgfrom int(11) NOT NULL default '0',
  msgto int(11) NOT NULL default '0',
  subject text NOT NULL,
  body text NOT NULL,
  sent datetime NOT NULL default '0000-00-00 00:00:00',
  seen int(1) NOT NULL default '0'
) TYPE=MyISAM;


# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `petitions`
#

CREATE TABLE petitions (
  petitionid int(11) unsigned NOT NULL auto_increment,
  author int(11) unsigned NOT NULL default '0',
  date datetime NOT NULL default '0000-00-00 00:00:00',
  status int(11) unsigned NOT NULL default '0',
  body text,
  pageinfo text,
  lastact datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (petitionid)
) TYPE=MyISAM;

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `pollresults`
#

CREATE TABLE pollresults (
  resultid int(11) unsigned NOT NULL auto_increment,
  choice int(11) unsigned NOT NULL default '0',
  account int(11) unsigned NOT NULL default '0',
  motditem int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (resultid)
) TYPE=MyISAM;

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `pvp`
#

CREATE TABLE pvp (
  acctid1 int(11) NOT NULL default '0',
  acctid2 int(11) NOT NULL default '0',
  name1 varchar(50) NOT NULL default '',
  name2 varchar(50) NOT NULL default '',
  lvl1 int(11) NOT NULL default '0',
  lvl2 int(11) NOT NULL default '0',
  hp1 int(11) NOT NULL default '1',
  hp2 int(11) NOT NULL default '1',
  maxhp1 int(11) NOT NULL default '1',
  maxhp2 int(11) NOT NULL default '1',
  att1 int(11) NOT NULL default '1',
  att2 int(11) NOT NULL default '1',
  def1 int(11) NOT NULL default '1',
  def2 int(11) NOT NULL default '1',
  weapon1 varchar(50) NOT NULL default '',
  weapon2 varchar(50) NOT NULL default '',
  armor1 varchar(50) NOT NULL default '',
  armor2 varchar(50) NOT NULL default '',
  darkartuses1 int(5) unsigned NOT NULL default '0',
  darkartuses2 int(5) unsigned NOT NULL default '0',
  magicuses1 int(5) unsigned NOT NULL default '0',
  magicuses2 int(5) unsigned NOT NULL default '0',
  thieveryuses1 int(5) unsigned NOT NULL default '0',
  thieveryuses2 int(5) unsigned NOT NULL default '0',
  bufflist1 text NOT NULL,
  bufflist2 text NOT NULL,
  turn tinyint(1) NOT NULL default '2',
  lastmsg text,
  KEY acctid1 (acctid1,acctid2)
) TYPE=MyISAM;

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `referers`
#

CREATE TABLE referers (
  refererid int(11) unsigned NOT NULL auto_increment,
  uri text,
  count int(11) default NULL,
  last datetime default NULL,
  site varchar(50) NOT NULL default '',
  PRIMARY KEY  (refererid)
) TYPE=MyISAM;

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `riddles`
#

CREATE TABLE riddles (
  id int(11) NOT NULL auto_increment,
  riddle mediumtext NOT NULL,
  answer tinytext NOT NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

#
# Daten f�r Tabelle `riddles`
#

INSERT INTO riddles VALUES (1, 'Vor mir f�hrt die Polizei, `nHinter mir ne Kutsche. `nRechts von mir ein Flugzeug, `nLinks von mir die Eisenbahn.`nWO BIN ICH?', 'Karusell');
INSERT INTO riddles VALUES (2, 'Welcher Igel,`n Eins, zwei, drei,`n Legt ein Mahagohni-Ei?', 'Kastanie');
INSERT INTO riddles VALUES (3, 'Was liegt auf dem Rasen,`n und hat 44 Nasen?', 'Rechen');
INSERT INTO riddles VALUES (4, 'Vorne wie ein Kamm,`n Mitten wie ein Lamm,`n Hinten wie ne Sichel,`n nun rat, mein lieber Michel.', 'Kamel');
INSERT INTO riddles VALUES (5, 'Eines faulen Vaters Kind,`n und doch schneller als der Wind.', 'Licht');
INSERT INTO riddles VALUES (6, 'Was ich lebend steche tot,`n dem helf ich tot aus Todesnot.', 'Biene');
INSERT INTO riddles VALUES (7, 'Ri Ra Ripfel `n gelb ist der Zipfel, `n schwarz ist das Loch,`n wo man den Riraripfel drin kocht.', 'Erd�pfel');
INSERT INTO riddles VALUES (8, 'Am Anfang bin ich das Gegenteil von Land,`n in der Mitte die heilige Schrift,`n danach eine Geliebte des Zeus`n und am Ende auch noch das Lied`n das den sch�nsten Platz f�r Biertrinker bezeichnet.`n Alles in allem bin ich eine sehr respektable Bildungs- und Unterhaltungseinrichtung.', 'Stadtbibliothek');
INSERT INTO riddles VALUES (9, 'Mit den Augen kann man ihn sehen,`n aber nicht mit den H�nden greifen.', 'Schatten');
INSERT INTO riddles VALUES (10, 'Dort h�ngt es an der Wand,`n Das gibt mir jeden Morgen die Hand.', 'Handtuch');
INSERT INTO riddles VALUES (11, 'Solange ich bei meinem Herrn bleibe,`n helfe ich ihm nichts.`n Aber sobald er mich weggibt,`n da helfe ich ihm.', 'Geld');
INSERT INTO riddles VALUES (12, 'Was sieht aus wie eine Katze,`n miaut wie eine Katze,`n aber ist keine Katze?', 'Kater');
INSERT INTO riddles VALUES (13, 'Ein Tal voll und ein Land voll,`n Und am End ists keine Handvoll.', 'Nebel');
INSERT INTO riddles VALUES (14, 'Wer es macht, der sagt es nicht,`n Wer es nimmt, der kennt es nicht,`n Wer es kennt, der nimmt es nicht.', 'Falschgeld');
INSERT INTO riddles VALUES (15, 'Er geht durch alle Gassen,`n klopft an T�ren und Fenster`n und wird doch von niemand gesehen.', 'Wind');
INSERT INTO riddles VALUES (16, 'Wer besiegt selbst den st�rksten Mann?', 'Schlaf');
INSERT INTO riddles VALUES (17, 'Es kann sprechen und auch stechen,`n ist zugleich ein Vogel und ein Gebrechen.', 'Star');
INSERT INTO riddles VALUES (18, 'Was will ein jeder werden,`n was will doch keiner sein?', 'alt');
INSERT INTO riddles VALUES (19, 'Verfertigt ists vor langer Zeit,`n doch mehrenteils gemacht erst heut;`n sehr sch�tzbar ist es seinem Herrn,`n und dennoch h�tets niemand gern.', 'Bett');
INSERT INTO riddles VALUES (20, 'Der es macht, der will es nicht;`n der es tr�gt, beh�lt es nicht;`n der es kauft, der braucht es nicht;`n der es hat, der wei� es nicht.', 'Sarg');
INSERT INTO riddles VALUES (21, 'Es ist kein Haus,`n doch baut man es,`n man i�t es nicht,`n doch kaut man es,`n wenn mans nicht kaut,`n verbrennt man es.`n Ihr kennt es; sagt:`n Wie nennt man es?', 'Tabak');
INSERT INTO riddles VALUES (22, 'Immer ist es nah,`n niemals ist es da.`n Wenn Du denkst, Du seist daran,`n nimmt es andern Namen an.', 'morgen');
INSERT INTO riddles VALUES (23, 'Was ist nackter als nackt,`n so nackt, da� es knackt?', 'Skelett');
INSERT INTO riddles VALUES (24, 'Rat, wenn du kannst !`n Es nennen einen Wanst`n f�nf Zeichen dir,`n und auch die letzten vier.', 'Bauch');
INSERT INTO riddles VALUES (25, 'Ich habe Fl�gel, rate Kind,`n Doch flieg ich nur im Kreise,`n Und singen tu ich, wenn der Wind`n Mir vorpfeift, laut und leise;`n Was ihr den Feldern abgewinnt,`n Kau ich auf meine Weise,`n Doch - was mir durch die Kehle rinnt,`n Das mundet euch als Speise.', 'Windm�hle');
INSERT INTO riddles VALUES (26, 'Du brichst es,`n sobald du es nennst.', 'Stille');
INSERT INTO riddles VALUES (27, 'Mein Erstes, das ist nicht die Sonne.`n Mein Zweites bringt Wahres nicht ans Licht.`n Drum geb ich oft nur tr�gerische Wonne`n Und stets ein ungewisses Licht.', 'Mondschein');
INSERT INTO riddles VALUES (28, 'Ich helfe Kisten laden,`n doch mach ich auch Charaden.', 'Hebel');
INSERT INTO riddles VALUES (29, 'Ich kenn ein warmes Haus,`n es hat drei T�ren f�r rein und raus.`n Geht man morgens rein ins Haus,`n schauen unten F��e raus.`n Abends geht man wieder raus.`n Sag mir doch, wie hei�t dies Haus?', 'Hose');
INSERT INTO riddles VALUES (30, 'Ich habe nur ein Angesicht.`n Es wird erhellt von fremdem Licht.`n Erhellts mich nicht,`n das fremde Licht,`n sieht man mich nicht.', 'Mond');
INSERT INTO riddles VALUES (31, 'Wenn du vorw�rts mich beherrscht,`n darfst du fr�hlich lachen;`n r�ckw�rts kann dir alles sein,`n was die Gegner machen.', 'Lage; egal');
INSERT INTO riddles VALUES (32, 'Bin der Nachbar von Sonne und Sterne,`n regle das Wasser und tu dies sehr gerne.`n Bist Du verliebt, denkst Du m��test verschmachten,`n Wirst Du die ganze Nacht mich betrachten.', 'Mond');
INSERT INTO riddles VALUES (33, 'Was sitzt still in einer Ecke,`n und reist doch um die ganze Welt?', 'Briefmarke');
INSERT INTO riddles VALUES (34, 'Was ist fertig und wird doch t�glich neu gemacht?', 'Bett');
INSERT INTO riddles VALUES (35, 'Loch an Loch und h�lt doch!', 'Netz; Kette');
INSERT INTO riddles VALUES (36, 'Es tuts der Mond, die Sonne`n das Herz, das Eis, der Teig,`n die T�r, die Naht, die Blume,`n die Saat, die Knosp am Zweig.', 'aufgehen');
INSERT INTO riddles VALUES (37, 'Getrennt mir heilig -`n vereint abscheulich.', 'Meineid');
INSERT INTO riddles VALUES (38, 'Alle Tage geh ich aus,`n bleibe dennoch stets zu Haus.', 'Schnecke');
INSERT INTO riddles VALUES (39, 'Vier St�mperli, vier Pl�mperli,`n zwei Stuferli zwei Horcherli`n zwei Gugguggerli, ein Heurupferli,`n ein Grasmuffeli und ein Fliegenw�deli.', 'Kuh');
INSERT INTO riddles VALUES (40, 'Ich habe keine F��e`n und geh doch auf und ab`n und bei� mich immer tiefer ein,`n bis ich mich durchgebissen hab.', 'S�ge');
INSERT INTO riddles VALUES (41, 'Es hat keine Fl�gel und fliegt doch`n es hat keinen Schnabel und bei�t doch.', 'Wind');
INSERT INTO riddles VALUES (42, 'Wenn man es braucht,`n wirft man es weg,`n wenn man es nicht braucht,`n holt man es wieder zur�ck.', 'Anker');
INSERT INTO riddles VALUES (43, 'Kennst du mich`n so freut es dich;`n kennst du mich nicht`n so suche mich nur emsiglich:`n Du findest mich`n ganz sicherlich.', 'L�sung; Ergebnis');
INSERT INTO riddles VALUES (44, 'Man sieht es in der Mitte der Nacht,`n man tr�umt nicht davon,`n dennoch sieht man es im Schlaf.`n Am Tag kommt man ganz ohne es aus.', 'C; c');
INSERT INTO riddles VALUES (45, 'Nicht nur am Tag, nein, auch in finstrer Nacht,`n kann ohne Licht man meilenweit mich sehen.`n Doch wehe dem, dem ich zu nahe komm!`n Im Augenblick ist es um ihn geschehen.', 'Blitz');
INSERT INTO riddles VALUES (46, 'Vorw�rts Trauer �ber Trauer,`n r�ckw�rts Gl�ck, doch ohne Dauer.', 'Sieg; Geist');
INSERT INTO riddles VALUES (47, 'Ich bin ein Gewinn`n bei Whist und Skat;`n und, l��t man dich drin,`n so schreist du: Verrat!', 'Stich');
INSERT INTO riddles VALUES (48, 'Im H�uschen mit f�nf St�bchen,`n da wohnen braune B�bchen.`n Nicht Tor noch T�r f�hrn ein und aus ,`n wer sie besucht, der i�t das Haus.`n Wo haben die B�bchen ihre f�nf St�bchen?', 'Apfel');
INSERT INTO riddles VALUES (49, 'Auf was ich vorw�rts ihm mein Geld gegeben,`n ward r�ckw�rts mir der Freund, da ich es wollt erheben.', 'Bank; Knab');
INSERT INTO riddles VALUES (50, 'Es bringt den Reiter um sein Ro�,`nDen Edelmann um sein Schlo�;`n Den Bauern um seinen Ackerpflug:`n Wer das err�t, der ist wohl klug.', 'W�rfelspiel');
INSERT INTO riddles VALUES (51, 'Es hat zwar Fl�gel und kann nicht fliegen,`n hat einen R�cken und kann nicht liegen,`n es kann wohl laufen, aber nicht gehen.', 'Nase');
INSERT INTO riddles VALUES (52, 'Wer es tut mit "aus", der will verzichten,`n tust du es mit "ab", verweigerst du,`n tust du es mit "ein", so sagst du zu.`n Wer es tut mit "zer", der will vernichten,`n wer es tut mit "nach", will sich belehren,`n wer es tut mit "vor", den mu� man h�ren,`n wer es tut mit "�ber", der ist fl�chtig,`n wer es tut mit "be", der gilt als t�chtig.', 'schlagen');
INSERT INTO riddles VALUES (53, 'Die Erste ist das in trocknem Zustande,`n Was frisch als die andre w�chst in dem Lande.`n Weh! wem das Ganze nur steht zu Gebot,`n Sich dran zu halten, kommt er in Not.', 'Strohhalm');
INSERT INTO riddles VALUES (54, 'R�tst du mich recht,`n so hast du falsch geraten;`n und r�tst du falsch,`n so hast du recht geraten.', 'falsch');
INSERT INTO riddles VALUES (55, 'Die Ersten sind ein Untertan,`n Die Letzte ist ein Untertan,`n Das Ganze ist ein Untertan,`n Der von dem letzten Untertan`n Wird unter den ersten Untertan`n Ganz untert�nigst getan.', 'Stiefelknecht');
INSERT INTO riddles VALUES (56, 'Es ist heiliger als Gottes Sohn`n und verwerflicher als Satan selbst.`n Die Toten essen es jeden Tag,`n doch essen es die Lebenden,`n so sterben sie langsam.', 'Nichts');
INSERT INTO riddles VALUES (57, 'Wenn man mich sieht, so sieht man mich nicht.`n Sieht man mich nicht, so sieht man mich.', 'Finsterniss; Dunkelheit');
INSERT INTO riddles VALUES (58, 'Mein Rock ist wei� wie Schnee`n und schwarz wie Kohlen.`n Was gl�nzt, das mu� ich mir holen.', 'Elster');
INSERT INTO riddles VALUES (59, 'Sie schwitzt nicht bei den gr��ten Hitzen,`n noch, wenn es drau�en st�rmt und schneit,`n dann sieht man sie zuweilen schwitzen.', 'Fensterscheibe; Fenster; Glasscheibe');
INSERT INTO riddles VALUES (60, 'Vers bin ich zur H�lfte,`n zur H�lfte nur Tand,`n err�tst du mein Ganzes,`n so hast Du Verstand.', 'Verstand');
INSERT INTO riddles VALUES (61, 'Himmlische Tugend,`n scheu�licher Mord,`n Fehler im Kartenspiel -`n alles ein Wort.', 'vergeben');
INSERT INTO riddles VALUES (62, 'Zu K�ln in der Dome`n,Steht eine gelbe Blume;`n Je l�nger sie steht`n Je mehr sie vergeht.', 'Kerze');
INSERT INTO riddles VALUES (63, 'Ich habe keinen Schneider`n und hab doch sieben Kleider.`n Wer mir sie auszieht,`n der mu� weinen,`n und sollt er noch so lustig scheinen.', 'Zwiebel');
INSERT INTO riddles VALUES (64, 'Die Erste zu halten ist oft schwer,`n Die andre ist Sache des Gl�cks gar sehr,`n Das Ganze ist nur ein schwarzer Zwerg`n Und hebt ganz leicht doch einen Berg.', 'Maulwurf');
INSERT INTO riddles VALUES (65, 'Ein einziges Mal nur bed�rfen wir seiner,`n doch selber entlohnt hat ihn noch keiner.', 'Totengr�ber');
INSERT INTO riddles VALUES (66, 'Am ERSTEN ist es meist sehr kalt,`n das ZWEITE ist als Ma� schon alt.`n Das GANZE ist oft eine Zier,`n doch in Gebrauch viel lieber mir.', 'Polster');
INSERT INTO riddles VALUES (67, 'Er ist ber�hmt,`n verdient viel Geld`n - ob Mann ob Frau -`n in der ganzen Welt.', 'Star');
INSERT INTO riddles VALUES (68, 'Zwei L�cher hab ich,`n zwei Finger brauch ich.`n So mach ich Langes und Gro�es klein`n und trenne, was nicht beisammen soll sein.', 'Schere');
INSERT INTO riddles VALUES (69, 'Steh ich davor, dann bin ich drin.`n Bin ich drin dann steh ich davor.', 'Spiegel');
INSERT INTO riddles VALUES (70, 'Etwas, das alles und jeden verschlingt:`n Baum, der rauscht, Vogel, der singt,`n fri�t Eisen, zermalmt den h�rtesten Stein,`n zerbei�t jedes Schwert, zerbricht jeden Schrein,`n Schl�gt K�nige nieder, schleift ihren Palast,`n tr�gt m�chtigen Fels fort als leichte Last.', 'Zeit');
INSERT INTO riddles VALUES (71, 'Die Sprache kann es nicht entbehren,`n die Zeitung bringt es jeden Tag,`n der Kaufmann brauchts, will er sich n�hren,`n und selten fehlt es im Vertrag.', 'Artikel');
INSERT INTO riddles VALUES (72, 'Ich habe ein Loch und mach ein Loch`n und schl�pfe auch durch dieses noch.`n Kaum bin ich durch, stopf ichs im Nu`n mit meiner langen Schleppe zu.', 'Nadel');
INSERT INTO riddles VALUES (73, 'Ich hab ein eigenes Schlo�,`n doch ist das ziemlich klein.`n Es pa�t kein Gast, kein Hausgeno�`n zugleich mit mir hinein.', 'Schl�ssel');
INSERT INTO riddles VALUES (74, 'Der Schrein ohne Deckel, Schl�ssel, Scharnier,`n birgt einen goldenen Schatz, glaub es mir.', 'Ei');
INSERT INTO riddles VALUES (75, 'Er sah ein Weib, so sch�n wie keines noch auf Erden,`n gleich einem Wort mit "�". Sie mu� die Seine werden!`n Und bald auch konnt - o Gl�ck! - er Wort mit "a" sie nennen.`n Da freilich lernt er sie von andrer Seite kennen.', 'G�ttin; Gattin');
INSERT INTO riddles VALUES (76, 'Bei den S�ngern guter Art`n r�hmt man meine Milde.`n W�r\' ich in der Mitte hart,`n braus ich durchs Gefilde.', 'Organ; Orkan');
INSERT INTO riddles VALUES (77, 'Der Peter ist mit lautem Knallen,`n heut auf das R�tselwort gefallen.`n Zur Mutter humpelt er mit Weinen`n die gibt das R�tselwort dem Kleinen.', 'Pflaster');
INSERT INTO riddles VALUES (78, 'Ich bin die gr��te Stra�e`n zwischen Himmel und Erde.`n Kein Mensch ist hier gegangen,`n kein Wagen je gefahren.`n Und doch herrscht hier zwischen`n Erde und Himmel`n ein gro�es Gewimmel.', 'Milchstrasse; Milchstra�e');
INSERT INTO riddles VALUES (79, 'Es geht und geht schon immerfort`n und kommt doch keinen Schritt vom Ort.', 'Uhr');
INSERT INTO riddles VALUES (80, 'Wer ist im Wald der kleine Mann,`n der nur auf einem Bein stehen kann?`n Hat einen gro�en bunten Hut,`n ist einmal giftig, einmal gut.', 'Pilz');
INSERT INTO riddles VALUES (81, 'Kommt zum Fl�chenma� des Helden Tugend,`n dann dr�ckt sie! Sie ist schwere Last,`n verd�stert manches Menschen Jugend`n und ist nicht reicher Leute Gast!', 'Armut');
INSERT INTO riddles VALUES (82, 'Bin ich Wasser, bin ich Luft,`n Bin ich Geist, bin ich Duft? --`n Etwas von dem allen;`n Fahr hinaus mit Gebraus,`n Und zu Saus und zu Braus`n La� ichs auch noch knallen.', 'Champagner');
INSERT INTO riddles VALUES (83, 'Hab keinen Hals,`n auch keinen Kopf`n nicht Arm, noch Bein,`n ich armer Tropf.`n Mal bin ich voll,`n mal bin ich leer.`n Doch immer wiegt`n mein Holz sehr schwer.', 'Fass; Fa�');
INSERT INTO riddles VALUES (84, 'Es schwebt daher ganz kugelrund,`n durchscheinend, leicht und herrlich bunt.`n Entstanden ists durch einen Hauch -`n lang lebt es nicht, bald platzt sein Bauch.', 'Seifenblase');
INSERT INTO riddles VALUES (85, 'Ihr lieben Leute,`n hab sieben H�ute.`n Ich schone keinen,`n bring jeden zum Weinen.', 'Zwiebel');
INSERT INTO riddles VALUES (86, 'Das erste w�chst an deinem Kopf,`n das zweite im Land der Zypressen.`n Das Ganze trifft dich unverhofft,`n hast du was ausgefressen.', 'Ohrfeige');
INSERT INTO riddles VALUES (87, 'Was V�gel tun, das sind gewisse Tiere,`n die nicht zwei Beine haben und nicht viere.', 'Fliegen');
INSERT INTO riddles VALUES (88, 'Je l�nger es bereits dauert,`n umso k�rzer wird es.', 'Leben');
INSERT INTO riddles VALUES (89, 'Das Erste gibts f�r jedes Ding,`n das Zweite ist ein Wortgebilde;`n wer sich nicht an das Ganze halten kann,`n wird auch Opportunist genannt.', 'Grundsatz');
INSERT INTO riddles VALUES (90, 'Was ist das f�r ein Fu�,`n der immer zittern mu�?', 'Hasenfu�');
INSERT INTO riddles VALUES (91, 'Er hat einen Kamm und k�mmt sich nicht,`n Er hat Sporen und ist kein Ritter,`n Er hat eine Sichel und ist kein Schnitter.', 'Hahn');

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `settings`
#

CREATE TABLE settings (
  setting varchar(20) NOT NULL default '',
  value varchar(255) NOT NULL default '',
  PRIMARY KEY  (setting)
) TYPE=MyISAM;

#
# Daten f�r Tabelle `settings`
#

INSERT INTO settings VALUES ('defaultlanguage', 'de');
INSERT INTO settings VALUES ('LOGINTIMEOUT', '900');
INSERT INTO settings VALUES ('expireoldacct', '100');
INSERT INTO settings VALUES ('expirenewacct', '14');
INSERT INTO settings VALUES ('expiretrashacct', '3');
INSERT INTO settings VALUES ('daysperday', '4');
INSERT INTO settings VALUES ('loginbanner', 'Willkommen!`nHier l�uft LoGD 0.9.7+jt ext (GER) 3');
INSERT INTO settings VALUES ('beta', '0');
INSERT INTO settings VALUES ('superuser', '0');
INSERT INTO settings VALUES ('logdnetserver', 'http://lotgd.net/');
INSERT INTO settings VALUES ('soap', '1');
INSERT INTO settings VALUES ('expirecontent', '60');
INSERT INTO settings VALUES ('turns', '15');
INSERT INTO settings VALUES ('maxinterest', '10');
INSERT INTO settings VALUES ('mininterest', '1');
INSERT INTO settings VALUES ('pvpday', '2');
INSERT INTO settings VALUES ('fightsforinterest', '5');
INSERT INTO settings VALUES ('specialtybonus', '1');
INSERT INTO settings VALUES ('gravefightsperday', '10');
INSERT INTO settings VALUES ('automaster', '1');
INSERT INTO settings VALUES ('pvp', '1');
INSERT INTO settings VALUES ('newplayerstartgold', '100');
INSERT INTO settings VALUES ('gameadminemail', 'mail@localhost');
INSERT INTO settings VALUES ('requireemail', '0');
INSERT INTO settings VALUES ('requirevalidemail', '0');
INSERT INTO settings VALUES ('blockdupeemail', '0');
INSERT INTO settings VALUES ('maxcolors', '10');
INSERT INTO settings VALUES ('dropmingold', '1');
INSERT INTO settings VALUES ('lowslumlevel', '5');
INSERT INTO settings VALUES ('borrowperlevel', '100');
INSERT INTO settings VALUES ('allowgoldtransfer', '1');
INSERT INTO settings VALUES ('transferperlevel', '100');
INSERT INTO settings VALUES ('mintransferlev', '2');
INSERT INTO settings VALUES ('transferreceive', '4');
INSERT INTO settings VALUES ('mailsizelimit', '2048');
INSERT INTO settings VALUES ('inboxlimit', '25');
INSERT INTO settings VALUES ('gameoffsetseconds', '14400');
INSERT INTO settings VALUES ('logdnet', '0');
INSERT INTO settings VALUES ('serverurl', '');
INSERT INTO settings VALUES ('serverdesc', 'Ein deutscher LoGD-Server');
INSERT INTO settings VALUES ('oldmail', '14');
INSERT INTO settings VALUES ('pvptimeout', '600');
INSERT INTO settings VALUES ('multimaster', '1');
INSERT INTO settings VALUES ('creaturebalance', '0.33');
INSERT INTO settings VALUES ('maxtransferout', '400');
INSERT INTO settings VALUES ('innfee', '10%');
INSERT INTO settings VALUES ('spaceinname', '0');
INSERT INTO settings VALUES ('selfdelete', '1');
INSERT INTO settings VALUES ('bountymin', '50');
INSERT INTO settings VALUES ('bountymax', '500');
INSERT INTO settings VALUES ('bountylevel', '3');
INSERT INTO settings VALUES ('bountyfee', '10');
INSERT INTO settings VALUES ('maxbounties', '1');
INSERT INTO settings VALUES ('pvpimmunity', '3');
INSERT INTO settings VALUES ('pvpminexp', '150');
INSERT INTO settings VALUES ('pvpattgain', '5');
INSERT INTO settings VALUES ('pvpattlose', '10');
INSERT INTO settings VALUES ('pvpdefgain', '5');
INSERT INTO settings VALUES ('pvpdeflose', '5');
INSERT INTO settings VALUES ('lastdboptimize', '');
INSERT INTO settings VALUES ('selledgems', '0');
INSERT INTO settings VALUES ('maxonline', '0');
INSERT INTO settings VALUES ('paidales', '1');
INSERT INTO settings VALUES ('avatare', '0');
INSERT INTO settings VALUES ('hasegg', '0');
INSERT INTO settings VALUES ('jackpot', '123');
INSERT INTO settings VALUES ('lottonumber', '123');
INSERT INTO settings VALUES ('forum', '');
INSERT INTO settings VALUES ('limithp', '5');
INSERT INTO settings VALUES ('newplayer', '');
INSERT INTO settings VALUES ('maxales', '30');
INSERT INTO settings VALUES ('autofight', '1');
INSERT INTO settings VALUES ('maxinbank', '10000');
INSERT INTO settings VALUES ('witchvisits', '3');
INSERT INTO settings VALUES ('pvpmindkxploss', '4');
INSERT INTO settings VALUES ('pvpmaxdkxploss', '24');
INSERT INTO settings VALUES ('newdragonkill', '');
INSERT INTO settings VALUES ('tempelgold', '100');
INSERT INTO settings VALUES ('bushesgold', '0');
INSERT INTO settings VALUES ('impressum', '');
INSERT INTO settings VALUES ('newdaysemaphore', '');
INSERT INTO settings VALUES ('weather', 'Kein Wetter');
INSERT INTO settings VALUES ('vendor', '0');
INSERT INTO settings VALUES ('dailyspecial', 'Waldsee');
INSERT INTO settings VALUES ('activategamedate', '1');
INSERT INTO settings VALUES ('gametimeformat', 'g:i a');
INSERT INTO settings VALUES ('gamedateformat', '%j.%n.%Y');
INSERT INTO settings VALUES ('gamedate', '0000-01-01');
INSERT INTO settings VALUES ('paidgold', '0');
INSERT INTO settings VALUES ('dispnextday', '0');

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `taunts`
#

CREATE TABLE taunts (
  tauntid int(11) unsigned NOT NULL auto_increment,
  taunt text,
  editor varchar(50) default NULL,
  PRIMARY KEY  (tauntid)
) TYPE=MyISAM;

#
# Daten f�r Tabelle `taunts`
#

INSERT INTO taunts VALUES (23, '`5"`6Warte nur auf meine Rache, `4%W`6. Sie wird schnell �ber dich kommen!`5" br�llt %w .', 'anpera');
INSERT INTO taunts VALUES (24, '`5"`6Ich werde viel Spass mit `4%x`6 von %w`6 haben!`5", freut sich %W.', 'anpera');
INSERT INTO taunts VALUES (25, '`5"`6Aah, also `bdaf�r`b ist so ein `4%X`6 gut!`5" ruft %W', 'anpera');
INSERT INTO taunts VALUES (26, '`5"`6Oh mann!  Das h�tte ich dir nicht zugetraut, `5%W`6,`5" sagt %w.', 'Bluspring');
INSERT INTO taunts VALUES (27, '`5%W wurde belauscht, als er "`4%x`6 war keine Herausforderung f�r mein  `4%X`6!`5" sagte.', 'anpera');
INSERT INTO taunts VALUES (28, '`5%W: "`6Weisst du, du solltest wirklich kein %x haben, wenn du nicht wei�t, wie man sowas benutzt.`5"', 'anpera');
INSERT INTO taunts VALUES (29, '`5"`6`bARRRGGGGGGG`b!!`5" schreit %w frustriert.', 'anpera');
INSERT INTO taunts VALUES (30, '`5"`6Kann ich wirklich `bso`b schw�chlich sein?`5", heult %w.', 'anpera');
INSERT INTO taunts VALUES (31, '`5"`6Ich bin wohl weniger stark als ich dachte...!`5" muss sich %w eingestehen.', 'Bluspring');
INSERT INTO taunts VALUES (32, '`5"`6Pass auf deinen R�cken auf, `4%W`6 ich erwisch dich schon noch!`5" warnt %w.', 'Bluspring');
INSERT INTO taunts VALUES (33, '`5"`6So f�hlt es sich also an, wenn man ungespitzt in den Boden gerammt wird!`5" res�miert %w', 'Bluspring');
INSERT INTO taunts VALUES (34, '`5"`6Ich habe London gesehen, ich habe Frankreich gesehen, und ich habe `4%w\'s`6 Unterhose gesehen!`5" jubelt  %W.', 'anpera');
INSERT INTO taunts VALUES (35, '`5"`6Die H�tte des Heilers kann dir jetzt nicht mehr helfen, `4%w`6!,`5" scherzt %W.', 'anpera');
INSERT INTO taunts VALUES (36, '`5%W grinst:  "`6Du bist zu langsam. Du bist zu schwach.`5"', 'anpera');
INSERT INTO taunts VALUES (37, '`5%w schl�gt den Kopf gegen einen Stein..."`6Mist, Mist, Mist!`5"', 'anpera');
INSERT INTO taunts VALUES (38, '`5"`6Mein Selbstvertrauen h�lt nicht mehr viele solche niederlagen aus!`5" stellt  %w fest.', 'Bluspring');
INSERT INTO taunts VALUES (39, '`5"`6Warum bin ich nicht Arzt geworden, wie mein Vater es immer wollte?`5" �berlegt %w laut.', 'Bluspring');
INSERT INTO taunts VALUES (40, '`5"`6Vielleicht bist du `bn�chstes`b Mal nicht mehr so frech!`5" lacht %W.', 'Bluspring');
INSERT INTO taunts VALUES (41, '`5"`6Ein Kleinkind k�nnte mit eine(r/m) `4%x `6besser umgehen!`5" erkl�rt %W.', 'Bluspring');
INSERT INTO taunts VALUES (42, '`5"`6Du h�ttest heute im Bett bleiben sollen.`5", schl�gt %W vor.', 'Bluspring');
INSERT INTO taunts VALUES (43, '`5"`6Das hat weh getan!!`5" bemerkt %w.', 'Bluspring');
INSERT INTO taunts VALUES (44, '`5%W raunzt: "`6Komm wieder wenn du gelernt hast zu k�mpfen!`5"', 'anpera');
INSERT INTO taunts VALUES (45, '`5"`6N�chstes mal iss dein Gem�se!`5" schl�gt %W vor.', 'anpera');
INSERT INTO taunts VALUES (46, '`5 "`6Du bist entw�rdigend, `4%W`6!`5" weint %w.', 'Bluspring');
INSERT INTO taunts VALUES (47, '`5"`4%w`6, deine Haltung ist eine Schande.`5" stellt %W fest', 'Bluspring');
INSERT INTO taunts VALUES (48, '`5"`6Sag mal bist du schon tot oder was?`5" wundert sich %W.', 'Joe');
INSERT INTO taunts VALUES (49, '`5"`6Selbst meine Oma kann mit `4%x`6 besser umgehen als du!`5" spottet %W`5.', 'anpera');
INSERT INTO taunts VALUES (81, '`5"`6Erwarte meine Rache, `4%W`6. Bald!`5" erkl�rt %w.', 'MadMage');
INSERT INTO taunts VALUES (50, '`5"`6Ich mag dieses neue `4%x`6, die einst %w`6 geh�rte.`5" erkl�rt %W.', 'MadMage');
INSERT INTO taunts VALUES (51, '`5"`6Aso, `bdazu`b dient der `4%X`6 also!`5" freut sich %W', 'MadMage');
INSERT INTO taunts VALUES (52, '`5"`6Oh mann!  Das h�tte ich dir nicht zugetraut, `5%W`6,`5" sagt %w.', 'MadMage');
INSERT INTO taunts VALUES (53, '`5%W wurde geh�rt, als er "`6%p `4%x`6 war keine Herausforderung f�r mein `4%X`6!`5" sagte.', 'MadMage');
INSERT INTO taunts VALUES (54, '`5"`6Weisst du, du solltest kein `4%x`6 haben, solange du nicht damit umgehen kannst.`5" Schl�gt %W vor.', 'MadMage');
INSERT INTO taunts VALUES (55, '`5"`6`bARRRGGGGGGG`b!!`5" br�llt %w frustriert hinaus.', 'MadMage');
INSERT INTO taunts VALUES (56, '`5"`6Wie konnte ich nur so schwach sein?`5" fragt sich %w.', 'MadMage');
INSERT INTO taunts VALUES (57, '`5"`6Ich bin wohl weniger stark als ich dachte...!`5" muss sich %w eingestehen.', 'MadMage');
INSERT INTO taunts VALUES (58, '`5"`6Pass auf deinen R�cken auf, `4%W`6 ich erwisch dich schon noch!`5" warnt %w.', 'MadMage');
INSERT INTO taunts VALUES (59, '`5"`6So f�hlt es sich also an, wenn man ungespitzt in den Boden gerammt wird!`5" res�miert %w.', 'MadMage');
INSERT INTO taunts VALUES (60, '`5"`6Ich sah London, Bangladesch, Ich sah `4%w\'s`6, Unterw�sch\'!`5" enth�llt %W.', 'MadMage');
INSERT INTO taunts VALUES (61, '`5"`6Jetzt kann dir nicht einmal der Heiler mehr helfen, `4%w`6!,`5" meint %W.', 'MadMage');
INSERT INTO taunts VALUES (62, '`5%W l�chelt.  "`6Du bist zu langsam.  Du bist zu schwach.`5"', 'MadMage');
INSERT INTO taunts VALUES (63, '`5%w versucht mit %p Sch�del einen Stein zu zertr�mmern..."`6Dumm, dumm, dumm!`5"  h�rt man %s dabei.', 'MadMage');
INSERT INTO taunts VALUES (64, '`5"`6Mein Selbstvertrauen h�lt nicht mehr viele solche niederlagen aus!`5" stellt  %w fest.', 'MadMage');
INSERT INTO taunts VALUES (65, '`5"`6Warum bin ich nicht Arzt geworden, wie mein Vater es immer wollte?`5" �berlegt %w laut.', 'MadMage');
INSERT INTO taunts VALUES (66, '`5"`6Vielleicht bist du `bn�chstes`b Mal nicht mehr so frech!`5" lacht %W', 'MadMage');
INSERT INTO taunts VALUES (67, '`5"`6Ein Kleinkind k�nnte eine `4%x `6besser handhaben!`5" erkl�rt %W.', 'MadMage');
INSERT INTO taunts VALUES (68, '`5"`6Du h�ttest heute einfach nicht aufstehen sollen`5" meint %W.', 'MadMage');
INSERT INTO taunts VALUES (69, '`5"`6Das tat weh! Der arme %w`5" meint ein zuf�lliger Beobachter .', 'MadMage');
INSERT INTO taunts VALUES (70, '`5"`6Komm zur�ck wenn du k�mpfen gelernt hastt.`5" stichelt %W.', 'MadMage');
INSERT INTO taunts VALUES (71, '`5"`6Iss n�chstes Mal dein M�sli auf.`5" schl�gt %W vor.', 'MadMage');
INSERT INTO taunts VALUES (72, '`5 "`6Entw�rdigend! `4%W`6!`5" br�llt %w.', 'MadMage');
INSERT INTO taunts VALUES (73, '`5"`4%w`6, deine Haltung ist eine Schande.`5" stellt %W fest. ', 'MadMage');
INSERT INTO taunts VALUES (74, '`5"`6Weisst du, `4%w`6 musste nach all den Dingen, die `bich`b �ber `b%p`b Mutter verbreitet habe, schlicht und einfach ausrasten`5," erkl�rt %W.', 'MadMage');
INSERT INTO taunts VALUES (75, '`5"`6Mein Oma k�mpft besser als du, geh nach Hause und lasse dir von Mama die Hosen sauber machen.`5" sagt %W ', 'MadMage');
INSERT INTO taunts VALUES (76, '`5"`6Sag mal bist du schon tot oder was?`5" wundert sich %W', 'MadMage');
INSERT INTO taunts VALUES (77, '`5"`6Wir alle m�ssen sterben. `4%w`6 fr�her, andere sp�ter`5" philosophiert %W', 'MadMage');
INSERT INTO taunts VALUES (78, '`5"`6Immer diese Schmeissfliegen`5" �rgert sich %W.', 'MadMage');
INSERT INTO taunts VALUES (79, '`5"`6Ja wenns dir Spass macht... immer auf die kleinen Dicken...`5" beschwert sich ein sichtlich schlecht gelaunter `4%w.', 'MadMage');
INSERT INTO taunts VALUES (80, '`5"`6Du langweilst mich, `4%w`6. Komm wieder wenn du was kannst.`5" meint %W abf�llig.', 'MadMage');

# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `weapons`
#

CREATE TABLE weapons (
  weaponid int(11) unsigned NOT NULL auto_increment,
  weaponname varchar(128) default NULL,
  value int(11) NOT NULL default '0',
  damage int(11) NOT NULL default '1',
  level int(11) NOT NULL default '0',
  PRIMARY KEY  (weaponid)
) TYPE=MyISAM;

#
# Daten f�r Tabelle `weapons`
#

INSERT INTO weapons VALUES (1, 'Harke', 48, 1, 0);
INSERT INTO weapons VALUES (2, 'Maurerkelle', 225, 2, 0);
INSERT INTO weapons VALUES (3, 'Spaten', 585, 3, 0);
INSERT INTO weapons VALUES (4, 'Beil', 990, 4, 0);
INSERT INTO weapons VALUES (5, 'Gartenhacke', 1575, 5, 0);
INSERT INTO weapons VALUES (6, 'Fackel', 2250, 6, 0);
INSERT INTO weapons VALUES (7, 'Mistgabel', 2790, 7, 0);
INSERT INTO weapons VALUES (8, 'Schaufel', 3420, 8, 0);
INSERT INTO weapons VALUES (9, 'Heckenschere', 4230, 9, 0);
INSERT INTO weapons VALUES (10, 'Axt', 5040, 10, 0);
INSERT INTO weapons VALUES (11, 'Schnitzmesser', 5850, 11, 0);
INSERT INTO weapons VALUES (12, 'Rostige Holzf�lleraxt', 6840, 12, 0);
INSERT INTO weapons VALUES (13, 'billige Holzf�lleraxt', 8010, 13, 0);
INSERT INTO weapons VALUES (14, 'scharfe Holzf�lleraxt', 9000, 14, 0);
INSERT INTO weapons VALUES (15, 'gro�e Holzf�lleraxt', 10350, 15, 0);
INSERT INTO weapons VALUES (16, 'Kieselsteine', 48, 1, 1);
INSERT INTO weapons VALUES (17, 'Steine', 225, 2, 1);
INSERT INTO weapons VALUES (18, 'Felsen', 585, 3, 1);
INSERT INTO weapons VALUES (19, 'Kleiner Ast', 990, 4, 1);
INSERT INTO weapons VALUES (20, 'Gro�er Ast', 1575, 5, 1);
INSERT INTO weapons VALUES (21, 'Dick gepolsterter Kampfstab', 2250, 6, 1);
INSERT INTO weapons VALUES (22, 'D�nn gepolsterter Kampfstab', 2790, 7, 1);
INSERT INTO weapons VALUES (23, 'H�lzerne Fassdaube', 3420, 8, 1);
INSERT INTO weapons VALUES (24, 'H�lzernes �bungsschwert', 4230, 9, 1);
INSERT INTO weapons VALUES (25, 'Stumpfes Bronzekurzschwert', 5040, 10, 1);
INSERT INTO weapons VALUES (26, 'Gut verarbeitetes Bronzekurzschwert', 5850, 11, 1);
INSERT INTO weapons VALUES (27, 'Rostiges Stahlkurzschwert', 6840, 12, 1);
INSERT INTO weapons VALUES (28, 'Stumpfes Stahlkurzschwert', 8010, 13, 1);
INSERT INTO weapons VALUES (29, 'Scharfes Stahlkurzschwert', 9000, 14, 1);
INSERT INTO weapons VALUES (30, 'Stahlkurzschwert eines Knappen', 10350, 15, 1);
INSERT INTO weapons VALUES (31, 'Stumpfes Bronzeschwert', 48, 1, 2);
INSERT INTO weapons VALUES (32, 'Bronzeschwert', 225, 2, 2);
INSERT INTO weapons VALUES (33, 'Gutes Bronzeschwert', 585, 3, 2);
INSERT INTO weapons VALUES (34, 'Stumpfes Eisenschwert', 990, 4, 2);
INSERT INTO weapons VALUES (35, 'Eisenschwert', 1575, 5, 2);
INSERT INTO weapons VALUES (36, 'geweihtes Schwert', 9000, 14, 2);
INSERT INTO weapons VALUES (37, 'gutes Eisenschwert', 2250, 6, 2);
INSERT INTO weapons VALUES (38, 'Rostiges Stahlschwert', 2790, 7, 2);
INSERT INTO weapons VALUES (39, 'stumpfes Stahlschwert', 3420, 8, 2);
INSERT INTO weapons VALUES (40, 'gutes Stahlschwert', 4230, 9, 2);
INSERT INTO weapons VALUES (41, 'graviertes Stahlschwert', 5040, 10, 2);
INSERT INTO weapons VALUES (42, 'Juwelenbesetztes Stahlschwert', 5850, 11, 2);
INSERT INTO weapons VALUES (43, 'Schwert mit goldenem Griff', 6840, 12, 2);
INSERT INTO weapons VALUES (44, 'Schwert mit platinbesetztem Griff', 8010, 13, 2);
INSERT INTO weapons VALUES (45, 'Schwert der Meister', 10350, 15, 2);
INSERT INTO weapons VALUES (46, 'Stahllangschwert', 48, 1, 3);
INSERT INTO weapons VALUES (47, 'Geh�rtetes Stahllangschwert', 585, 3, 3);
INSERT INTO weapons VALUES (48, 'Poliertes Stahllangschwert', 225, 2, 3);
INSERT INTO weapons VALUES (49, 'Gutes Stahllangschwert', 990, 4, 3);
INSERT INTO weapons VALUES (50, 'Perfektes Stahllangschwert', 1575, 5, 3);
INSERT INTO weapons VALUES (51, 'Graviertes Stahllangschwert', 2250, 6, 3);
INSERT INTO weapons VALUES (52, 'Stahllangschwert mit silbernem Griff', 2790, 7, 3);
INSERT INTO weapons VALUES (53, 'Stahllangschwert mit goldenem Griff', 3420, 8, 3);
INSERT INTO weapons VALUES (54, 'Stahllangschwert mit massivgoldenem Griff', 4230, 9, 3);
INSERT INTO weapons VALUES (55, 'Stahllangschwert mit massivplatinem Griff', 5040, 10, 3);
INSERT INTO weapons VALUES (56, 'Mondsilber Langschwert', 5850, 11, 3);
INSERT INTO weapons VALUES (57, 'Herbstgold Langschwert', 6840, 12, 3);
INSERT INTO weapons VALUES (58, 'Elfensilber Langschwert', 8010, 13, 3);
INSERT INTO weapons VALUES (59, 'Verzaubertes Langschwert', 9000, 14, 3);
INSERT INTO weapons VALUES (60, 'Wolfmaster\'s Langschwert', 10350, 15, 3);
INSERT INTO weapons VALUES (61, 'Schlechtes Bastardschwert', 48, 1, 4);
INSERT INTO weapons VALUES (62, 'Makelhaftes Bastardschwert', 225, 2, 4);
INSERT INTO weapons VALUES (63, 'Bastardschwert aus Eisen', 585, 3, 4);
INSERT INTO weapons VALUES (64, 'Bastardschwert aus Stahl', 990, 4, 4);
INSERT INTO weapons VALUES (65, 'Gutes Bastardschwert aus Eisen', 1575, 5, 4);
INSERT INTO weapons VALUES (66, 'Perfektes Bastardschwert aus Eisen', 2250, 6, 4);
INSERT INTO weapons VALUES (67, 'Runenbastartschwert', 2790, 7, 4);
INSERT INTO weapons VALUES (68, 'Bastardschwert mit Bronzeeinlage', 3420, 8, 4);
INSERT INTO weapons VALUES (69, 'Bastardschwert mit Silbereinlage', 4230, 9, 4);
INSERT INTO weapons VALUES (70, 'Bastardschwert mit Goldeinlage', 5040, 10, 4);
INSERT INTO weapons VALUES (71, 'Nachtsilber Bastardschwert', 5850, 11, 4);
INSERT INTO weapons VALUES (72, 'Morgengold Bastardschwert', 6840, 12, 4);
INSERT INTO weapons VALUES (73, 'Elfengold Bastardschwert', 8010, 13, 4);
INSERT INTO weapons VALUES (74, 'Geweihtes Bastardschwert', 9000, 14, 4);
INSERT INTO weapons VALUES (75, 'Nobles Bastardschwert', 10350, 15, 4);
INSERT INTO weapons VALUES (76, 'Makelhaftes Highlander Eisenschwert', 48, 1, 5);
INSERT INTO weapons VALUES (77, 'Poliertes Highlander Eisenschwert', 225, 2, 5);
INSERT INTO weapons VALUES (78, 'Rostiges Highlander Stahlschwert', 585, 3, 5);
INSERT INTO weapons VALUES (79, 'Highlander Stahlschwert', 990, 4, 5);
INSERT INTO weapons VALUES (80, 'Edles Highlander Stahlschwert', 1575, 5, 5);
INSERT INTO weapons VALUES (81, 'Schottisches Breitschwert', 2250, 6, 5);
INSERT INTO weapons VALUES (82, 'Kriegsschwert der Wikinger', 2790, 7, 5);
INSERT INTO weapons VALUES (83, 'Barbarenschwert', 3420, 8, 5);
INSERT INTO weapons VALUES (84, 'Schottisches Basket-Hilt Schwert', 4230, 9, 5);
INSERT INTO weapons VALUES (85, 'Agincourt Stahlschwert', 5040, 10, 5);
INSERT INTO weapons VALUES (86, 'Keltisches Nahkampfschwert', 5850, 11, 5);
INSERT INTO weapons VALUES (87, 'Nordmann Schwert', 6840, 12, 5);
INSERT INTO weapons VALUES (88, 'Schwert eines Ritters', 8010, 13, 5);
INSERT INTO weapons VALUES (89, 'Highlanderschwert des L�wen', 9000, 14, 5);
INSERT INTO weapons VALUES (90, 'Highlanderschwert des Drachent�ters', 10350, 15, 5);
INSERT INTO weapons VALUES (91, 'Zwei zerbrochene Kurzschwerter', 48, 1, 6);
INSERT INTO weapons VALUES (92, 'Zwei Kurzschwerter', 225, 2, 6);
INSERT INTO weapons VALUES (93, 'Eisenerne Krumms�bel', 585, 3, 6);
INSERT INTO weapons VALUES (94, 'Ausbalancierte Krumms�bel', 990, 4, 6);
INSERT INTO weapons VALUES (95, 'Angelaufene Stahlkrumms�bel', 1575, 5, 6);
INSERT INTO weapons VALUES (96, 'Rostige Stahlkrumms�bel', 2250, 6, 6);
INSERT INTO weapons VALUES (97, 'Stahlkrumms�bel', 2790, 7, 6);
INSERT INTO weapons VALUES (98, 'Bronzener Stahlkrumms�bel', 3420, 8, 6);
INSERT INTO weapons VALUES (99, 'Goldener Stahlkrumms�bel', 4230, 9, 6);
INSERT INTO weapons VALUES (100, 'Platin Stahlkrumms�bel', 5040, 10, 6);
INSERT INTO weapons VALUES (101, 'Diamantgeh�rteter Krumms�bel', 5850, 11, 6);
INSERT INTO weapons VALUES (102, 'Perfekt verarbeiteter Krumms�bel', 6840, 12, 6);
INSERT INTO weapons VALUES (103, 'Geweihter Krumms�bel', 8010, 13, 6);
INSERT INTO weapons VALUES (104, 'Meisterhafter Krumms�bel', 9000, 14, 6);
INSERT INTO weapons VALUES (105, 'Krumms�bel des Einhorns', 10350, 15, 6);
INSERT INTO weapons VALUES (106, 'Angeschlagene eiserne Axt', 48, 1, 7);
INSERT INTO weapons VALUES (107, 'Eisenaxt', 225, 2, 7);
INSERT INTO weapons VALUES (108, 'Rostige Stahlaxt', 585, 3, 7);
INSERT INTO weapons VALUES (109, 'Edele Stahlaxt', 990, 4, 7);
INSERT INTO weapons VALUES (110, 'Holzf�lleraxt', 1575, 5, 7);
INSERT INTO weapons VALUES (111, 'Niederwertige Kampfaxt', 2250, 6, 7);
INSERT INTO weapons VALUES (112, 'Mittelm�ssige Kampfaxt', 2790, 7, 7);
INSERT INTO weapons VALUES (113, 'Hochwertige Kampfaxt', 3420, 8, 7);
INSERT INTO weapons VALUES (114, 'Zweischneidige Axt', 4230, 9, 7);
INSERT INTO weapons VALUES (115, 'Zweischneidige Kampfaxt', 5040, 10, 7);
INSERT INTO weapons VALUES (116, 'Goldverzierte Kampfaxt', 5850, 11, 7);
INSERT INTO weapons VALUES (117, 'Platinverzierte Kampfaxt', 6840, 12, 7);
INSERT INTO weapons VALUES (118, 'Geweihte Kampfaxt', 8010, 13, 7);
INSERT INTO weapons VALUES (119, 'Kampfaxt des Zwergenschmieds', 9000, 14, 7);
INSERT INTO weapons VALUES (120, 'Kampfaxt eines Zwergenkriegers', 10350, 15, 7);
INSERT INTO weapons VALUES (121, 'Zerbrochene Eisenkeule', 48, 1, 8);
INSERT INTO weapons VALUES (122, 'Besch�digte Eisenkeule', 225, 2, 8);
INSERT INTO weapons VALUES (123, 'Polierte Eisenkeule', 585, 3, 8);
INSERT INTO weapons VALUES (124, 'Gut verarbeitete Eisenkeule', 990, 4, 8);
INSERT INTO weapons VALUES (125, 'Polierte Stahlkeule', 1575, 5, 8);
INSERT INTO weapons VALUES (126, 'Gut verarbeitete Stahlkeule', 2250, 6, 8);
INSERT INTO weapons VALUES (127, 'Schlechte Doppelkeule', 2790, 7, 8);
INSERT INTO weapons VALUES (128, 'Gute Doppelkeule', 3420, 8, 8);
INSERT INTO weapons VALUES (129, 'Kampfkeule', 4230, 9, 8);
INSERT INTO weapons VALUES (130, 'Kampfkeule des Kriegsh�uptlings', 5040, 10, 8);
INSERT INTO weapons VALUES (131, 'Morgenstern des Kriegsh�uptlings', 5850, 11, 8);
INSERT INTO weapons VALUES (132, 'Diamantener Morgenstern', 6840, 12, 8);
INSERT INTO weapons VALUES (133, 'Morgenstern der Zwerge', 8010, 13, 8);
INSERT INTO weapons VALUES (134, 'Morgenstern des Kriegslords', 9000, 14, 8);
INSERT INTO weapons VALUES (135, 'Geweihter Morgenstern', 10350, 15, 8);
INSERT INTO weapons VALUES (136, 'Stiefelmesser', 48, 1, 9);
INSERT INTO weapons VALUES (137, 'Wurfmesser', 225, 2, 9);
INSERT INTO weapons VALUES (138, 'Totschl�ger', 585, 3, 9);
INSERT INTO weapons VALUES (139, 'Wurfstern', 990, 4, 9);
INSERT INTO weapons VALUES (140, 'Hira-Shuriken', 1575, 5, 9);
INSERT INTO weapons VALUES (141, 'Wurfpfeil', 2250, 6, 9);
INSERT INTO weapons VALUES (142, 'Atlatl', 2790, 7, 9);
INSERT INTO weapons VALUES (143, 'Qilamitautit Bolo', 3420, 8, 9);
INSERT INTO weapons VALUES (144, 'Kriegs Quoait', 4230, 9, 9);
INSERT INTO weapons VALUES (145, 'Cha Kran', 5040, 10, 9);
INSERT INTO weapons VALUES (146, 'Fei Piau', 5850, 11, 9);
INSERT INTO weapons VALUES (147, 'Jen Piau', 6840, 12, 9);
INSERT INTO weapons VALUES (148, 'Gau dim Piau', 8010, 13, 9);
INSERT INTO weapons VALUES (149, 'Verzauberte Wurfaxt', 9000, 14, 9);
INSERT INTO weapons VALUES (150, 'Teksolo\'s Ninja Sterne', 10350, 15, 9);
INSERT INTO weapons VALUES (151, 'Farmerbogen & Holzpfeile', 48, 1, 10);
INSERT INTO weapons VALUES (152, 'Farmerbogen & Steinspitzen', 225, 2, 10);
INSERT INTO weapons VALUES (153, 'Farmerbogen & Stahlspitzen', 585, 3, 10);
INSERT INTO weapons VALUES (154, 'Jagdbogen & Holzpfeile', 990, 4, 10);
INSERT INTO weapons VALUES (155, 'Jagdbogen & Steinspitzen', 1575, 5, 10);
INSERT INTO weapons VALUES (156, 'Jagdbogen & Stahlspitzen', 2250, 6, 10);
INSERT INTO weapons VALUES (157, 'F�rsterbogen & Holzpfeile', 2790, 7, 10);
INSERT INTO weapons VALUES (158, 'F�rsterbogen & Steinspitzen', 3420, 8, 10);
INSERT INTO weapons VALUES (159, 'F�rsterbogen & Stahlspitzen', 4230, 9, 10);
INSERT INTO weapons VALUES (160, 'Langbogen', 5040, 10, 10);
INSERT INTO weapons VALUES (161, 'Armbrust', 5850, 11, 10);
INSERT INTO weapons VALUES (162, 'Elfischer Langbogen', 6840, 12, 10);
INSERT INTO weapons VALUES (163, 'Elfischer Langbogen & Feuerpfeile', 8010, 13, 10);
INSERT INTO weapons VALUES (164, 'Elfischer Langbogen & Zauberpfeile', 9000, 14, 10);
INSERT INTO weapons VALUES (165, 'Langbogen des Elfenk�nigs', 10350, 15, 10);
INSERT INTO weapons VALUES (166, 'MightyE\'s Langschwert', 225, 2, 11);
INSERT INTO weapons VALUES (167, 'MightyE\'s Kurzschwert', 48, 1, 11);
INSERT INTO weapons VALUES (168, 'MightyE\'s Bastard Schwert', 585, 3, 11);
INSERT INTO weapons VALUES (169, 'MightyE\'s Krumms�bel', 990, 4, 11);
INSERT INTO weapons VALUES (170, 'MightyE\'s Kriegsaxt', 1575, 5, 11);
INSERT INTO weapons VALUES (171, 'MightyE\'s Wurfhammer', 2250, 6, 11);
INSERT INTO weapons VALUES (172, 'MightyE\'s Morgenstern', 2790, 7, 11);
INSERT INTO weapons VALUES (173, 'MightyE\'s Sportbogen', 3420, 8, 11);
INSERT INTO weapons VALUES (174, 'MightyE\'s Florett', 4230, 9, 11);
INSERT INTO weapons VALUES (175, 'MightyE\'s S�bel', 5040, 10, 11);
INSERT INTO weapons VALUES (176, 'MightyE\'s Lichtlanze', 5850, 11, 11);
INSERT INTO weapons VALUES (177, 'MightyE\'s Wakizashi', 6840, 12, 11);
INSERT INTO weapons VALUES (178, 'MightyE\'s 2-h�ndige Kriegsaxt', 8010, 13, 11);
INSERT INTO weapons VALUES (179, 'MightyE\'s 2-h�ndiges Kriegsschwert', 9000, 14, 11);
INSERT INTO weapons VALUES (180, 'MightyE\'s Claymore', 10350, 15, 11);
INSERT INTO weapons VALUES (181, 'Zauberspruch des Feuers', 48, 1, 12);
INSERT INTO weapons VALUES (182, 'Zauberspruch des Erdbebens', 225, 2, 12);
INSERT INTO weapons VALUES (183, 'Zauberspruch der Flut', 585, 3, 12);
INSERT INTO weapons VALUES (184, 'Zauberspruch der St�rme', 990, 4, 12);
INSERT INTO weapons VALUES (185, 'Zauberspruch der Kontrolle', 1575, 5, 12);
INSERT INTO weapons VALUES (186, 'Zauberspruch der Blitze', 2250, 6, 12);
INSERT INTO weapons VALUES (187, 'Zauberspruch der Schw�che', 2790, 7, 12);
INSERT INTO weapons VALUES (188, 'Zauberspruch der Angst', 3420, 8, 12);
INSERT INTO weapons VALUES (189, 'Zauberspruch des Giftes', 4230, 9, 12);
INSERT INTO weapons VALUES (190, 'Zauberspruch der Besessenheit', 5040, 10, 12);
INSERT INTO weapons VALUES (191, 'Zauberspruch der Hoffnungslosigkeit', 5850, 11, 12);
INSERT INTO weapons VALUES (192, 'Zauberspruch der Fledermausabwehr', 6840, 12, 12);
INSERT INTO weapons VALUES (193, 'Zauberspruch der Wolfabwehr', 8010, 13, 12);
INSERT INTO weapons VALUES (194, 'Zauberspruch der Einhornabwehr', 9000, 14, 12);
INSERT INTO weapons VALUES (195, 'Zauberspruch der Drachenabwehr', 10350, 15, 12);
INSERT INTO weapons VALUES (196, 'Schleuder & Holzsplitter', 48, 1, 13);
INSERT INTO weapons VALUES (197, 'Schleuder & Kieselstein', 225, 2, 13);
INSERT INTO weapons VALUES (198, 'Schleuder & gro�er Stein', 585, 3, 13);
INSERT INTO weapons VALUES (199, 'Schleuder & Bleikugel', 990, 4, 13);
INSERT INTO weapons VALUES (200, 'Schleuder & Stahlkugel', 1575, 5, 13);
INSERT INTO weapons VALUES (201, 'Schleuder & Silberkugel', 2250, 6, 13);
INSERT INTO weapons VALUES (202, 'Schleuder mit Mehrfachschuss', 2790, 7, 13);
INSERT INTO weapons VALUES (203, 'Schleuder & Feuerkugel', 3420, 8, 13);
INSERT INTO weapons VALUES (204, 'Schleuder & magische Kugel', 4230, 9, 13);
INSERT INTO weapons VALUES (205, 'Silberne Schleuder der Echsen', 5040, 10, 13);
INSERT INTO weapons VALUES (206, 'Goldene Schleuder der Echsen', 5850, 11, 13);
INSERT INTO weapons VALUES (207, 'Schleuder & faule Eier', 6840, 12, 13);
INSERT INTO weapons VALUES (208, 'Schleuder des Echsenbauern', 8010, 13, 13);
INSERT INTO weapons VALUES (209, 'Schleuder des Echsenkriegers', 9000, 14, 13);
INSERT INTO weapons VALUES (210, 'Schleuder des Echsenk�nigs', 10350, 15, 13);
