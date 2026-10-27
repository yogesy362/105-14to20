CREATE OR REPLACE PROCEDURE InsertStudent AS
BEGIN
    INSERT INTO Student (StudentID, StudentName, DepartmentID)
    VALUES (101, 'Arun', 10);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student record inserted successfully.');
END;
/
