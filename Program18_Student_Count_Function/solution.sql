CREATE OR REPLACE FUNCTION CountStudents(
    dept_id IN NUMBER
)
RETURN NUMBER
IS
    total NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO total
    FROM Student
    WHERE DepartmentID = dept_id;

    RETURN total;
END;
/

Execute the Function:

SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Total Students: ' || CountStudents(10)
    );
END;
/

