
INSERT INTO Staff VALUES ("53424", "WILLIAM", "MOORE", "MR", "CARER", "61 784 315 851", "williammoore@gmail.com");
INSERT INTO Staff VALUES ("94105", "ELIZABETH", "TAYLOR", "MRS", "CARER", "61 886 182 178", "elizabethtaylor@gmail.com");
INSERT INTO Staff VALUES ("30780", "DAVID", "ANDERSON", "MR", "CARER", "61 801 897 983", "davidanderson@gmail.com");
INSERT INTO Staff VALUES ("82420", "BARBARA", "THOMAS", "MRS", "CARER", "61 792 671 136", "barbarathomas@gmail.com");
INSERT INTO Staff VALUES ("95246", "RICHARD", "JACKSON", "MR", "CARER", "61 381 937 940", "richardjackson@gmail.com");

INSERT INTO Participant VALUES ("47582", "6065962115", "2020-06-22", "HEATHER", "MANNING", "heathermanning@gmail.com", "82420");
INSERT INTO Participant VALUES ("40445", "3458470319", "2018-11-25", "ABBEY", "POOPE", "abbeypoope@gmail.com", "53418");
INSERT INTO Participant VALUES ("95571", "3756784325", "2020-09-02", "SANTIAGO", "ODONNELL", "santiagoodonnell@gmail.com", NULL);
INSERT INTO Participant VALUES ("96923", "6977474047", "2019-07-30", "LOLA", "STEELE", "61 594 283 459", "61980");
INSERT INTO Participant VALUES ("40836", "6105857266", "2018-12-31", "ADITI", "BURCH", "61 382 183 021", "82420");
INSERT INTO Participant VALUES ("69652", "0342876538", "2018-01-06", "ELISHA", "IRWIN", "61 238 049 844", "53424");
INSERT INTO Participant VALUES ("17481", "2613191406", "2019-05-19", "ROBERT", "HURLEY", "@gmail.com", "77283");
INSERT INTO Participant VALUES ("24210", "8462771026", "2018-06-07", "LAURENCE", "MAYER", "laurencemayer@gmail.com", "82420");
INSERT INTO Participant VALUES ("80413", "9022370848", "2020-10-14", "PRIMROSE", "SHEPHERD", "61 987 727 384", "68504");
INSERT INTO Participant VALUES ("47292", "4282650518", "2018-03-02", "SANJEEV", "MCFARLAND", "61 348 133 745", "35765");
INSERT INTO Participant VALUES ("55297", "4211317109", "2018-09-27", "ZAYNE", "DODD", "zaynedodd@gmail.com", "84070");
INSERT INTO Participant VALUES ("49415", "5540913263", "2018-10-17", "MYRON", "LYNCH", "myronlynch@gmail.com", "22613");
INSERT INTO Participant VALUES ("71558", "0670493883", "2018-04-18", "KISHAN", "DOWLING", "kishandowling@gmail.com", NULL);

INSERT INTO Guardian VALUES ("61132", "SMITH", "JAMES", "61 492 317 236", "jamessmith@gmail.com");
INSERT INTO Guardian VALUES ("37205", "JOHNSON", "MARY", "61 056 255 173", "maryjohnson@gmail.com");
INSERT INTO Guardian VALUES ("02286", "WILLIAMS", "JOHN", "61 962 901 858", "johnwilliams@gmail.com");
INSERT INTO Guardian VALUES ("82349", "JONES", "PATRICIA", "61 922 466 961", "patriciajones@gmail.com");
INSERT INTO Guardian VALUES ("13263", "BROWN", "ROBERT", "61 556 566 236", "robertbrown@gmail.com");
INSERT INTO Guardian VALUES ("02572", "DAVIS", "JENNIFER", "61 787 186 452", "jenniferdavis@gmail.com");
INSERT INTO Guardian VALUES ("87887", "MILLER", "MICHAEL", "61 234 438 101", "michaelmiller@gmail.com");
INSERT INTO Guardian VALUES ("85880", "WILSON", "LINDA", "61 706 301 764", "lindawilson@gmail.com");
INSERT INTO Guardian VALUES ("32687", "ALLEN", "ANTHONY", "61 024 135 178", "anthonyallen@gmail.com");
INSERT INTO Guardian VALUES ("96570", "YOUNG", "BETTY", "61 165 462 046", "bettyyoung@gmail.com");
INSERT INTO Guardian VALUES ("77999", "HERNANDEZ", "DONALD", "61 178 510 170", "donaldhernandez@gmail.com");
INSERT INTO Guardian VALUES ("09221", "KING", "SANDRA", "61 932 918 494", "sandraking@gmail.com");
INSERT INTO Guardian VALUES ("67871", "WRIGHT", "MARK", "61 068 846 362", "markwright@gmail.com");
INSERT INTO Guardian VALUES ("21707", "LOPEZ", "ASHLEY", "61 944 644 025", "ashleylopez@gmail.com");
INSERT INTO Guardian VALUES ("69170", "HILL", "PAUL", "61 112 398 393", "paulhill@gmail.com");
INSERT INTO Guardian VALUES ("22420", "SCOTT", "DOROTHY", "61 524 848 322", "dorothyscott@gmail.com");
INSERT INTO Guardian VALUES ("14096", "GREEN", "STEVEN", "61 921 804 377", "stevengreen@gmail.com");
INSERT INTO Guardian VALUES ("30093", "ADAMS", "KIMBERLY", "61 251 913 697", "kimberlyadams@gmail.com");

INSERT INTO Category VALUES ("PH", "Physical", "Physical harm");
INSERT INTO Category VALUES ("PD", "Property Destruction", "Destroying property");
INSERT INTO Category VALUES ("SE", "Sexual", "Sexual actions");
INSERT INTO Category VALUES ("VE", "Verbal", "Verbal actions");

INSERT INTO Subcat VALUES ("HS", "Harm to self", "", "PH");
INSERT INTO Subcat VALUES ("HO", "Harm to others", "", "PH");
INSERT INTO Subcat VALUES ("HA", "Harm to animals", "", "PH");
INSERT INTO Subcat VALUES ("PR", "Private", "", "PD");
INSERT INTO Subcat VALUES ("PU", "Public", "", "PD");
INSERT INTO Subcat VALUES ("SE", "Self", "", "SE");
INSERT INTO Subcat VALUES ("OT", "Others", "", "SE");
INSERT INTO Subcat VALUES ("AB", "Abusive", "", "VE");
INSERT INTO Subcat VALUES ("DS", "Distress", "", "VE");



