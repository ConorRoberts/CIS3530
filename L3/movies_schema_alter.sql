
/* Add keys for our tables */
alter table Movie add primary key (mID); 
alter table Reviewer add primary key (rID);
alter table Rating 
        ADD CONSTRAINT fk1 foreign key (rID) references Reviewer(rID), 
        ADD CONSTRAINT fk2 foreign key (mID) references Movie(mID);


