--Procedure to insert a new member
SET SERVEROUTPUT on;

CREATE OR REPLACE PROCEDURE InsertMember(
    p_FirstName IN VARCHAR2,
    p_LastName IN VARCHAR2,
    p_Email IN VARCHAR2
)
IS
    v_MemberID INT;
BEGIN
    -- Check if the email has the extension iitbbs.ac.in
    IF NOT REGEXP_LIKE(p_Email, '^[a-zA-Z0-9._%+-]+@iitbbs\.ac\.in$') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Email must have the extension iitbbs.ac.in');
    END IF;

    -- Get the next memberID from the sequence
     SELECT MAX(MemberID) INTO v_MemberID FROM Members;

    -- Insert the data into the Members table
    INSERT INTO Members (MemberID, FirstName, LastName, Email, Role)
    VALUES (v_MemberID+1, p_FirstName, p_LastName, p_Email, 'User');
    
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Member inserted successfully with MemberID: ' || v_MemberID+1);
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

BEGIN
    InsertMember('John', 'Doe', 'john.doe@iitbbs.ac.in');
END;
/




