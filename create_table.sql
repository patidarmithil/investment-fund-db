-- Disable foreign key checks temporarily for smooth creation
SET FOREIGN_KEY_CHECKS = 0;

-- managers
CREATE TABLE managers (
  manager_id CHAR(6) PRIMARY KEY,
  name VARCHAR(40) NOT NULL,
  license_no VARCHAR(20) UNIQUE NOT NULL,
  email VARCHAR(50) NOT NULL,
  phone VARCHAR(20),
  office VARCHAR(30)
);

-- funds
CREATE TABLE funds (
  fund_id CHAR(5) PRIMARY KEY,
  fund_name VARCHAR(40) NOT NULL,
  fund_type VARCHAR(20) NOT NULL,
  inception_date DATE NOT NULL,
  base_currency CHAR(3) NOT NULL,
  manager_id CHAR(6) NOT NULL,
  status VARCHAR(10) NOT NULL,
  FOREIGN KEY (manager_id) REFERENCES managers(manager_id)
);

-- investors
CREATE TABLE investors (
  investor_id CHAR(5) PRIMARY KEY,
  name VARCHAR(40) NOT NULL,
  investor_type VARCHAR(20) NOT NULL,
  primary_email VARCHAR(50) NOT NULL UNIQUE,
  primary_phone VARCHAR(20),
  kyc_status VARCHAR(15) CHECK (kyc_status IN ('Verified','Pending')),
  country VARCHAR(30) NOT NULL
);

-- assets
CREATE TABLE assets (
  asset_id CHAR(6) PRIMARY KEY,
  ticker VARCHAR(15) UNIQUE NOT NULL,
  asset_name VARCHAR(40) NOT NULL,
  asset_type VARCHAR(20) NOT NULL,
  market VARCHAR(15) NOT NULL,
  country VARCHAR(30)
);

-- users_roles
CREATE TABLE users_roles (
  user_id CHAR(5) PRIMARY KEY,
  username VARCHAR(30) UNIQUE NOT NULL,
  full_name VARCHAR(40) NOT NULL,
  role VARCHAR(25) NOT NULL
);

-- investor_accounts
CREATE TABLE investor_accounts (
  account_id CHAR(6) PRIMARY KEY,
  investor_id CHAR(5) NOT NULL,
  fund_id CHAR(5) NOT NULL,
  opened_date DATE NOT NULL,
  currency CHAR(3) NOT NULL,
  total_invested NUMERIC(14,2) DEFAULT 0 CHECK (total_invested >= 0),
  units DECIMAL(14,2) DEFAULT 0,
  FOREIGN KEY (investor_id) REFERENCES investors(investor_id),
  FOREIGN KEY (fund_id) REFERENCES funds(fund_id)
);

-- transactions
CREATE TABLE transactions (
  txn_id CHAR(6) PRIMARY KEY,
  account_id CHAR(6) NOT NULL,
  txn_type VARCHAR(15) NOT NULL CHECK (txn_type IN ('Deposit','Redemption','Fee','Transfer')),
  amount DECIMAL(14,2) CHECK (amount > 0),
  currency CHAR(3) NOT NULL,
  txn_date DATE NOT NULL,
  status VARCHAR(15) CHECK (status IN ('Pending','Completed','Failed')),
  related_txn CHAR(6),
  FOREIGN KEY (account_id) REFERENCES investor_accounts(account_id),
  FOREIGN KEY (related_txn) REFERENCES transactions(txn_id)
);

-- fund_holdings
CREATE TABLE fund_holdings (
  holding_id CHAR(6) PRIMARY KEY,
  fund_id CHAR(5) NOT NULL,
  asset_id CHAR(6) NOT NULL,
  quantity DECIMAL(16,2) CHECK (quantity >= 0),
  avg_price DECIMAL(10,2) CHECK (avg_price >= 0),
  as_of_date DATE NOT NULL,
  FOREIGN KEY (fund_id) REFERENCES funds(fund_id),
  FOREIGN KEY (asset_id) REFERENCES assets(asset_id)
);

-- investor_contacts
CREATE TABLE investor_contacts (
  contact_id CHAR(6) PRIMARY KEY,
  investor_id CHAR(5) NOT NULL,
  contact_type VARCHAR(10) CHECK (contact_type IN ('phone','email')),
  contact_value VARCHAR(50) NOT NULL,
  is_primary BOOLEAN DEFAULT FALSE,
  FOREIGN KEY (investor_id) REFERENCES investors(investor_id)
);

-- audit_log
CREATE TABLE audit_log (
  log_id CHAR(6) PRIMARY KEY,
  user_id CHAR(5) NOT NULL,
  action VARCHAR(15) NOT NULL CHECK (action IN ('INSERT','UPDATE','DELETE','SELECT')),
  object_type VARCHAR(25) NOT NULL,
  object_id VARCHAR(15) NOT NULL,
  old_value TEXT,
  new_value TEXT,
  log_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users_roles(user_id)
);

-- Re-enable foreign key checks
SET FOREIGN_KEY_CHECKS = 1;
