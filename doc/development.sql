

CREATE TABLE "articles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "content" text, "category_id" integer, "active" boolean DEFAULT 't', "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "articles" VALUES (1, 'Using Peer Reviews to Evaluate Student Performance on Group Projects', 'Group projects can be a valuable educational tool for students and are popular in courses in engineering, business and the humanities.  At the same time group projects also represent challenges for educators trying to evaluate individual student performance.  One tool for doing this has been the use of peer reviews.  Creating and then implementing peer reviews in a way that is informative to both students and teachers has a number of complications which will be discussed in this presentation.  Furthermore, new software has been developed at Carnegie Mellon University to assist in this effort and will be demonstrated as part of the talk and attendees will be given access to this software at the end of the presentation.', 7, 't', '2012-04-15 22:37:03.266691', '2012-04-15 22:39:22.136044');
INSERT INTO "articles" VALUES (2, 'The End of Government', 'When the crisis in the public finances is over, should the Government buy everyone a garden? Or an allotment, at least? There is a close correlation between having a garden and being happy. By asking two Nobel laureates, Joseph Stiglitz and Amartya Sen, to think about how to encode well-being in policy, Nicolas Sarkozy, the French President, has raised this fundamental question: what is the end of government? Precisely, is it a function of the State to promote the happiness of its citizens? The politicians, philosophers and clerics who assembled in Rennes yesterday to discuss the idea certainly think so.

They are not alone. There has been a surge in the economics of happiness in the United States and Britain too ever since, in 1974, Richard Easterlin pointed out that people in advanced capitalist societies were getting richer but no happier. In Britain, Richard Layard and Andrew Oswald have written in a similar vein and the psychologist Oliver James has gone one step farther by claiming that getting rich is liable to make us ill.

The implication for policy is that, once basic needs are met, governments should abandon a narrow focus on economic growth or gross domestic product (GDP). They should, instead, define collective wellbeing and seek policies that promote happiness. The Department for Children, Schools and Families recently introduced wellbeing classes. David Cameron has expressed some interest in GWB (gross wellbeing).
It is not silly to enrich the dry arithmetic of GDP with a concern for the satisfaction of human lives. The World Bank has succesfully pioneered the human development index, which ranks nations according to their social as well as economic achievements. Freedom, in other words, is an important part of development.

But that does not mean that it makes sense for governments to set up happiness as their sovereign objective. Happiness is notoriously elusive. No felicific calculus has yet been devised, and nor will it ever be, that captures the subtlety of human wellbeing. If one man gains a wealth of happiness at the expense of the violation of the rights of another, this counts as fine by the standard of the strict happiness utilitarian. Besides, most of the things that make people happy are either beyond the control of government (a happy marriage) or politically dubious (living in homogenous communities). The most recent data shows, in fact, that people do tend to get happier as they get richer, so perhaps the traditional objective of economic growth is not so narrow and dry after all.

There is a more fundamental reason why government policy ought not to be directed at happiness. There is more to life than that. There are many forms of life — monastic devotion, public service, freedom fighter — in which the pursuit of happiness is a subsidiary value, if it appears at all. The realms of art and literature would be hugely impoverished if nobody were ever miserable. “Happiness,” as Montherlant wrote, “writes white.”

Precisely because human life is prolifically diverse, the history of Utopian politics is littered with offences against freedom by people who thought they knew what the people really wanted. The economics of happiness invariably leads to the politics of paternalism. The happiness gurus would be better off starting with Aristotle’s generous account of flourishing, an idea that implies people choosing their own life course. If politicians need a single objective — and it is not obvious that they do — then setting the people free is a lot better than forcing them to be happy.', 8, 't', '2012-04-15 22:38:35.833679', '2012-04-15 22:38:35.833679');
INSERT INTO "articles" VALUES (3, 'How Privacy Vanishes Online', 'If a stranger came up to you on the street, would you give him your name, Social Security number and e-mail address?

Probably not.

Yet people often dole out all kinds of personal information on the Internet that allows such identifying data to be deduced. Services like Facebook, Twitter and Flickr are oceans of personal minutiae — birthday greetings sent and received, school and work gossip, photos of family vacations, and movies watched.
Computer scientists and policy experts say that such seemingly innocuous bits of self-revelation can increasingly be collected and reassembled by computers to help create a picture of a person’s identity, sometimes down to the Social Security number.

“Technology has rendered the conventional definition of personally identifiable information obsolete,” said Maneesha Mithal, associate director of the Federal Trade Commission’s privacy division. “You can find out who an individual is without it.”', 8, 't', '2012-04-15 22:44:22.490253', '2012-04-15 22:44:22.490253');


CREATE TABLE "categories" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "active" boolean DEFAULT 't', "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "categories" VALUES (1, 'Science Fiction', 't', '2012-04-15 22:12:18.295994', '2012-04-15 22:12:18.295994');
INSERT INTO "categories" VALUES (2, 'Programming', 't', '2012-04-15 22:12:30.999396', '2012-04-15 22:12:30.999396');
INSERT INTO "categories" VALUES (3, 'Friends', 't', '2012-04-15 22:12:38.158862', '2012-04-15 22:12:38.158862');
INSERT INTO "categories" VALUES (4, 'Interesting', 't', '2012-04-15 22:12:50.420861', '2012-04-15 22:12:50.420861');
INSERT INTO "categories" VALUES (5, 'Chess', 't', '2012-04-15 22:13:12.514555', '2012-04-15 22:13:12.514555');
INSERT INTO "categories" VALUES (6, 'Klingon', 't', '2012-04-15 22:13:26.700456', '2012-04-15 22:13:26.700456');
INSERT INTO "categories" VALUES (7, 'Education', 't', '2012-04-15 22:38:01.566590', '2012-04-15 22:38:01.566590');
INSERT INTO "categories" VALUES (8, 'Libertarian', 't', '2012-04-15 22:38:11.598598', '2012-04-15 22:38:11.598598');


CREATE TABLE "photos" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "caption" varchar(255), "category_id" integer, "active" boolean DEFAULT 't', "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image" varchar(255));
INSERT INTO "photos" VALUES (1, 'Darth Vader', 1, 't', '2012-04-15 22:18:39.282062', '2012-04-15 22:18:39.282062', 'darth_vader.jpg');
INSERT INTO "photos" VALUES (2, 'Lobster Boy', 4, 't', '2012-04-15 22:22:42.738391', '2012-04-15 22:22:42.738391', 'lobster_boy.jpg');
INSERT INTO "photos" VALUES (3, 'Cookie Monster Hunter', 4, 't', '2012-04-15 22:23:12.129105', '2012-04-15 22:23:12.129105', 'cookie_monster_hunter.jpg');
INSERT INTO "photos" VALUES (4, 'Jeannie Sowers', 3, 't', '2012-04-15 22:23:41.435498', '2012-04-15 22:23:41.435498', 'jeannie.jpg');
INSERT INTO "photos" VALUES (5, 'KCW', 6, 't', '2012-04-15 22:24:10.698458', '2012-04-15 22:27:57.864650', 'kcw.jpg');
INSERT INTO "photos" VALUES (6, 'KCW Close-up', 6, 't', '2012-04-15 22:26:48.135106', '2012-04-15 22:26:48.135106', 'kcw2.jpg');
INSERT INTO "photos" VALUES (7, 'Mark Playing Chess', 5, 't', '2012-04-15 22:27:25.351157', '2012-04-15 22:27:25.351157', 'mark.jpg');


CREATE TABLE "proverbs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "klingon" varchar(255), "translation" varchar(255), "active" boolean DEFAULT 't', "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "proverbs" VALUES (1, 'tlhIngan maH!', 'We are Klingons!', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (2, 'bogh tlhInganpu'', SuvwI''pu'' moj, Hegh.', 'Klingons are born, live as warriors, then die.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (3, 'SuvmeH ''ej charghmeH bogh tlhInganpu''', 'Klingons are born to fight and to conquer.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (4, 'DabuQlu''DI'' yISuv.', 'When threatened, fight.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (5, 'qa'' wIje''meH maSuv.', 'We fight to enrich the spirit.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (25, 'bI''IQchugh yIvang!', 'If you are sad, act!', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (26, 'tIqIpqu'' ''ej nom tIqIp', 'Hit them hard and hit them fast.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (27, 'lumbe'' tlhInganpu''', 'Klingons do not procrastinate.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (28, 'Dubotchugh yIpummoH', 'If it is in your way, knock it down.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (29, 'mataHmeH maSachnIS', 'To survive, we must expand.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (30, 'Hem tlhIngan Segh ''ej maHemtaH ''e'' wIHech', 'Klingons are a proud race, and we intend to go on being proud.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (31, 'ta''mey Dun, bommey Dun', 'Great deeds, great songs.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (32, 'bomDI'' ''IwwIj qaqaw', 'The memory of you sings in my blood.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (33, 'Suvlu''taHvIS yapbe'' Hos meH', 'Brute strength is not the most important asset in a fight.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (34, 'tIgDaq HoSna'' tu''lu''', 'Real power is in the heart.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (35, 'Dujeychugh jagh nIv yItuHQo''', 'There is nothing shameful in falling to a superior enemy.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (36, 'pujwI'' HIvlu''chugh quvbe''lu''', 'There is no honor in attacking the weak.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (37, 'bISovbejbe''DI'' tImer', 'When in doubt, surprise them.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (38, 'DujIIj yIvoq', 'Trust your instincts.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (39, '''IwIIj ghogh yIQoy', 'Listen to the voice of your blood.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (40, 'tujpa'' qul pub SuvwI'' ''Iw', 'A warrior''s blood boils before the fire is hot.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (41, 'tay''taHbe'' ''Iw bIQ je', 'Blood and water don''t mix.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (42, 'reH tay'' ghot tuqDaj je', 'One is always of his tribe.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (43, 'nIteb Qob qaD jup ''e'' ehaw''be'' SuvwI''', 'A warrior does not let a friend face danger alone.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (44, 'may''Daq jaHDI'' SuvwI'' juppu''Daj lonbe''', 'When a warrior goes to a battle, he does not abandon his friends.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (45, 'ropchoHbe'' tlhInganpu''', 'Klingons do not get sick.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (46, 'yIn DayajmeH ''oy'' yISIQ', 'To understand life, endure pain.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (47, '''utbe'' bel', 'Pleasure is nonessential.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (48, 'not toj tlhInganpu''', 'Klingons never bluff.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (49, 'batlh ghob yIpab', 'Adhere to virtue honorably.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (50, 'pop ''oH ghob''e''', 'Virtue is the reward.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (51, 'reH ''eb tu''lu''', 'There is always a chance.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (52, 'Hoch ''ebmey tIjon', 'Capture all opportunities.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (53, 'batlh potlh law'' yIn potlh puS', 'Honor is more important than life.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (54, 'batlhHa'' vanglu''taHvIS quv chavbe''lu''', 'One does not achieve honor by acting dishonorably.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (55, 'tlhIngan quv DatIchDI'' Seng yIghuH.', 'When you insult a Klingon''s honor, prepare for trouble.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (56, 'bIlujlaHbe''chugh bIQaplaHbe''', 'If you cannot fail, you cannot succeed.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (57, 'nIteb SuvnIS DevwI''', 'A leader must stand alone.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (58, 'ghIj qet jaghmeyjaj', 'May your enemies run with fear.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (59, 'batlh qelDI'' tlhIngan, lumbe''', 'A Klingon does not postpone a matter of honor.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (60, 'Heghlu''meH QaQ jajvam', 'It is a good day to die.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (61, 'batlh bIHeghjaj', 'May you die well.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (62, 'blHeghvIpchugh bIHeghpu''', 'If you are afraid to die, you have already died.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (63, 'Qu''Daj ta''taHvIS Hegh ''e'' tul Hoch tlhIngan', 'To die in the line of duty is the hope of every Klingon.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (64, 'reh Suvrup tlhIngan SuvwI''', 'A Klingon warrior is always prepared to fight.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (65, 'not lay''Ha'' tlhIngan', 'No Klingon breaks his word.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (66, 'wa'' DoS neH yIbuS', 'Focus on but one target.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (67, 'toDuj ''oS rol', 'A beard is a symbol of courage.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (68, 'bIjatlh ''e'' yImev. yItlhutlh!', 'Stop talking! Drink!', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (69, 'wej Heghehugh vay'', Suvtah SuvwI''', 'A warrior fights to the death.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (70, 'jeghbe'' tlhInganpu''', 'Klingons do not surrender.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (71, 'may''meyDajvo'' Haw''be'' tlhIngan', 'A Klingon does not run away from his battles.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (72, 'Dajonlu''pa'' bIHeghjaj', 'May you die before you are captured.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (73, 'QamvIS Hegh qaq law'' torvIS yIn qaq puS', 'Better to die on your feet than live on your knees.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (74, 'yay chavlu'' ''e'' bajnISlu''', 'Victory must be earned.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (75, 'potlhbe''chugh yay qatlh pe''''eghlu''?', 'If winning is not important, then why keep score?', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (76, 'reH bang larghlu''', 'Love is always smelled.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (77, 'reH DuSIgh vavlI''', 'Your father is a part of you always.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (78, '''oy''be''ly''chugh Qapbe''lu''', 'No pain, no gain.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (79, 'ghojwI''pu''lI'' tISaH', 'Care about your students.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (80, 'wa'' Dol nIvDaq matay''DI'' maQap', 'We succeed together in a greater whole.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (81, 'QaghmeylIj tIchID, yIyoH', 'Have the courage to admit your mistakes.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (82, 'not qoHpu''''e'' meH ghIjlu''', 'Only fools have no fear.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (83, 'bortaS bIr jablu''DI'' reH QaQqu'' nay''', 'Revenge is a dish which is best served cold.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (84, 'meQtaHbogh qachDaq Suv qoH neH', 'Only a fool fights in burning house.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (85, '''etlh QorghHa''lu''chugh ragh ''etlh nIvqu'' ''ej jejHa''choH', 'Even the best blade will rust and grow dull unless it is cared for.', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');
INSERT INTO "proverbs" VALUES (86, 'toH, chovnatlh Doj ghaH tlhIngan''e''', 'What a piece of work is a man! -- Hamlet, Act II, Sc. 2', 't', '2012-02-07 03:01:48.126278', '2012-02-07 03:01:48.126278');


CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES ('20120412114617');
INSERT INTO "schema_migrations" VALUES ('20120412114632');
INSERT INTO "schema_migrations" VALUES ('20120412114739');
INSERT INTO "schema_migrations" VALUES ('20120412114804');
INSERT INTO "schema_migrations" VALUES ('20120412125204');
