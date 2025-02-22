CREATE TABLE attendance_records (
    attendance_id NUMBER(4) PRIMARY KEY,
    empno NUMBER(4),
    attendance_date DATE,
    check_in_time TIMESTAMP,
    check_out_time TIMESTAMP
);

CREATE TABLE leave_requests (
    request_id NUMBER(4) PRIMARY KEY,
    empno NUMBER(4),
    leave_date DATE,
    leave_type VARCHAR2(50),
    status VARCHAR2(20) DEFAULT 'pending'
);

CREATE TABLE late_arrivals (
    late_id NUMBER(4) PRIMARY KEY,
    empno NUMBER(4),
    late_date DATE,
    late_time TIMESTAMP
);

INSERT INTO attendance_records VALUES (1, 7369, TO_DATE('01-MAY-2023', 'DD-MON-YYYY'), TO_TIMESTAMP('01-MAY-2023 09:15:00', 'DD-MON-YYYY HH24:MI:SS'), TO_TIMESTAMP('01-MAY-2023 18:00:00', 'DD-MON-YYYY HH24:MI:SS'));
INSERT INTO attendance_records VALUES (2, 7499, TO_DATE('01-MAY-2023', 'DD-MON-YYYY'), TO_TIMESTAMP('01-MAY-2023 08:45:00', 'DD-MON-YYYY HH24:MI:SS'), TO_TIMESTAMP('01-MAY-2023 17:45:00', 'DD-MON-YYYY HH24:MI:SS'));
INSERT INTO attendance_records VALUES (3, 7934, TO_DATE('01-MAY-2023', 'DD-MON-YYYY'), TO_TIMESTAMP('01-MAY-2023 09:30:00', 'DD-MON-YYYY HH24:MI:SS'), TO_TIMESTAMP('01-MAY-2023 18:15:00', 'DD-MON-YYYY HH24:MI:SS'));
INSERT INTO attendance_records VALUES (4, 7369, TO_DATE('02-MAY-2023', 'DD-MON-YYYY'), TO_TIMESTAMP('01-MAY-2023 08:55:00', 'DD-MON-YYYY HH24:MI:SS'), TO_TIMESTAMP('01-MAY-2023 18:05:00', 'DD-MON-YYYY HH24:MI:SS'));
INSERT INTO attendance_records VALUES (5, 7499, TO_DATE('02-MAY-2023', 'DD-MON-YYYY'), TO_TIMESTAMP('01-MAY-2023 09:05:00', 'DD-MON-YYYY HH24:MI:SS'), TO_TIMESTAMP('01-MAY-2023 18:00:00', 'DD-MON-YYYY HH24:MI:SS'));
INSERT INTO attendance_records VALUES (6, 7934, TO_DATE('02-MAY-2023', 'DD-MON-YYYY'), TO_TIMESTAMP('01-MAY-2023 08:45:00', 'DD-MON-YYYY HH24:MI:SS'), TO_TIMESTAMP('01-MAY-2023 18:15:00', 'DD-MON-YYYY HH24:MI:SS'));
INSERT INTO attendance_records VALUES (7, 7499, TO_DATE('03-MAY-2023', 'DD-MON-YYYY'), TO_TIMESTAMP('01-MAY-2023 08:50:00', 'DD-MON-YYYY HH24:MI:SS'), TO_TIMESTAMP('01-MAY-2023 18:10:00', 'DD-MON-YYYY HH24:MI:SS'));
INSERT INTO attendance_records VALUES (8, 7369, TO_DATE('02-MAY-2023', 'DD-MON-YYYY'), TO_TIMESTAMP('01-MAY-2023 09:10:00', 'DD-MON-YYYY HH24:MI:SS'), TO_TIMESTAMP('01-MAY-2023 18:20:00', 'DD-MON-YYYY HH24:MI:SS'));
INSERT INTO attendance_records VALUES (9, 7934, TO_DATE('03-MAY-2023', 'DD-MON-YYYY'), TO_TIMESTAMP('01-MAY-2023 09:00:00', 'DD-MON-YYYY HH24:MI:SS'), TO_TIMESTAMP('01-MAY-2023 18:00:00', 'DD-MON-YYYY HH24:MI:SS'));
INSERT INTO attendance_records VALUES (10, 7499, TO_DATE('03-MAY-2023', 'DD-MON-YYYY'), TO_TIMESTAMP('01-MAY-2023 09:15:00', 'DD-MON-YYYY HH24:MI:SS'), TO_TIMESTAMP('01-MAY-2023 18:05:00', 'DD-MON-YYYY HH24:MI:SS'));
INSERT INTO attendance_records VALUES (11, 7876, TO_DATE('01-MAY-2023', 'DD-MON-YYYY'), TO_TIMESTAMP('01-MAY-2023 09:00:00', 'DD-MON-YYYY HH24:MI:SS'), TO_TIMESTAMP('01-MAY-2023 18:00:00', 'DD-MON-YYYY HH24:MI:SS'));
INSERT INTO attendance_records VALUES (12, 7369, TO_DATE('04-MAY-2023', 'DD-MON-YYYY'), TO_TIMESTAMP('01-MAY-2023 08:55:00', 'DD-MON-YYYY HH24:MI:SS'), TO_TIMESTAMP('01-MAY-2023 17:55:00', 'DD-MON-YYYY HH24:MI:SS'));
INSERT INTO attendance_records VALUES (13, 7934, TO_DATE('04-MAY-2023', 'DD-MON-YYYY'), TO_TIMESTAMP('01-MAY-2023 09:20:00', 'DD-MON-YYYY HH24:MI:SS'), TO_TIMESTAMP('01-MAY-2023 18:10:00', 'DD-MON-YYYY HH24:MI:SS'));
INSERT INTO attendance_records VALUES (14, 7934, TO_DATE('05-MAY-2023', 'DD-MON-YYYY'), TO_TIMESTAMP('01-MAY-2023 09:25:00', 'DD-MON-YYYY HH24:MI:SS'), TO_TIMESTAMP('01-MAY-2023 18:20:00', 'DD-MON-YYYY HH24:MI:SS'));


