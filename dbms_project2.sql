--Procedure to insert a new member

SET SERVEROUTPUT on;

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

BEGIN
    InsertMember('John', 'Doe', 'john.doe@iitbbs.ac.in','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f');
END;
/

DELETE FROM Members
WHERE MemberID = 101;


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


BEGIN
    InsertItem('Robotic Arm', 'A versatile robotic arm for industrial applications', 'V1.0', 1500.00, 'Robotic Appliances', 'Y', 10);
END;
/

BEGIN
    InsertItem('Arduino Nano Board', 'An arduino board for tinyml', 'ATMega4809', 3100.00, 'Arduino Board', 'Y', 21);
END;
/

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

BEGIN
    req_for_admin(2);
END;
/
