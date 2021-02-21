/* DATABASE */

CREATE DATABASE IF NOT EXISTS heros;

USE heros;

/* TABLES */
-- ---
-- Table 'Characters'
--
-- ---

DROP TABLE IF EXISTS Characters;

CREATE TABLE Characters (
  id INTEGER AUTO_INCREMENT,
  name VARCHAR(20),
  description VARCHAR(300),
  xp INTEGER,
  race VARCHAR(20),
  portOfOrigin VARCHAR(100),
  characterrank VARCHAR(20),
  PRIMARY KEY (id)
);

-- -- ---
-- -- Table 'Skills'
-- --
-- -- ---

DROP TABLE IF EXISTS Skills;

CREATE TABLE Skills (
  id INTEGER  AUTO_INCREMENT,
  skillName VARCHAR(20),
  PRIMARY KEY (id)
);

-- -- ---
-- -- Table 'Character Skills'
-- --
-- -- ---

DROP TABLE IF EXISTS CharacterSkills;

CREATE TABLE CharacterSkills (
  id INTEGER  AUTO_INCREMENT,
  charID INTEGER,
  skillID INTEGER,
  charlevel INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (charID) REFERENCES Characters (id),
  FOREIGN KEY (skillID) REFERENCES Skills (id)
);

-- -- ---
-- -- Table 'Hinderances'
-- --
-- -- ---

DROP TABLE IF EXISTS Hinderances;

CREATE TABLE Hinderances (
  id INTEGER  AUTO_INCREMENT,
  name VARCHAR(100),
  description VARCHAR(300),
  PRIMARY KEY (id)
);

-- -- ---
-- -- Table 'Character Hinderances'
-- --
-- -- ---

DROP TABLE IF EXISTS CharacterHinderances;

CREATE TABLE CharacterHinderances (
  id INTEGER  AUTO_INCREMENT,
  charID INTEGER ,
  hinderanceID INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (charID) REFERENCES Characters (id),
  FOREIGN KEY (hinderanceID) REFERENCES Hinderances (id)
);

-- -- ---
-- -- Table 'Edges'
-- --
-- -- ---

DROP TABLE IF EXISTS Edges;

CREATE TABLE Edges (
  id INTEGER  AUTO_INCREMENT,
  name VARCHAR(100),
  description VARCHAR(300),
  PRIMARY KEY (id)
);

-- -- ---
-- -- Table 'Character Edges'
-- --
-- -- ---

DROP TABLE IF EXISTS CharacterEdges;

CREATE TABLE CharacterEdges (
  id INTEGER  AUTO_INCREMENT,
  charID INTEGER,
  edgeID INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (charID) REFERENCES Characters (id),
  FOREIGN KEY (edgeID) REFERENCES Edges (id)
);
-- -- ---
-- -- Table 'Equipment'
-- --
-- -- ---

DROP TABLE IF EXISTS Equipment;

CREATE TABLE Equipment (
  id INTEGER  AUTO_INCREMENT,
  name VARCHAR(100),
  PRIMARY KEY (id)
);

-- -- ---
-- -- Table 'Character Equipment'
-- --
-- -- ---

DROP TABLE IF EXISTS CharacterEquipment;

CREATE TABLE CharacterEquipment (
  id INTEGER  AUTO_INCREMENT,
  charID INTEGER,
  equipID INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (charID) REFERENCES Characters (id),
  FOREIGN KEY (equipID) REFERENCES Equipment (id)
);


-- -- ---
-- -- Table 'Equipment Skill Bonus'
-- --
-- -- ---

DROP TABLE IF EXISTS EquipmentSkillBonus;

CREATE TABLE EquipmentSkillBonus (
  id INTEGER  AUTO_INCREMENT,
  skillID INTEGER,
  bonus INTEGER,
  equipID INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (skillID) REFERENCES Skills (id),
  FOREIGN KEY (equipID) REFERENCES Equipment (id)
);

-- -- ---
-- -- Table 'Attributes'
-- --
-- -- ---

DROP TABLE IF EXISTS Attributes;

CREATE TABLE Attributes (
  id INTEGER  AUTO_INCREMENT,
  name VARCHAR(100),
  PRIMARY KEY (id)
);

