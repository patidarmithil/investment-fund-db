-- Disable foreign key checks for safe insertion
SET FOREIGN_KEY_CHECKS = 0;

-- managers
INSERT INTO managers VALUES("MGR01","Rahul Sharma","LIC-2018-IN-001","rahul@alphaam.com","+91-9810000001","Mumbai");
INSERT INTO managers VALUES("MGR02","Anita Verma","LIC-2019-IN-023","anita@balancam.com","+91-9820000002","Delhi");
INSERT INTO managers VALUES("MGR03","David Brown","LIC-2017-US-110","david@globam.com","+1-202-555-0143","New York");
INSERT INTO managers VALUES("MGR04","Sneha Rao","LIC-2021-IN-305","sneha@esgam.com","+91-9830000003","Bangalore");
INSERT INTO managers VALUES("MGR05","Marco Li","LIC-2022-US-412","marco@emgfunds.com","+1-415-555-0199","Singapore");
INSERT INTO managers VALUES("MGR06","Leela Menon","LIC-2016-IN-099","leela@reitman.com","+91-9840000004","Chennai");
INSERT INTO managers VALUES("MGR07","Olivia King","LIC-2020-UK-001","olivia@globalam.co.uk","+44-20-7946-0007","London");
INSERT INTO managers VALUES("MGR08","Arjun Patel","LIC-2023-IN-501","arjun@alphaam.com","+91-9850000005","Mumbai");
INSERT INTO managers VALUES("MGR09","Nisha Gupta","LIC-2015-IN-078","nisha@wealth.co","+91-9860000006","Delhi");
INSERT INTO managers VALUES("MGR10","Sameer Khan","LIC-2014-IN-045","sameer@capitalm.com","+91-9870000007","Mumbai");

-- funds
INSERT INTO funds VALUES("F001","Alpha Growth Fund","Equity","2018-04-15","INR","MGR01","Active");
INSERT INTO funds VALUES("F002","Balanced Income Fund","Balanced","2020-01-10","INR","MGR02","Active");
INSERT INTO funds VALUES("F003","Global Opportunities","Equity","2019-09-01","USD","MGR03","Active");
INSERT INTO funds VALUES("F004","Short Term Debt","Debt","2021-06-20","INR","MGR02","Closed");
INSERT INTO funds VALUES("F005","ESG Future Fund","Equity","2022-11-05","INR","MGR04","Active");
INSERT INTO funds VALUES("F006","Quarterly Income Fund","Hybrid","2017-03-30","INR","MGR01","Active");
INSERT INTO funds VALUES("F007","International Bond Fund","Debt","2016-08-12","USD","MGR03","Active");
INSERT INTO funds VALUES("F008","Emerging Markets Fund","Equity","2023-02-14","USD","MGR05","Active");
INSERT INTO funds VALUES("F009","Ultra Short Cash","Debt","2024-05-01","INR","MGR02","Active");
INSERT INTO funds VALUES("F010","Real Estate REIT","Alternate","2020-07-21","INR","MGR06","Active");

-- investors
INSERT INTO investors VALUES("I001","Ashok Mehta","Individual","ashok@example.com","+91-9000000001","Verified","India");
INSERT INTO investors VALUES("I002","BlueTech Pvt Ltd","Corporate","contact@bluetech.com","+91-9000000002","Verified","India");
INSERT INTO investors VALUES("I003","Sarita Nair","Individual","sarita@example.com","+91-9000000003","Pending","India");
INSERT INTO investors VALUES("I004","GreenFuture NGO","Institutional","info@greenfut.org","+91-9000000004","Verified","India");
INSERT INTO investors VALUES("I005","Rajiv Kapoor","Individual","rajiv@example.com","+91-9000000005","Verified","India");
INSERT INTO investors VALUES("I006","Oceanic Holdings Ltd","Corporate","invest@oceanic.com","+44-20-1234-5678","Verified","UK");
INSERT INTO investors VALUES("I007","Meher Family Trust","Trust","trust@meher.org","+91-9000000006","Verified","India");
INSERT INTO investors VALUES("I008","John Lee","Individual","john@example.com","+1-310-555-0123","Verified","USA");
INSERT INTO investors VALUES("I009","Sumit Electronics","Corporate","ceo@sumit.com","+91-9000000007","Pending","India");
INSERT INTO investors VALUES("I010","Ananya Roy","Individual","ananya@example.com","+91-9000000008","Verified","India");

