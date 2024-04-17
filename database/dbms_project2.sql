--Procedure to insert a new member

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE InsertMember(
    p_FirstName IN VARCHAR2,
    p_LastName IN VARCHAR2,
    p_Email IN VARCHAR2,
    p_password IN OUT VARCHAR2
)
IS
    v_MemberID INT;
BEGIN
    -- Check if the email has the extension iitbbs.ac.in
    IF NOT REGEXP_LIKE(p_Email, '^[a-zA-Z0-9._%+-]+@iitbbs\.ac\.in$') THEN
        p_password := 'Email must have the extension iitbbs.ac.in';
        RETURN; -- Exit the procedure if email validation fails
    END IF;

    -- Get the next memberID from the sequence
    SELECT COALESCE(MAX(MemberID), 0) INTO v_MemberID FROM Members;
    v_MemberID := v_MemberID + 1;
    
    -- Insert the data into the Members table
    INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
    VALUES (v_MemberID, p_FirstName, p_LastName, p_Email, p_password, 'User');
    
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Member inserted successfully with MemberID: ' || v_MemberID);
    
    -- Reset password to NULL if successful
    p_password := 'OKAY';
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        p_password := 'Error: ' || SQLERRM; -- Store the error message in the password parameter
END;
/

DECLARE
    v_password VARCHAR2(200) := 'password'; -- Initialize the password variable
BEGIN
    InsertMember(p_FirstName => 'John', p_LastName => 'Doe', p_Email => 'john.doe@iitbbs.ac.in', p_password => v_password); -- Call the procedure
    DBMS_OUTPUT.PUT_LINE(v_password); -- Display the password field, which now contains the error message
END;
/


--Procedure to insert a new item
CREATE OR REPLACE PROCEDURE InsertItem(
    p_ItemName IN OUT VARCHAR2, -- Changed to IN OUT parameter
    p_Description IN VARCHAR2,
    p_Version IN VARCHAR2,
    p_Price IN NUMBER,
    p_CategoryName IN VARCHAR2,
    p_Consumability IN CHAR,
    p_Quantity IN NUMBER
)
IS
    v_CategoryID INT;
    v_ItemID INT;
    v_maxCategoryID INT;
BEGIN
    -- Check if Consumability is either 'Y' or 'N'
    IF UPPER(p_Consumability) NOT IN ('Y', 'N') THEN
        p_ItemName := 'Consumability must be either Y or N'; -- Store error message in p_ItemName
        RETURN;
    END IF;

    -- Check if the Category exists in the Categories table
    BEGIN
        SELECT CategoryID INTO v_CategoryID
        FROM Categories
        WHERE CategoryName = p_CategoryName;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            SELECT COALESCE(MAX(CategoryID), 0) INTO v_maxCategoryID FROM Categories;
            v_maxCategoryID := v_maxCategoryID + 1;
            INSERT INTO Categories (CategoryID, CategoryName)
            VALUES (v_maxCategoryID, p_CategoryName);
            v_CategoryID := v_maxCategoryID;
    END;

    -- Get the next ItemID from the sequence
    SELECT COALESCE(MAX(ItemID), 0) INTO v_ItemID FROM Items;
    v_ItemID := v_ItemID + 1;

    -- Insert into Items table
    INSERT INTO Items (ItemID, ItemName, Description, Version, Price, CategoryID, Consumability)
    VALUES (v_ItemID, p_ItemName, p_Description, p_Version, p_Price, v_CategoryID, p_Consumability);

    -- Insert into Quantities table
    INSERT INTO Quantities (ItemID, Quantity)
    VALUES (v_ItemID, p_Quantity);
    
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Item inserted successfully with ItemID: ' || v_ItemID);
     p_ItemName := 'OKAY';
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        p_ItemName := 'Error: ' || SQLERRM; -- Store the error message in p_ItemName
END;
/


DECLARE
    v_ItemName1 VARCHAR2(200) := 'Robotic Arm';
