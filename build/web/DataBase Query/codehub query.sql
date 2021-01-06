/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Akshay Patidar
 * Created: 28 Feb, 2020
 */

 11 .  create table QuizJavaTopic (topicname varchar(200));
        
        
         1.  create table quizjavatopicques (question varchar(300),option1 varchar(200),option2 varchar(200),option3 varchar(200),option4 varchar(200),answer varchar(200),topic varchar(100));
         2.  alter table quizjavatopicques add topic varchar(100);
         3.  alter table quizjavatopicques add foreign key (topic) references quizjavatopic(topicname);
    
         create table QuizLanguage (languagename varchar(100),logo longblob);


//store user comment
create table comment(repo varchar(150),name varchar(100),email varchar(150),comment longtext,primary key(repo));
 create table comment(id int(10) auto_increment primary key,dt varchar(100),repo varchar(150),name varchar(100),email varchar(150),comment longtext);