-- assets
INSERT INTO assets VALUES("AS001","RELI","Reliance Industries","Equity","NSE","India");
INSERT INTO assets VALUES("AS002","TCS","Tata Consultancy Services","Equity","NSE","India");
INSERT INTO assets VALUES("AS003","SBIN","State Bank of India","Equity","NSE","India");
INSERT INTO assets VALUES("AS004","US10Y","US 10 Year Bond","FixedIncome","US-TREASURY","USA");
INSERT INTO assets VALUES("AS005","GOOGL","Alphabet Inc","Equity","NASDAQ","USA");
INSERT INTO assets VALUES("AS006","HDFC","Bank HDFC","Equity","NSE","India");
INSERT INTO assets VALUES("AS007","INFY","Infosys","Equity","NSE","India");
INSERT INTO assets VALUES("AS008","GLD","SPDR Gold Trust","Commodity","NYSE","USA");
INSERT INTO assets VALUES("AS009","EMERG-ETF","EM Markets ETF","ETF","NYSE","USA");
INSERT INTO assets VALUES("AS010","REIT-IND","India REIT","RealEstate","NSE","India");

-- users_roles
INSERT INTO users_roles VALUES("U001","admin_alpha","Admin Alpha","Admin");
INSERT INTO users_roles VALUES("U002","ops_manager","Operations Manager","Operations");
INSERT INTO users_roles VALUES("U003","trade_exec","Trader Exec","Trader");
INSERT INTO users_roles VALUES("U004","audit_view","Auditor One","Auditor");
INSERT INTO users_roles VALUES("U005","rm_rahul","Relationship Rahul","RelationshipManager");
INSERT INTO users_roles VALUES("U006","readonly_user","Read Only","Viewer");
INSERT INTO users_roles VALUES("U007","kyc_officer","KYC Officer","KYC");
INSERT INTO users_roles VALUES("U008","compliance_com","Compliance Team","Compliance");
INSERT INTO users_roles VALUES("U009","pm_anita","Portfolio Anita","PortfolioManager");
INSERT INTO users_roles VALUES("U010","guest_user","Guest User","Guest");

-- investor_accounts
INSERT INTO investor_accounts VALUES("A1001","I001","F001","2019-05-02","INR",500000,12500.00);
INSERT INTO investor_accounts VALUES("A1002","I002","F001","2020-08-10","INR",2500000,62500.00);
INSERT INTO investor_accounts VALUES("A1003","I003","F002","2021-03-05","INR",100000,2000.00);
INSERT INTO investor_accounts VALUES("A1004","I004","F005","2022-12-01","INR",750000,15000.00);
INSERT INTO investor_accounts VALUES("A1005","I005","F006","2018-09-12","INR",200000,5000.00);
INSERT INTO investor_accounts VALUES("A1006","I006","F003","2020-11-20","USD",100000,2500.00);
INSERT INTO investor_accounts VALUES("A1007","I007","F001","2021-07-07","INR",300000,7500.00);
INSERT INTO investor_accounts VALUES("A1008","I008","F003","2022-02-14","USD",50000,1250.00);
INSERT INTO investor_accounts VALUES("A1009","I009","F009","2024-06-01","INR",1000000,10000.00);
INSERT INTO investor_accounts VALUES("A1010","I010","F005","2023-03-30","INR",150000,3000.00);

-- transactions
INSERT INTO transactions VALUES("T0001","A1001","Deposit",100000,"INR","2023-01-10","Completed",NULL);
INSERT INTO transactions VALUES("T0002","A1002","Deposit",500000,"INR","2023-02-15","Completed",NULL);
INSERT INTO transactions VALUES("T0003","A1001","Redemption",20000,"INR","2023-05-05","Completed",NULL);
INSERT INTO transactions VALUES("T0004","A1006","Deposit",25000,"USD","2022-12-01","Completed",NULL);
INSERT INTO transactions VALUES("T0005","A1009","Deposit",1000000,"INR","2024-06-01","Pending",NULL);
INSERT INTO transactions VALUES("T0006","A1010","Fee",1500,"INR","2024-03-31","Completed",NULL);
INSERT INTO transactions VALUES("T0007","A1003","Deposit",100000,"INR","2021-03-06","Completed",NULL);
INSERT INTO transactions VALUES("T0008","A1004","Deposit",750000,"INR","2022-12-02","Completed",NULL);
INSERT INTO transactions VALUES("T0009","A1001","Transfer",50000,"INR","2023-09-10","Completed",NULL);
INSERT INTO transactions VALUES("T0010","A1007","Transfer",50000,"INR","2023-09-10","Completed",NULL);
UPDATE transactions SET related_txn="T0010" WHERE txn_id="T0009";
UPDATE transactions SET related_txn="T0009" WHERE txn_id="T0010";