BEGIN
    InsertItem(p_ItemName => v_ItemName1, p_Description => 'A versatile robotic arm for industrial applications', p_Version => 'V1.0', p_Price => 1500.00, p_CategoryName => 'Robotic Appliances', p_Consumability => 'Y', p_Quantity => 10);
    DBMS_OUTPUT.PUT_LINE(v_ItemName1); -- Display the item name field, which now contains the error message if any
END;
/

BEGIN
    DECLARE
        v_ItemName2 VARCHAR2(200) := 'Arduino Nano Board';
    BEGIN
        InsertItem(p_ItemName => v_ItemName2, p_Description => 'An arduino board for tinyml', p_Version => 'ATMega4809', p_Price => 3100.00, p_CategoryName => 'Arduino Board', p_Consumability => 'Y', p_Quantity => 21);
        DBMS_OUTPUT.PUT_LINE(v_ItemName2); -- Display the item name field, which now contains the error message if any
    END;
END;



-- Procedure for governors to request to become admin
CREATE OR REPLACE PROCEDURE req_for_admin(
    p_MemberID IN INT,
    p_ErrorMsg OUT VARCHAR2 -- New parameter for error messaging
)
IS
    v_Role VARCHAR2(10);
    v_requestID INT;
BEGIN
    -- Check if the member is a governor
    SELECT Role INTO v_Role
    FROM Members
    WHERE MemberID = p_MemberID;
    
    IF v_Role != 'Governor' THEN
        p_ErrorMsg := 'Only governors can request admin privileges';
        RETURN; -- Exit the procedure with the error message
    END IF;
    
    SELECT COALESCE(MAX(RequestID), 0) INTO v_requestID FROM AdminReq;
    v_requestID := v_requestID + 1;

    -- Insert the memberID into the adminreq table
    INSERT INTO adminreq (requestid, memberid, accepted)
    VALUES (v_requestID, p_MemberID, 'N');
    
    DBMS_OUTPUT.PUT_LINE('Request for admin privileges submitted successfully for MemberID: ' || p_MemberID);
    COMMIT;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_ErrorMsg := 'MemberID not found';
    WHEN OTHERS THEN
        ROLLBACK;
        p_ErrorMsg := SQLERRM; -- Store the SQL error message
        RAISE;
END;
/

DECLARE
    v_ErrorMsg VARCHAR2(200); -- Variable to capture the error message
BEGIN
    req_for_admin(2, v_ErrorMsg); -- Call the procedure
    IF v_ErrorMsg IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || v_ErrorMsg); -- Print the error message if any
    ELSE
        DBMS_OUTPUT.PUT_LINE('OKAY'); -- Success message
    END IF;
END;
/


--Procedure for admin handling requests

CREATE OR REPLACE PROCEDURE requesthandler(
    p_RequestID IN INT,
    p_Decision IN CHAR,
    p_ErrorMsg OUT VARCHAR2 -- New parameter for error messaging
)
IS
    v_Accepted CHAR(1);
BEGIN
    -- Check if the requestID exists in adminreq table
    SELECT accepted INTO v_Accepted
    FROM adminreq
    WHERE requestID = p_RequestID;
    
    IF p_Decision = 'A' THEN
        UPDATE adminreq
        SET accepted = 'Y'
        WHERE requestID = p_RequestID;
        DBMS_OUTPUT.PUT_LINE('Request accepted successfully');
        
    ELSIF p_Decision = 'R' AND v_Accepted = 'N' THEN
        -- If reject and accepted was 'N', delete the row
        DELETE FROM adminreq
        WHERE requestID = p_RequestID;
        DBMS_OUTPUT.PUT_LINE('Request rejected and removed from table');
        
    ELSIF p_Decision = 'D' AND v_Accepted = 'Y' THEN
        -- If demote and accepted was 'Y' already, delete the row
        DELETE FROM adminreq
        WHERE requestID = p_RequestID;
        DBMS_OUTPUT.PUT_LINE('Governor demoted and removed from table');
        
    ELSE
        p_ErrorMsg := 'Invalid choice';
        RETURN; -- Exit the procedure with the error message
    END IF;
    
    COMMIT;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_ErrorMsg := 'RequestID not found';
    WHEN OTHERS THEN
        ROLLBACK;
        p_ErrorMsg := SQLERRM; -- Store the SQL error message
        RAISE;