-- -- ---
-- -- Table 'Character Attributes'
-- --
-- -- ---

DROP TABLE IF EXISTS CharacterAttributes;

CREATE TABLE CharacterAttributes (
  id INTEGER  AUTO_INCREMENT,
  charID INTEGER ,
  attributeID INTEGER,
  charlevel INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (charID) REFERENCES Characters (id),
  FOREIGN KEY (attributeID) REFERENCES Attributes (id)
);

-- -- ---
-- -- Table 'Equipment Hinderance Bonus'
-- --
-- -- ---

DROP TABLE IF EXISTS EquipmentHinderanceBonus;

CREATE TABLE EquipmentHinderanceBonus (
  id INTEGER  AUTO_INCREMENT,
  hinderanceID INTEGER,
  equipID INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (hinderanceID) REFERENCES Hinderances (id),
  FOREIGN KEY (equipID) REFERENCES Equipment (id)
);

-- -- ---
-- -- Table 'Equipment Edge Bonus'
-- --
-- -- ---

DROP TABLE IF EXISTS EquipmentEdgeBonus;

CREATE TABLE EquipmentEdgeBonus (
  id INTEGER  AUTO_INCREMENT,
  edgeID INTEGER,
  equipID INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (edgeID) REFERENCES Edges (id),
  FOREIGN KEY (equipID) REFERENCES Equipment (id)
);

-- -- ---
-- -- Table 'Equipment Attribute Bonus'
-- --
-- -- ---

DROP TABLE IF EXISTS EquipmentAttributeBonus;

CREATE TABLE EquipmentAttributeBonus (
  id INTEGER  AUTO_INCREMENT,
  attributeID INTEGER,
  equipID INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (attributeID) REFERENCES Attributes (id),
  FOREIGN KEY (equipID) REFERENCES Equipment (id)
);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE Characters ENGINE=InnoDB  CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Skills ENGINE=InnoDB  CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Character Skills ENGINE=InnoDB  CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Hinderances ENGINE=InnoDB  CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Character Hinderances ENGINE=InnoDB  CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Edges ENGINE=InnoDB  CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Character Edges ENGINE=InnoDB  CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Character Equipment ENGINE=InnoDB  CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Equipment ENGINE=InnoDB  CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Equipment Skill Bonus ENGINE=InnoDB  CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Attributes ENGINE=InnoDB  CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Character Attributes ENGINE=InnoDB  CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Equipment Hinderance Bonus ENGINE=InnoDB  CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Equipment Edge Bonus ENGINE=InnoDB  CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Equipment Attribute Bonus ENGINE=InnoDB  CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO Characters (id,name,description,xp,race,portOfOrigin,rank) VALUES
-- ('','','','','','','');
-- INSERT INTO Skills (id,skillName) VALUES
-- ('','');
-- INSERT INTO Character Skills (id,charID,skillID,level) VALUES
-- ('','','','');
-- INSERT INTO Hinderances (id,name,description) VALUES
-- ('','','');
-- INSERT INTO Character Hinderances (id,charID,hinderanceID) VALUES
-- ('','','');
-- INSERT INTO Edges (id,name,description) VALUES
-- ('','','');
-- INSERT INTO Character Edges (id,charID,edgeID) VALUES
-- ('','','');
-- INSERT INTO Character Equipment (id,charID,equipID) VALUES
-- ('','','');
-- INSERT INTO Equipment (id,name) VALUES
-- ('','');
-- INSERT INTO Equipment Skill Bonus (id,skillID,bonus,equipID) VALUES
-- ('','','','');
-- INSERT INTO Attributes (id,name) VALUES
-- ('','');
-- INSERT INTO Character Attributes (id,charID,attributeID,level) VALUES
-- ('','','','');
-- INSERT INTO Equipment Hinderance Bonus (id,hinderanceID,equipID) VALUES
-- ('','','');
-- INSERT INTO Equipment Edge Bonus (id,edgeID,equipID) VALUES
-- ('','','');
-- INSERT INTO Equipment Attribute Bonus (id,attributeID,equipID) VALUES
-- ('','','');