SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER Employee_Insert_Trigger
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('New employee record inserted successfully.');
END;
/
