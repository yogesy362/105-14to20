SET SERVEROUTPUT ON;

DECLARE
    CURSOR student_cursor IS
        SELECT StudentID, StudentName, DepartmentID
        FROM Student;

    sid Student.StudentID%TYPE;
    sname Student.StudentName%TYPE;
    did Student.DepartmentID%TYPE;

BEGIN
    OPEN student_cursor;

    LOOP
        FETCH student_cursor INTO sid, sname, did;
        EXIT WHEN student_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Student ID: ' || sid ||
            ', Name: ' || sname ||
            ', Department ID: ' || did
        );
    END LOOP;

    CLOSE student_cursor;
END;
/
