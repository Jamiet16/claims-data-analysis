-- View all claims
SELECT * FROM claims_sample;

-- Total claim amount
SELECT SUM(amount) AS total_amount
FROM claims_sample;

-- Total amount by claim type
SELECT claim_type, SUM(amount) AS total_amount
FROM claims_sample
GROUP BY claim_type;

-- Count of claims by status
SELECT status, COUNT(*) AS claim_count
FROM claims_sample
GROUP BY status;

-- Average claim amount by claim type
SELECT claim_type, AVG(amount) AS avg_amount
FROM claims_sample
GROUP BY claim_type;

-- Approved claims only
SELECT *
FROM claims_sample
WHERE status = 'Approved';