END;
/


DECLARE
    v_ErrorMsg VARCHAR2(200); -- Variable to capture the error message
BEGIN
    requesthandler(p_RequestID => 11, p_Decision => 'A', p_ErrorMsg => v_ErrorMsg); 
    IF v_ErrorMsg IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || v_ErrorMsg); 
    ELSE
        DBMS_OUTPUT.PUT_LINE('OKAY');
    END IF;
END;
/

DECLARE
    v_ErrorMsg VARCHAR2(200); -- Variable to capture the error message
BEGIN
    requesthandler(p_RequestID => 12, p_Decision => 'R', p_ErrorMsg => v_ErrorMsg); -- Call the procedure
    IF v_ErrorMsg IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || v_ErrorMsg); -- Print the error message if any
    ELSE
        DBMS_OUTPUT.PUT_LINE('OKAY'); -- Success message
    END IF;
END;
/

DECLARE
    v_ErrorMsg VARCHAR2(200); -- Variable to capture the error message
BEGIN
    requesthandler(p_RequestID => 11, p_Decision => 'D', p_ErrorMsg => v_ErrorMsg); -- Call the procedure
    IF v_ErrorMsg IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || v_ErrorMsg); -- Print the error message if any
    ELSE
        DBMS_OUTPUT.PUT_LINE('OKAY'); -- Success message
    END IF;
END;
/

--Calculate the fine

CREATE OR REPLACE PROCEDURE fine_calculator(
    p_TransactionID IN INT,
    p_SupposedReturnDate IN DATE,
    p_ActualReturnDate IN DATE,
    p_FineCategory IN OUT VARCHAR2 -- Changed to IN OUT parameter
)
IS
    v_ItemPrice NUMBER;
    v_ItemID NUMBER;
    v_Fine NUMBER := 0;
    v_Delay NUMBER;
    v_TransactionType VARCHAR2(20);
BEGIN
    -- Check if transaction type is 'return'
    SELECT TransactionType INTO v_TransactionType
    FROM Transactions
    WHERE TransactionID = p_TransactionID;

    IF v_TransactionType = 'return' THEN
        p_FineCategory := 'Fine cannot be applied to return transactions'; -- Store error message in p_FineCategory
        RETURN; -- Exit the procedure with the error message
    END IF;
    
    -- Get the ItemID from the Transactions table
    SELECT ItemID INTO v_ItemID
    FROM Transactions
    WHERE TransactionID = p_TransactionID;
    
    -- Get the ItemPrice from the Items table
    SELECT Price INTO v_ItemPrice
    FROM Items
    WHERE ItemID = v_ItemID;
    
    -- Calculate the delay in days
    v_Delay := p_ActualReturnDate - p_SupposedReturnDate;
    
    -- Check if actual return date is earlier than supposed return date
    IF v_Delay <= 0 THEN
        v_Fine := 0;
    -- Check if actual return date is later than supposed return date and fine category is delay
    ELSIF p_FineCategory = 'delay' AND v_Delay < 20 THEN
        v_Fine := v_Delay * v_ItemPrice * 0.05;
    -- Check if actual return date is later than supposed return date and fine category is delay and delay is 20 days or more
    ELSIF p_FineCategory = 'delay' AND v_Delay >= 20 THEN
        v_Fine := v_ItemPrice;
    -- Check if fine category is lost
    ELSIF p_FineCategory = 'lost' THEN
        v_Fine := v_ItemPrice;
    ELSE
        -- Invalid fine category
        p_FineCategory := 'Invalid fine category'; -- Store error message in p_FineCategory
        RETURN; -- Exit the procedure with the error message
    END IF;
    
    -- Insert the fine into the fine table
    INSERT INTO Fine (TransactionID, SupposedReturnDate, ActualReturnDate, FineCategory, Fine)
    VALUES (p_TransactionID, p_SupposedReturnDate, p_ActualReturnDate, p_FineCategory, v_Fine);
    
    -- Output the calculated fine
    DBMS_OUTPUT.PUT_LINE('Fine for transaction ID ' || p_TransactionID || ': $' || v_Fine);
    p_FineCategory:='OKAY';
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_FineCategory := 'Transaction ID not found'; -- Store error message in p_FineCategory
    WHEN OTHERS THEN
        p_FineCategory := 'Error: ' || SQLERRM; -- Store error message in p_FineCategory
