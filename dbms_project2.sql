--Procedure to insert a new member

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE InsertMember(
    p_FirstName IN VARCHAR2,
    p_LastName IN VARCHAR2,
    p_Email IN VARCHAR2,
    p_password IN VARCHAR2
)
IS
    v_MemberID INT;
BEGIN
    -- Check if the email has the extension iitbbs.ac.in
    IF NOT REGEXP_LIKE(p_Email, '^[a-zA-Z0-9._%+-]+@iitbbs\.ac\.in$') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Email must have the extension iitbbs.ac.in');
    END IF;

    -- Get the next memberID from the sequence
    SELECT COALESCE(MAX(MemberID), 0) INTO v_MemberID FROM Members;
    v_MemberID := v_MemberID + 1;
    
    -- Insert the data into the Members table
    INSERT INTO Members (MemberID, FirstName, LastName, Email, Password, Role)
    VALUES (v_MemberID, p_FirstName, p_LastName, p_Email, p_password, 'User');
    
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Member inserted successfully with MemberID: ' || v_MemberID);
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

EXEC InsertMember('John', 'Doe', 'john.doe@iitbbs.ac.in','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f');

--Procedure to insert a new item

CREATE OR REPLACE PROCEDURE InsertItem(
    p_ItemName IN VARCHAR2,
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
        RAISE_APPLICATION_ERROR(-20001, 'Consumability must be either Y or N');
    END IF;

    -- Check if the Category exists in the Categories table
    SELECT CategoryID INTO v_CategoryID
    FROM Categories
    WHERE CategoryName = p_CategoryName;

    -- If no category found, insert a new one
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            SELECT COALESCE(MAX(CategoryID), 0) INTO v_maxCategoryID FROM Categories;
            v_maxCategoryID := v_maxCategoryID + 1;
            INSERT INTO Categories (CategoryID, CategoryName)
            VALUES (v_maxCategoryID, p_CategoryName);
            v_CategoryID := v_maxCategoryID;
    
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
END;
/

EXEC InsertItem('Robotic Arm', 'A versatile robotic arm for industrial applications', 'V1.0', 1500.00, 'Robotic Appliances', 'Y', 10);
EXEC InsertItem('Arduino Nano Board', 'An arduino board for tinyml', 'ATMega4809', 3100.00, 'Arduino Board', 'Y', 21);

-- Procedure for governors to request to become admin
CREATE OR REPLACE PROCEDURE req_for_admin(
    p_MemberID IN INT
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
        RAISE_APPLICATION_ERROR(-20001, 'Only governors can request admin privileges');
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
        RAISE_APPLICATION_ERROR(-20002, 'MemberID not found');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

EXEC req_for_admin(2);

--Procedure for admin handling requests

CREATE OR REPLACE PROCEDURE requesthandler(
    p_RequestID IN INT,
    p_Decision IN CHAR
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
        DBMS_OUTPUT.PUT_LINE('Invalid choice');
    END IF;
    
    COMMIT;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'RequestID not found');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

EXEC requestHandler(2,'A');
EXEC requestHandler(9,'R');
EXEC requestHandler(2,'D');

--Calculate the fine

CREATE OR REPLACE PROCEDURE fine_calculator(
    p_TransactionID IN INT,
    p_SupposedReturnDate IN DATE,
    p_ActualReturnDate IN DATE,
    p_FineCategory IN VARCHAR2
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
        RAISE_APPLICATION_ERROR(-20001, 'Fine cannot be applied to return transactions');
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
        RAISE_APPLICATION_ERROR(-20001, 'Invalid fine category');
    END IF;
    
    -- Insert the fine into the fine table
    INSERT INTO Fine (TransactionID, SupposedReturnDate, ActualReturnDate, FineCategory, Fine)
    VALUES (p_TransactionID, p_SupposedReturnDate, p_ActualReturnDate, p_FineCategory, v_Fine);
    
    -- Output the calculated fine
    DBMS_OUTPUT.PUT_LINE('Fine for transaction ID ' || p_TransactionID || ': $' || v_Fine);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20002, 'Transaction ID not found');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20003, 'An error occurred: ' || SQLERRM);
END;
/

EXEC fine_calculator(p_TransactionID => 123, p_SupposedReturnDate => TO_DATE('2024-04-15', 'YYYY-MM-DD'), p_ActualReturnDate => TO_DATE('2024-04-20', 'YYYY-MM-DD'), p_FineCategory => 'delay');
EXEC fine_calculator(p_TransactionID => 156, p_SupposedReturnDate => TO_DATE('2024-04-10', 'YYYY-MM-DD'), p_ActualReturnDate => NULL, p_FineCategory => 'lost');
EXEC fine_calculator(p_TransactionID => 129, p_SupposedReturnDate => TO_DATE('2024-04-10', 'YYYY-MM-DD'), p_ActualReturnDate => NULL, p_FineCategory => 'lost');

