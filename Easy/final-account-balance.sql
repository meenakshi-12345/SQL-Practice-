-- Problem: Final Account Balance
-- Platform:  DataLemur 
-- Difficulty: Easy
-- Description:
-- Calculate the final balance for each account.
-- Deposits increase balance, withdrawals decrease balance.

SELECT 
    account_id, 
    (deposit_amount - withdrawal_amount) AS final_balance
FROM (
    SELECT 
        account_id, 
        SUM(CASE 
                WHEN transaction_type = 'Deposit' 
                THEN amount 
                ELSE 0 
            END) AS deposit_amount,
        SUM(CASE 
                WHEN transaction_type = 'Withdrawal' 
                THEN amount 
                ELSE 0 
            END) AS withdrawal_amount
    FROM transactions 
    GROUP BY account_id 
) t;