END;
/


DECLARE
    v_FineCategory VARCHAR2(200):='delay'; -- Variable to capture the error message
BEGIN
    fine_calculator(p_TransactionID => 123, p_SupposedReturnDate => TO_DATE('2024-04-15', 'YYYY-MM-DD'), p_ActualReturnDate => TO_DATE('2024-04-20', 'YYYY-MM-DD'), p_FineCategory => v_FineCategory); -- Call the procedure
    DBMS_OUTPUT.PUT_LINE( v_FineCategory ); -- Print the error message if any
END;
/

--Procedure to create new reservation.
CREATE OR REPLACE PROCEDURE reserve(
    p_MemberID IN INT,
    p_ItemID IN INT,
    p_ReservationDate IN DATE,
    p_ReturnDate IN DATE,
    p_Purpose IN OUT VARCHAR2 -- Changed to IN OUT parameter
)
IS
    v_ResID INT;
BEGIN
    -- Get the next ReservationID from the sequence
    SELECT COALESCE(MAX(ReservationID), 0) INTO v_ResID FROM Reservation;
    v_ResID := v_ResID + 1;
    
    -- Insert into the Reservation table
    INSERT INTO Reservation (ReservationID, MemberID, ItemID, ReservationDate, ReturnDate, Purpose, Status)
    VALUES (v_ResID, p_MemberID, p_ItemID, p_ReservationDate, p_ReturnDate, p_Purpose, 'pending');
    
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Reservation created successfully with ReservationID: ' || v_ResID);
    p_Purpose:='OKAY';
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        p_Purpose := 'An error occurred: ' || SQLERRM; -- Store the error message in p_Purpose
        RAISE;
END;
/


DECLARE
    v_Purpose VARCHAR2(200) := 'Research'; -- Initialize the purpose
BEGIN
    reserve(p_MemberID => 101, p_ItemID => 201, p_ReservationDate => TO_DATE('2024-04-12', 'YYYY-MM-DD'), p_ReturnDate => TO_DATE('2024-04-20', 'YYYY-MM-DD'), p_Purpose => v_Purpose); -- Call the procedure
    DBMS_OUTPUT.PUT_LINE(v_Purpose); -- Print the error message if any
END;
/
rocedure to decide whether to accept or reject a reservation.
-- P
CREATE OR REPLACE PROCEDURE res_decision(
    p_ReservationID IN INT,
    p_Decision IN OUT VARCHAR2 -- Changed to IN OUT parameter
)
IS
    v_Status VARCHAR2(20);
BEGIN
    -- Check if the reservationID exists and status is pending
    SELECT Status INTO v_Status
    FROM Reservation
    WHERE ReservationID = p_ReservationID;

    IF v_Status = 'pending' THEN
        IF p_Decision = 'yes' THEN
            -- Change the status to approved
            UPDATE Reservation
            SET Status = 'approved'
            WHERE ReservationID = p_ReservationID;
            DBMS_OUTPUT.PUT_LINE('Reservation approved successfully');
        ELSIF p_Decision = 'no' THEN
            -- Delete the row from the table
            DELETE FROM Reservation
            WHERE ReservationID = p_ReservationID;
            DBMS_OUTPUT.PUT_LINE('Reservation rejected and removed from table');
        ELSE
            p_Decision := 'Invalid decision'; -- Store error message in p_Decision
            RETURN; -- Exit the procedure with the error message
        END IF;
    ELSE
        p_Decision := 'Reservation status is not pending'; -- Store error message in p_Decision
        RETURN; -- Exit the procedure with the error message
    END IF;
    
    COMMIT;
    p_Decision:='OKAY';
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_Decision := 'ReservationID not found'; -- Store error message in p_Decision
    WHEN OTHERS THEN
        p_Decision := 'An error occurred: ' || SQLERRM; -- Store error message in p_Decision
        ROLLBACK;
        RAISE;
