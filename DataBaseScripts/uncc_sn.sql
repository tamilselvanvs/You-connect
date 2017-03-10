/********************************************************
* This script creates the database named uncc_social_network 
*********************************************************/
DROP DATABASE IF EXISTS uncc_social_network;
CREATE DATABASE uncc_social_network;
USE uncc_social_network;

-- create the tables for the database
CREATE TABLE members (
  email_id           VARCHAR(255)   PRIMARY KEY     UNIQUE,
  profile_id         INT            UNIQUE	AUTO_INCREMENT,
  first_name_s       VARCHAR(255)   NOT NULL,
  last_name_s        VARCHAR(255)   NOT NULL,
  date_of_birth      DATETIME                     DEFAULT NULL,
  gender             VARCHAR(10)    NOT NULL,
  mobile_no          VARCHAR(10)    NOT NULL      UNIQUE,
  searchClob		 VARCHAR(4500)  NOT NULL
);

CREATE TABLE accounts (
  account_id         INT            PRIMARY KEY AUTO_INCREMENT,
  email_id           VARCHAR(255)   NOT NULL,
  passwords          VARCHAR(255)   NOT NULL,
  account_flag       INT            NOT NULL,
  CONSTRAINT accounts_fk_members
    FOREIGN KEY (email_id)
    REFERENCES members (email_id)
);

CREATE TABLE admins (
  admins_id           INT            PRIMARY KEY   AUTO_INCREMENT,
  email_id        	  VARCHAR(255)   NOT NULL      UNIQUE,
  CONSTRAINT admins_fk_members
    FOREIGN KEY (email_id)
    REFERENCES members (email_id)
);

CREATE TABLE groups (
  group_id           INT            PRIMARY KEY   AUTO_INCREMENT,
  group_title        VARCHAR(255)   NOT NULL      UNIQUE
);

CREATE TABLE accountdesc (
  email_id          VARCHAR(255)   NOT NULL ,     
  friend_id         VARCHAR(255)   NOT NULL,
  group_id          INT            ,
  document_id       INT            ,
  forum_id          INT            ,
  self_flag			INT			   NOT NULL default 0,
  friends_flag		INT			   NOT NULL default 0,           
   CONSTRAINT accountdesc_fk_members
    FOREIGN KEY (email_id)
    REFERENCES members (email_id),
    PRIMARY KEY(email_id,friend_id)
);


CREATE TABLE groupsdesc (
  participant_id           INT            PRIMARY KEY   AUTO_INCREMENT,
  group_id       		   INT            NOT NULL,
  content                  VARCHAR(255)   NOT NULL,
  CONSTRAINT groupsdesc_fk_groups
    FOREIGN KEY (group_id)
    REFERENCES groups (group_id)
);


