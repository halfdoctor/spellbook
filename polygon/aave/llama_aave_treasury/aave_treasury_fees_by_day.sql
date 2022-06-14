CREATE SCHEMA IF NOT EXISTS aave;

CREATE TABLE IF NOT EXISTS aave.aave_treasury_fees_by_day (   
	day timestamptz,
	contract_address bytea,
	borrow_fees_originated numeric,
	repay_fees numeric,
	liquidation_fees numeric,
	flashloan_v1_fees numeric,
	flashloan_v2_fees numeric,
	swap_fees numeric,
	lend_burn_fees numeric,
	deployer_in numeric,
	version text,
		PRIMARY KEY (day, contract_address)
);

CREATE INDEX IF NOT EXISTS llama_aave_treasury_fees_by_day_day_address_version_idx ON aave.aave_treasury_fees_by_day (day,contract_address, version);
CREATE INDEX IF NOT EXISTS llama_aave_treasury_fees_by_day_day_address_idx ON aave.aave_treasury_fees_by_day (day,contract_address);
CREATE INDEX IF NOT EXISTS llama_aave_treasury_fees_by_day_day_idx ON aave.aave_treasury_fees_by_day (day);
CREATE INDEX IF NOT EXISTS llama_aave_treasury_fees_by_day_address_idx ON aave.aave_treasury_fees_by_day (contract_address);