END;
/


DECLARE
    v_Decision VARCHAR2(255) := 'yes'; -- Initialize the decision
BEGIN
    res_decision(p_ReservationID => 287, p_Decision => v_Decision); -- Call the procedure
    DBMS_OUTPUT.PUT_LINE(v_Decision); -- Print the error message if any
END;
/

DECLARE
    v_Decision VARCHAR2(255) := 'no'; -- Initialize the decision
BEGIN
    res_decision(p_ReservationID => 293, p_Decision => v_Decision); -- Call the procedure
    DBMS_OUTPUT.PUT_LINE(v_Decision); -- Print the error message if any
END;
/

DECLARE
    v_Decision VARCHAR2(255) := 'no'; -- Initialize the decision
BEGIN
    res_decision(p_ReservationID => 350, p_Decision => v_Decision); -- Call the procedure
    DBMS_OUTPUT.PUT_LINE(v_Decision); -- Print the error message if any
END;
/

--Enter into transaction, usage and borrowed tables if the day comes.

ALTER SESSION SET TIME_ZONE = 'Asia/Kolkata';

CREATE OR REPLACE PROCEDURE ProcessReservations(
    p_ErrorCode OUT VARCHAR2
) AS
    v_ItemID Items.ItemID%TYPE;
    v_MemberID Members.MemberID%TYPE;
    v_TransactionID Transactions.TransactionID%TYPE;
    CURSOR reservation_cursor IS
        SELECT * FROM Reservation WHERE trunc(ReservationDate) = trunc(SYSDATE) AND Status = 'approved';
BEGIN
    p_ErrorCode := 'OKAY'; 
    FOR rec IN reservation_cursor LOOP
    dbms_output.put_line('hi');
        -- Step 1: Insert into Transaction table
        SELECT COALESCE(MAX(TransactionID), 0) INTO v_TransactionID FROM Transactions;
        v_TransactionID := v_TransactionID + 1;
        SELECT ItemID, MemberID INTO v_ItemID, v_MemberID FROM Reservation WHERE ReservationID = rec.ReservationID;
        INSERT INTO Transactions (TransactionID, ItemID, Quantity, TransactionType, TransactionDate, MemberID)
        VALUES (v_TransactionID, v_ItemID, 1, 'borrow', rec.ReservationDate, v_MemberID);
        
        -- Step 2: Insert into Usage table
        INSERT INTO Usage (ItemID, TransactionDate, Duration, Purpose)
        VALUES (v_ItemID, rec.ReservationDate, rec.ReturnDate - rec.ReservationDate, rec.Purpose);
        
        -- Step 3: Insert into Borrowed table
        INSERT INTO Borrowed (TransactionID, SupposedReturnDate)
        VALUES (v_TransactionID, rec.ReturnDate);
        
        --step 4: Reduce the quantity
        UPDATE Quantities SET Quantity = Quantity - 1 WHERE ItemID = v_ItemID;
    END LOOP;
    --COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        p_ErrorMsg := SQLERRM; -- Assign SQL error message to the OUT parameter
END;
/

DECLARE
    v_ErrorMsg VARCHAR2(4000); -- Variable to capture the error message
BEGIN
    ProcessReservations(p_ErrorMsg => v_ErrorMsg); -- Call the procedure
    DBMS_OUTPUT.PUT_LINE('Process completed successfully');
END;
/

CREATE OR REPLACE VIEW ItemDetailView AS
SELECT 
    I.ItemID,
    I.ItemName,
    I.Version,
    I.Price,
    C.CategoryName,
    Q.Quantity,
    I.Consumability,
    I.Images
FROM 
    Items I
JOIN 
    Categories C ON I.CategoryID = C.CategoryID
JOIN 
    Quantities Q ON I.ItemID = Q.ItemID;