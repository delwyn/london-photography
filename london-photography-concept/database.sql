DROP TABLE IF EXISTS tubeLines;
CREATE TABLE tubeLines (
  id INT(6) NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  color VARCHAR(7) NOT NULL,
  PRIMARY KEY(id)
);

INSERT INTO tubeLines (name, color) VALUES
("Bakerloo", "#996633"),
("Central", "#CC3333"),
("Circle", "#FFCC00"),
("District", "#006633"),
("Dockland's Light Railway", "#009999"),
("Hammersmith & City", "#CC9999"),
("Jubilee", "#868F98"),
("Metropolitan", "#660066"),
("Northern", "#000000"),
("Piccadilly", "#000099"),
("Victoria", "#0099CC"),
("Waterloo & City", "#66CCCC");

DROP TABLE IF EXISTS stations;
CREATE TABLE stations (
  id INT(8) NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);

INSERT INTO stations (name)
VALUES ("Acton Town"), ("Aldgate"), ("Aldgate East"), ("All Saints"), ("Alperton"), ("Amersham"), ("Angel"), ("Archway"), ("Arnos Grove"), ("Arsenal"), ("Baker Street"), ("Balham"), ("Bank"), ("Barbican"), ("Barking"), ("Barkingside"), ("Barons Court"), ("Bayswater"), ("Beckton"), ("Beckton Park"), ("Becontree"), ("Belsize Park"), ("Bermondsey"), ("Bethnal Green"), ("Blackfriars"), ("Blackhorse Road"), ("Blackwall"), ("Bond Street"), ("Borough"), ("Boston Manor"), ("Bounds Green"), ("Bow Church"), ("Bow Road"), ("Brent Cross"), ("Brixton"), ("Bromley-by-Bow"), ("Buckhurst Hill"), ("Burnt Oak"), ("Caledonian Road"), ("Camden Town"), ("Canada Water"), ("Canary Wharf"), ("Canning Town"), ("Cannon Street"), ("Canons Park"), ("Chalfont & Latimer"), ("Chalk Farm"), ("Chancery Lane"), ("Charing Cross"), ("Chesham"), ("Chigwell"), ("Chiswick Park"), ("Chorleywood"), ("Clapham Common"), ("Clapham North"), ("Clapham South"), ("Cockfosters"), ("Colindale"), ("Colliers Wood"), ("Covent Garden"), ("Crossharbour"), ("Croxley"), ("Custom House for ExCeL"), ("Cutty Sark for Maritime Greenwich"), ("Cyprus"), ("Dagenham East"), ("Dagenham Heathway"), ("Debden"), ("Deptford Bridge"), ("Devons Road"), ("Dollis Hill"), ("Ealing Broadway"), ("Ealing Common"), ("Earl's Court"), ("East Acton"), ("East Finchley"), ("East Ham"), ("East India"), ("East Putney"), ("Eastcote"), ("Edgware"), ("Edgware Road"), ("Edgware Road"), ("Elephant & Castle"), ("Elm Park"), ("Elverson Road"), ("Embankment"), ("Epping"), ("Euston"), ("Euston Square"), ("Fairlop"), ("Farringdon"), ("Finchley Central"), ("Finchley Road"), ("Finsbury Park"), ("Fulham Broadway"), ("Gallions Reach"), ("Gants Hill"), ("Gloucester Road"), ("Golders Green"), ("Goldhawk Road"), ("Goodge Street"), ("Grange Hill"), ("Great Portland Street"), ("Green Park"), ("Greenford"), ("Greenwich"), ("Gunnersbury"), ("Hainault"), ("Hammersmith"), ("Hammersmith"), ("Hampstead"), ("Hanger Lane"), ("Harlesden"), ("Harrow & Wealdstone"), ("Harrow-on-the-Hill"), ("Hatton Cross"), ("Heathrow Terminal 4"), ("Heathrow Terminal 5"), ("Heathrow Terminals 1, 2, 3"), ("Hendon Central"), ("Heron Quays"), ("High Barnet"), ("High Street Kensington"), ("Highbury & Islington"), ("Highgate"), ("Hillingdon"), ("Holborn"), ("Holland Park"), ("Holloway Road"), ("Hornchurch"), ("Hounslow Central"), ("Hounslow East"), ("Hounslow West"), ("Hyde Park Corner"), ("Ickenham"), ("Island Gardens"), ("Kennington"), ("Kensal Green"), ("Kensington (Olympia)"), ("Kentish Town"), ("Kenton"), ("Kew Gardens"), ("Kilburn"), ("Kilburn Park"), ("King George V"), ("King's Cross St. Pancras"), ("Kingsbury"), ("Knightsbridge"), ("Ladbroke Grove"), ("Lambeth North"), ("Lancaster Gate"), ("Langdon Park"), ("Latimer Road"), ("Leicester Square"), ("Lewisham"), ("Leyton"), ("Leytonstone"), ("Limehouse"), ("Liverpool Street"), ("London Bridge"), ("London City Airport"), ("Loughton"), ("Maida Vale"), ("Manor House"), ("Mansion House"), ("Marble Arch"), ("Marylebone"), ("Mile End"), ("Mill Hill East"), ("Monument"), ("Moor Park"), ("Moorgate"), ("Morden"), ("Mornington Crescent"), ("Mudchute"), ("Neasden"), ("Newbury Park"), ("North Acton"), ("North Ealing"), ("North Greenwich"), ("North Harrow"), ("North Wembley"), ("Northfields"), ("Northolt"), ("Northwick Park"), ("Northwood"), ("Northwood Hills"), ("Notting Hill Gate"), ("Oakwood"), ("Old Street"), ("Osterley"), ("Oval"), ("Oxford Circus"), ("Paddington"), ("Park Royal"), ("Parsons Green"), ("Perivale"), ("Piccadilly Circus"), ("Pimlico"), ("Pinner"), ("Plaistow"), ("Pontoon Dock"), ("Poplar"), ("Preston Road"), ("Prince Regent"), ("Pudding Mill Lane"), ("Putney Bridge"), ("Queen's Park"), ("Queensbury"), ("Queensway"), ("Ravenscourt Park"), ("Rayners Lane"), ("Redbridge"), ("Regent's Park"), ("Richmond"), ("Rickmansworth"), ("Roding Valley"), ("Royal Albert"), ("Royal Oak"), ("Royal Victoria"), ("Ruislip"), ("Ruislip Gardens"), ("Ruislip Manor"), ("Russell Square"), ("Seven Sisters"), ("Shadwell"), ("Shepherd's Bush"), ("Shepherd's Bush Market"), ("Sloane Square"), ("Snaresbrook"), ("South Ealing"), ("South Harrow"), ("South Kensington"), ("South Kenton"), ("South Quay"), ("South Ruislip"), ("South Wimbledon"), ("South Woodford"), ("Southfields"), ("Southgate"), ("Southwark"), ("St. James's Park"), ("St. John's Wood"), ("St. Paul's"), ("Stamford Brook"), ("Stanmore"), ("Star Lane"), ("Stepney Green"), ("Stockwell"), ("Stonebridge Park"), ("Stratford"), ("Stratford High Street"), ("Stratford International"), ("Sudbury Hill"), ("Sudbury Town"), ("Swiss Cottage"), ("Temple"), ("Theydon Bois"), ("Tooting Bec"), ("Tooting Broadway"), ("Tottenham Court Road"), ("Tottenham Hale"), ("Totteridge & Whetstone"), ("Tower Gateway"), ("Tower Hill"), ("Tufnell Park"), ("Turnham Green"), ("Turnpike Lane"), ("Upminster"), ("Upminster Bridge"), ("Upney"), ("Upton Park"), ("Uxbridge"), ("Vauxhall"), ("Victoria"), ("Walthamstow Central"), ("Wanstead"), ("Warren Street"), ("Warwick Avenue"), ("Waterloo"), ("Watford"), ("Wembley Central"), ("Wembley Park"), ("West Acton"), ("West Brompton"), ("West Finchley"), ("West Ham"), ("West Hampstead"), ("West Harrow"), ("West India Quay"), ("West Kensington"), ("West Ruislip"), ("West Silvertown"), ("Westbourne Park"), ("Westferry"), ("Westminster"), ("White City"), ("Whitechapel"), ("Willesden Green"), ("Willesden Junction"), ("Wimbledon"), ("Wimbledon Park"), ("Wood Green"), ("Wood Lane"), ("Woodford"), ("Woodside Park"), ("Woolwich Arsenal");

