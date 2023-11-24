use db114;

--1
GO
CREATE TRIGGER limit_check 
ON transactions FOR INSERT 
AS
BEGIN

DECLARE @amount  money
SET @amount = (SELECT amount FROM inserted)

DECLARE @balance money
SET @balance = (SELECT SUM(inserted.amount) FROM credit_card, inserted WHERE inserted.id = credit_card.id)

DECLARE @credit_limit money
SET @credit_limit = (SELECT credit_limit FROM credit_card, inserted WHERE inserted.id = credit_card.id)

IF @balance + @amount > @credit_limit
	BEGIN
		ROLLBACK TRANSACTION
	END
END

GO


--2

GO

CREATE PROCEDURE transactions_percentages(@credit_card int, @month int)
AS BEGIN

SET NOCOUNT ON;

DECLARE @next as float = 0;
DECLARE @sum as float = 0;

DECLARE percent1 CURSOR FOR SELECT amount FROM transactions 
WHERE @month = MONTH(pay_date) AND DAY(pay_date) <= 10 AND @credit_card = id

OPEN percent1;
FETCH NEXT FROM percent1 INTO @next
WHILE @@FETCH_STATUS = 0
BEGIN
    SET @sum += 0.01 * @next;
    FETCH NEXT FROM percent1 INTO @next;
END 

CLOSE percent1;

DECLARE percent2 CURSOR FOR SELECT amount FROM transactions 
WHERE @month = MONTH(pay_date) AND DAY(pay_date) > 10 AND DAY(pay_date) <= 20 AND @credit_card = id

OPEN percent2;
FETCH NEXT FROM percent2 INTO @next
WHILE @@FETCH_STATUS = 0
BEGIN
    SET @sum += 0.02 * @next;
    FETCH NEXT FROM percent2 INTO @next;
END

CLOSE percent2;

DECLARE percent3 CURSOR FOR SELECT amount FROM transactions 
WHERE @month = MONTH(pay_date) AND DAY(pay_date) > 20 AND @credit_card = id 

OPEN percent3;
FETCH NEXT FROM percent3 INTO @next
WHILE @@FETCH_STATUS = 0 
BEGIN
    SET @sum += 0.03 * @next;
    FETCH NEXT FROM percent3 INTO @next;
END

CLOSE percent3;

PRINT @sum;


DEALLOCATE percent1;
DEALLOCATE percent2;
DEALLOCATE percent3;


END

GO


EXEC transactions_percentages @credit_card = 99007, @month = 12;

EXEC transactions_percentages @credit_card = 99001, @month = 3;