INSERT INTO leave_requests VALUES (1, 7369, TO_DATE('05-MAY-2023', 'DD-MON-YYYY'), 'Annual Leave', 'pending');
INSERT INTO leave_requests VALUES (2, 7499, TO_DATE('10-MAY-2023', 'DD-MON-YYYY'), 'Sick Leave', 'pending');
INSERT INTO leave_requests VALUES (3, 7369, TO_DATE('15-MAY-2023', 'DD-MON-YYYY'), 'Casual Leave', 'pending');
INSERT INTO leave_requests VALUES (4, 7566, TO_DATE('20-MAY-2023', 'DD-MON-YYYY'), 'Annual Leave', 'pending');
INSERT INTO leave_requests VALUES (5, 7499, TO_DATE('25-MAY-2023', 'DD-MON-YYYY'), 'Sick Leave', 'pending');
INSERT INTO leave_requests VALUES (6, 7698, TO_DATE('30-MAY-2023', 'DD-MON-YYYY'), 'Casual Leave', 'pending');
INSERT INTO leave_requests VALUES (7, 7654, TO_DATE('05-JUN-2023', 'DD-MON-YYYY'), 'Annual Leave', 'pending');
INSERT INTO leave_requests VALUES (8, 7788, TO_DATE('10-JUN-2023', 'DD-MON-YYYY'), 'Sick Leave', 'pending');
INSERT INTO leave_requests VALUES (9, 7654, TO_DATE('15-JUN-2023', 'DD-MON-YYYY'), 'Casual Leave', 'pending');
INSERT INTO leave_requests VALUES (10, 7499, TO_DATE('20-JUN-2023', 'DD-MON-YYYY'), 'Annual Leave', 'pending');
INSERT INTO leave_requests VALUES (11, 7654, TO_DATE('25-JUN-2023', 'DD-MON-YYYY'), 'Sick Leave', 'pending');
INSERT INTO leave_requests VALUES (12, 7900, TO_DATE('30-JUN-2023', 'DD-MON-YYYY'), 'Casual Leave', 'pending');
INSERT INTO leave_requests VALUES (13, 7499, TO_DATE('05-JUL-2023', 'DD-MON-YYYY'), 'Annual Leave', 'pending');
INSERT INTO leave_requests VALUES (14, 7934, TO_DATE('10-JUL-2023', 'DD-MON-YYYY'), 'Sick Leave', 'pending');


INSERT INTO late_arrivals VALUES (1, 7369, TO_DATE('01-MAY-2023', 'DD-MON-YYYY'), TO_TIMESTAMP('01-MAY-2023 09:15:00', 'DD-MON-YYYY HH24:MI:SS'));
INSERT INTO late_arrivals VALUES (2, 7521, TO_DATE('01-MAY-2023', 'DD-MON-YYYY'), TO_TIMESTAMP('01-MAY-2023 09:30:00', 'DD-MON-YYYY HH24:MI:SS'));