-- fund_holdings
INSERT INTO fund_holdings VALUES("H0001","F001","AS001",15000,2300.50,"2025-10-31");
INSERT INTO fund_holdings VALUES("H0002","F001","AS002",5000,3200.00,"2025-10-31");
INSERT INTO fund_holdings VALUES("H0003","F002","AS004",1000,100.00,"2025-10-31");
INSERT INTO fund_holdings VALUES("H0004","F003","AS005",800,140.25,"2025-10-31");
INSERT INTO fund_holdings VALUES("H0005","F005","AS008",1200,170.00,"2025-10-31");
INSERT INTO fund_holdings VALUES("H0006","F006","AS006",6000,1350.75,"2025-10-31");
INSERT INTO fund_holdings VALUES("H0007","F007","AS004",2000,99.50,"2025-10-31");
INSERT INTO fund_holdings VALUES("H0008","F010","AS010",300,5000.00,"2025-10-31");
INSERT INTO fund_holdings VALUES("H0009","F001","AS007",7000,900.00,"2025-10-31");
INSERT INTO fund_holdings VALUES("H0010","F008","AS009",1500,45.00,"2025-10-31");

-- investor_contacts
INSERT INTO investor_contacts VALUES("C0001","I001","phone","+91-9000000001",TRUE);
INSERT INTO investor_contacts VALUES("C0002","I001","email","ashok@example.com",TRUE);
INSERT INTO investor_contacts VALUES("C0003","I002","email","contact@bluetech.com",TRUE);
INSERT INTO investor_contacts VALUES("C0004","I002","phone","+91-9000000002",TRUE);
INSERT INTO investor_contacts VALUES("C0005","I003","phone","+91-9000000003",TRUE);
INSERT INTO investor_contacts VALUES("C0006","I003","email","sarita@example.com",FALSE);
INSERT INTO investor_contacts VALUES("C0007","I004","phone","+91-9000000004",TRUE);
INSERT INTO investor_contacts VALUES("C0008","I006","email","invest@oceanic.com",TRUE);
INSERT INTO investor_contacts VALUES("C0009","I007","phone","+91-9000000006",TRUE);
INSERT INTO investor_contacts VALUES("C0010","I010","email","ananya@example.com",TRUE);

 audit_log
INSERT INTO audit_log VALUES("L0001","U003","INSERT","transactions","T0001",NULL,"{\"amount\":100000,\"status\":\"Completed\"}",CURRENT_TIMESTAMP);
INSERT INTO audit_log VALUES("L0002","U002","UPDATE","accounts","A1001","{\"units\":12400}","{\"units\":12500}",CURRENT_TIMESTAMP);
INSERT INTO audit_log VALUES("L0003","U007","UPDATE","investors","I003","{\"kyc_status\":\"Pending\"}","{\"kyc_status\":\"Verified\"}",CURRENT_TIMESTAMP);
INSERT INTO audit_log VALUES("L0004","U004","SELECT","investors","I002",NULL,NULL,CURRENT_TIMESTAMP);
INSERT INTO audit_log VALUES("L0005","U009","UPDATE","fund_holdings","H0001","{\"quantity\":14800}","{\"quantity\":15000}",CURRENT_TIMESTAMP);
INSERT INTO audit_log VALUES("L0006","U001","DELETE","transactions","T0011","{\"amount\":50000}","{\"deleted\":true}",CURRENT_TIMESTAMP);
INSERT INTO audit_log VALUES("L0007","U003","INSERT","transactions","T0009",NULL,"{\"amount\":50000,\"status\":\"Completed\"}",CURRENT_TIMESTAMP);
INSERT INTO audit_log VALUES("L0008","U002","INSERT","funds","F009",NULL,"{\"fund_name\":\"Ultra Short Cash\"}",CURRENT_TIMESTAMP);
INSERT INTO audit_log VALUES("L0009","U007","UPDATE","investors","I009","{\"kyc_status\":\"Pending\"}","{\"kyc_status\":\"Verified\"}",CURRENT_TIMESTAMP);
INSERT INTO audit_log VALUES("L0010","U002","UPDATE","funds","F004","{\"status\":\"Active\"}","{\"status\":\"Closed\"}",CURRENT_TIMESTAMP);

-- Re-enable foreign key checks
SET FOREIGN_KEY_CHECKS = 1;