DROP TABLE IF EXISTS tubeLineStations;
CREATE TABLE IF NOT EXISTS tubeLineStations (
  lineId INT(8) NOT NULL,
  stationId INT(8) NOT NULL
);

INSERT INTO tubeLineStations (stationId, lineId) VALUES (1, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (1, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (2, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (2, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (3, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (3, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (4, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (5, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (6, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (7, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (8, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (9, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (10, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (11, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (11, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (11, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (11, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (11, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (12, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (13, 12);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (13, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (13, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (13, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (14, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (14, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (14, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (15, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (15, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (16, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (17, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (17, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (18, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (18, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (19, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (20, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (21, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (22, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (23, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (24, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (25, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (25, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (26, 11);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (27, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (28, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (28, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (29, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (30, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (31, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (32, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (33, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (33, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (34, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (35, 11);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (36, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (36, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (37, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (38, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (39, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (40, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (41, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (42, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (42, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (43, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (43, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (44, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (44, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (45, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (46, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (47, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (48, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (49, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (49, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (50, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (51, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (52, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (53, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (54, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (55, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (56, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (57, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (58, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (59, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (60, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (61, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (62, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (63, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (64, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (65, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (66, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (67, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (68, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (69, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (70, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (71, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (72, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (72, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (73, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (73, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (74, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (74, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (75, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (76, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (77, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (77, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (78, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (79, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (80, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (80, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (81, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (82, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (82, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (82, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (83, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (84, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (84, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (85, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (86, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (87, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (87, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (87, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (87, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (88, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (89, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (89, 11);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (90, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (90, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (90, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (91, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (92, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (92, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (92, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (93, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (94, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (94, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (95, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (95, 11);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (96, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (97, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (98, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (99, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (99, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (99, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (100, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (101, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (101, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (102, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (103, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (104, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (104, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (104, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (105, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (105, 11);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (105, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (106, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (107, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (108, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (109, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (110, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (110, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (111, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (111, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (112, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (113, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (114, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (115, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (116, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (117, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (118, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (119, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (120, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (121, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (122, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (123, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (124, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (124, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (125, 11);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (126, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (127, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (127, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (128, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (128, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (129, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (130, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (131, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (132, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (133, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (134, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (135, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (136, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (136, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (137, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (138, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (139, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (140, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (141, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (142, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (143, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (144, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (145, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (146, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (147, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (147, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (147, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (147, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (147, 11);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (148, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (149, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (150, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (150, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (151, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (152, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (153, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (154, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (154, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (155, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (155, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (156, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (157, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (158, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (159, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (160, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (160, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (160, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (160, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (161, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (161, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (162, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (163, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (164, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (165, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (166, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (166, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (167, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (168, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (169, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (169, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (169, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (170, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (171, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (171, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (172, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (173, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (173, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (173, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (173, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (174, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (175, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (176, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (177, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (178, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (179, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (180, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (181, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (182, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (183, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (184, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (185, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (186, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (187, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (188, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (189, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (189, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (189, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (190, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (191, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (192, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (193, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (194, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (194, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (194, 11);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (195, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (195, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (195, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (195, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (196, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (197, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (198, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (199, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (199, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (200, 11);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (201, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (202, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (202, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (203, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (204, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (205, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (206, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (207, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (208, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (209, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (210, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (211, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (212, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (213, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (213, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (214, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (215, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (216, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (217, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (218, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (219, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (220, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (220, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (221, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (222, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (222, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (223, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (224, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (224, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (225, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (226, 11);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (227, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (228, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (229, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (229, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (230, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (230, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (231, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (232, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (233, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (234, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (234, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (234, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (235, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (236, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (237, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (238, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (239, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (240, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (241, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (242, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (243, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (243, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (244, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (245, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (246, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (247, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (248, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (249, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (249, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (250, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (250, 11);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (251, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (252, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (252, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (252, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (253, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (254, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (255, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (256, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (257, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (258, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (258, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (259, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (260, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (261, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (262, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (262, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (263, 11);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (264, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (265, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (266, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (266, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (267, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (268, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (268, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (269, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (270, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (271, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (272, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (273, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (273, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (274, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (274, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (275, 11);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (276, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (276, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (276, 11);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (277, 11);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (278, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (279, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (279, 11);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (280, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (281, 12);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (281, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (281, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (281, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (282, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (283, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (284, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (284, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (285, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (286, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (287, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (288, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (288, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (288, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (288, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (289, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (290, 8);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (291, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (292, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (293, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (294, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (295, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (295, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (296, 5);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (297, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (297, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (297, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (298, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (299, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (299, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (300, 7);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (301, 1);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (302, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (303, 4);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (304, 10);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (305, 6);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (305, 3);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (306, 2);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (307, 9);
INSERT INTO tubeLineStations (stationId, lineId) VALUES (308, 5);

DROP TABLE IF EXISTS photos;
CREATE TABLE photos (
  id INT(6) NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  description MEDIUMTEXT NOT NULL,
  lng VARCHAR(30) NOT NULL,
  lat VARCHAR(30) NOT NULL,
  smallUrl VARCHAR(255) NOT NULL,
  largeUrl VARCHAR(255) NOT NULL,
  PRIMARY KEY(id)
);


INSERT INTO photos (name, lat, lng, smallUrl, largeUrl, description) VALUES ("Houses of Parliament", 51.500753, -0.120032, "http://photos.murphyz.co.uk/Other/Portfolio/i-xTXDcPB/0/S/London%27s%20Burning-S.jpg", "http://photos.murphyz.co.uk/Other/Portfolio/i-xTXDcPB/0/L/London%27s%20Burning-L.jpg", "This spot directly opposite the Houses of Parliament is a great place to go to get a view of this iconic building and the Elizabeth Tower which houses Big Ben.  The bridge itself works as a great leading line and there are a few different angles you can get around this spot using the tunnel, steps and hospital part behind you.<P>This spot is accessible 24 hours a day, but it's best to visit for sunset and blue hour where you can get some fantastic light coming from behind the subject.<P>The place can get busy with other photographers, especially during the summer, so if you really want to get a shot from a particular spot you may wish to arrive there early. ");
INSERT INTO photos (name, lat, lng, smallUrl, largeUrl, description) VALUES ("London Eye", 51.503935, -0.117425, "http://photos.murphyz.co.uk/Other/London/i-Pj3XJbW/0/S/20130513-IMG_8209-Edit-S.jpg", "http://photos.murphyz.co.uk/Other/London/i-Pj3XJbW/0/X2/20130513-IMG_8209-Edit-X2.jpg", "This is one of the icons of London that you will want to shoot on your visit, and there are some great angles to be had of it from both sides of the river. <P>Security immediately around the London Eye will not allow you to use a tripod. If you stand directly in front of the wheel they will likely also ask you to stop taking photos even if you're doing so handheld.  At low tide you can gain access to the area under the wheel via the beach, but this is private property and you will be shouted at to clear off. No signs are in place due to the water levels at full tide. <P>As such, speed is needed here so grab shots while you can before the security arrive and tell you to clear off.  Wearing headphones will allow you to ignore any calls to stop that they may shout in your direction which will of course buy you more time before they are suddenly stood beside you.<P>Try moving back a bit from the wheel to have less hassle.  The lovely Jubilee Gardens offers some nice vantage points, and you can go across the river directly opposite the Eye to get a straight on view. ");
INSERT INTO photos (name, lat, lng, smallUrl, largeUrl, description) VALUES ("Tate Modern", 51.50789, -0.099514, "http://photos.murphyz.co.uk/Other/London/i-bHNtR5q/0/S/_-2-S.jpg", "http://photos.murphyz.co.uk/Other/London/i-bHNtR5q/0/X2/_-2-X2.jpg", "The Tate Modern is a cool museum that's contained within an old power station. It can often have some great exhibits, some of which are on a large scale in the \"Turbine Hall\" and it also has a nice river facing view from the public cafe. <P>Being an old power station, the museum itself is also pretty cool to look at and you should be able to get some worthwhile shots from various angles simply looking up at the building. <P>I prefer to shoot this building during the daytime with interesting clouds in the sky.  The spotlights at the foot of the main tower at night time are pretty bright and don't look great in an image. ");
INSERT INTO photos (name, lat, lng, smallUrl, largeUrl, description) VALUES ("Leake Street", 51.501031, -0.114246, "http://photos.murphyz.co.uk/Other/London/i-vkc4C24/0/S/Grate%20graffiti%20tunnel-S.jpg", "http://photos.murphyz.co.uk/Other/London/i-vkc4C24/0/X2/Grate%20graffiti%20tunnel-X2.jpg", "This is an authorised graffiti tunnel stretching around 300 meters in length and is a great place to visit to get some urban grime in a central location - as it's a tunnel it's also a great spot to go and shoot if it's raining.<P>The tunnel is pretty active with people passing through, painting on the walls, shooting videos and - like you - taking photos.  ");
INSERT INTO photos (name, lat, lng, smallUrl, largeUrl, description) VALUES ("Tower Bridge", 51.506795, -0.074566, "http://photos.murphyz.co.uk/Other/Portfolio/i-LLHt5SM/0/S/tb-S.jpg", "http://photos.murphyz.co.uk/Other/Portfolio/i-LLHt5SM/0/L/tb-L.jpg", "What an icon this bridge is!<P>Though there are several viewing points to get a nice shot of the bridge, you should also consider taking an image from on the bridge itself. <P>Visiting at blue hour or night time will allow you to get some great long exposures of the busy traffic on the bridge, and there are plenty of buses going past to really make your light trails stand out. ");
INSERT INTO photos (name, lat, lng, smallUrl, largeUrl, description) VALUES ("British Museum", 51.518804, -0.126212, "http://photos.murphyz.co.uk/Other/Portfolio/i-7Lj5FpL/0/S/bm-S.jpg", "http://photos.murphyz.co.uk/Other/Portfolio/i-7Lj5FpL/0/L/bm-L.jpg", "This museum has some amazing architecture, so be sure to head inside even if you aren't really interested in any of the exhibitions. <P>After walking in the main entrance you will enter the Great Hall which has a beautiful roof designed by Norman Foster.  You can get many great images looking up at this from various parts of the hall. <P>If you come into the main entrance and go up some stairs on the left, instead of moving forward to the Great Hall, then you can get to a great viewing window which looks down on to the Great Hall itself (pictured here).<P>Then of course there are some good shots to be had at the exhibitions themselves, a particular favourite being the Egyptian Collection in wing 4 (left centre of the Great Hall). <P>No tripods are allowed within the museum or the grounds; though in some areas of the grounds you can often get away with it when away from the regular flow of people. ");
INSERT INTO photos (name, lat, lng, smallUrl, largeUrl, description) VALUES ("Battersea Power Station View", 51.485736, -0.146999, "http://photos.murphyz.co.uk/Other/London/i-6Hq7cSD/1/S/_-33-S.jpg", "http://photos.murphyz.co.uk/Other/London/i-6Hq7cSD/1/X2/_-33-X2.jpg", "Here's a great spot opposite the iconic Battersea Power Station, an old and abandoned power plant which is featured on the front cover of the album 'Animals' by Pink Floyd.<P>This is a great spot at any time of day, but the plant really looks great by moonlight or at sunrise. <P>Be sure to get this image while you can - the plant is being redeveloped into a shopping mall and luxury accommodation so will not be in the current state for much longer. ");
INSERT INTO photos (name, lat, lng, smallUrl, largeUrl, description) VALUES ("St Pancras International", 51.529748, -0.124906, "http://photos.murphyz.co.uk/Other/London/i-cQrc9RN/0/S/20130120-IMG_1303_4_5-S.jpg", "http://photos.murphyz.co.uk/Other/London/i-cQrc9RN/0/X2/20130120-IMG_1303_4_5-X2.jpg", "This station is very busy, with passengers departing to various places around the UK, as well as being the Eurostar hub taking passengers to various European locations via high speed train. <P>The upper levels are oddly pretty quiet, and also home to the longest champagne bar in the world, and it's here that you well get some great images of the architecture and statues in the station.<P>Tripods are frowned upon, but in the upper levels when it's quiet you can often go ahead and use them, or at the least get your images taken prior to someone turning up and telling you not to take them.<P>If happen to be travelling on the Eurostar be sure to go ahead and grab a few images from the train platform prior to getting on the train or exiting the station, as that's the only chance you will have to get some angles. <P>This station actively participates in charity ventures and awareness campaigns so you may be lucky during your visit to see an art installation or event of some sort taking place.");

DROP TABLE IF EXISTS photoStations;
CREATE TABLE photoStations (
  photoId INT(8) NOT NULL,
  stationId INT(8) NOT NULL
);

INSERT INTO photoStations (photoId, stationId) VALUES (1, 297);
INSERT INTO photoStations (photoId, stationId) VALUES (2, 281);
INSERT INTO photoStations (photoId, stationId) VALUES (3, 242);
INSERT INTO photoStations (photoId, stationId) VALUES (4, 281);
INSERT INTO photoStations (photoId, stationId) VALUES (5, 161);
INSERT INTO photoStations (photoId, stationId) VALUES (5, 266);
INSERT INTO photoStations (photoId, stationId) VALUES (6, 128);
INSERT INTO photoStations (photoId, stationId) VALUES (6, 225);
INSERT INTO photoStations (photoId, stationId) VALUES (6, 262);
INSERT INTO photoStations (photoId, stationId) VALUES (7, 200);
INSERT INTO photoStations (photoId, stationId) VALUES (7, 230);
INSERT INTO photoStations (photoId, stationId) VALUES (8, 147);


-- lines = require('./app/json/lines.json');
-- lines.forEach(function(line) {
--   console.log('("' + line.name + '", "' + line.color + '"),');
-- });
-- stations = require('./app/json/stations.json');
-- stations.forEach(function(s) {
--   console.log('("' + s.name + '"),');
-- });

-- stations.forEach(function(s) {
--   var lineIds = [];
--   s.lineIds.forEach(function(id) {
--     console.log('INSERT INTO tubeLineStations (stationId, lineId) VALUES (' + s.id + ', ' + id  + ');');
--   });
-- });

-- stations.forEach(function(s) {
--   var lineIds = [];
--   s.lineIds.forEach(function(id) {
--     console.log('INSERT INTO tubeLineStations (stationId, lineId) VALUES (' + s.id + ', ' + id  + ');');
--   });
-- });


-- photos = require('./app/json/photos.json');
-- photos.forEach(function(p) {
--   console.log('INSERT INTO photos (name, lat, lng, smallUrl, largeUrl, description) VALUES ("' + p.name + '", ' + p.lat + ', ' + p.lng + ', "' + p.smallUrl + '", "' + p.largeUrl + '", "' + p.description + '");');
-- });

-- photos.forEach(function(p) {
--   p.stationIds.forEach(function(id) {
--     console.log('INSERT INTO photoStations (photoId, stationId) VALUES (' + p.id + ', ' + id + ');');
--   });
-- });

-- stations.forEach(function(s) {
--   var lineIds = [];
--   s.lineIds.forEach(function(id) {
--     console.log('INSERT INTO tubeLineStations (stationId, lineId) VALUES (' + s.id + ', ' + id  + ');');
--   });
-- });

-- stations.forEach(function(s) {
--   var lineIds = [];
--   s.lineIds.forEach(function(id) {
--     console.log('INSERT INTO tubeLineStations (stationId, lineId) VALUES (' + s.id + ', ' + id  + ');');
--   });
-- });
