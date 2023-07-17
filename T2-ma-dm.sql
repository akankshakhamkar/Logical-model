/* ITO4132 2022 TP6 Assignment 2 Assignment 2 Task 2 ANSWERS

   Student Name: Akanksha Khamkar
   Student ID:33657025

   Comments to your marker:

*/


/* (i)*/ --Create a set of sequences which will allow you to enter data into the SERVICE and PART_CHARGE tables - all such sequences must start at 1000 and go up in steps of 10 (i.e. the first value is 1000, the next 1010 etc.).

DROP SEQUENCE service_seq;

CREATE SEQUENCE service_seq START WITH 1000 INCREMENT BY 10;

DROP SEQUENCE part_charge_seq;

CREATE SEQUENCE part_charge_seq START WITH 1000 INCREMENT BY 10;


/* (ii)*/ -- The customer, with phone number '6715573197', has called in and informed Monash Automotive that they had changed the registration number of their sole vehicle to 'GDD132'. You may assume that no other customer has this phone number.

ALTER TABLE customer ADD cust_reg_number VARCHAR2(10);

UPDATE customer
SET
    cust_reg_number = 'GDD132'
WHERE
    cust_phone = '6715573197';




/* (iii)*/ --Customer number 1030, Farrel Grazier brought her Mazda CX-5 in for service (the date should be 10 July 2022). She brought it in at 8:30 am and required the vehicle back by 12 noon. The vehicle has completed 12000 km, and she will be paying by cash if any charges are involved (this may be a warranty repair). Her reason for bringing the vehicle in is that the 'Rear seat belts are not properly retracting'. You may assume that Farrel Grazier only owns one Mazda CX-5.

INSERT INTO service (
    serv_no,
    cust_no,
    veh_vin,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_kms,
    serv_instructions,
    pay_mode_code
) VALUES (
    service_seq.NEXTVAL,
    1030,
    'JN1CV6EK6FM569421',
    TO_DATE('10-07-2022', 'DD-MM-YYYY'),
    TO_DATE('10-07-2022 08:30:00 AM', 'DD-MM-YYYY HH:MI:SS AM'),
    TO_DATE('10-07-2022 12:00:00 PM', 'DD-MM-YYYY HH:MI:SS AM'),
    12000,
    'Rear seat belts are not properly retracting',
    'S'
);



/* (iv)*/ -- One of the MA mechanics started the service job for the service in (iii) above, they determined that the retraction issue was due to the belt mechanism being jammed. They remove the material causing the jam, so no parts are required. MA decide there will be no labour cost in the interests of customer goodwill. The vehicle is ready to be picked up at 9:10 am. Customer number 1030, Farrel Grazier, has only one vehicle in for service at the current time. All the steps involved here should be treated as a single transaction.

BEGIN
    SAVEPOINT start_tran;
    UPDATE service
    SET
        serv_ready_pickup = TO_DATE('10-07-2022 09:10:00 AM', 'DD-MM-YYYY HH:MI:SS AM'
        )
    WHERE
        serv_no = 1000;

    UPDATE service
    SET
        serv_ready_pickup = TO_DATE('10-07-2022 09:10:00 AM', 'DD-MM-YYYY HH:MI:SS AM'
        )
    WHERE
        serv_no = 1000;

    INSERT INTO service_job (
        serv_no,
        sj_job_no,
        sj_task_description
    ) VALUES (
        1000,
        3,
        'Belt mechanism jam removal'
    );

    UPDATE service
    SET
        serv_labour_cost = 0
    WHERE
        serv_no = 1000;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK TO start_transaction;
        RAISE;
END;


/* (v)*/ --Monash Automotive have decided that they no longer wish to source any parts from 'Australian Automotive Parts'. An audit of MAs part usage shows that although they have several different Australian Automotive Parts items in stock, they have never been used for any service. They will return these items to the vendor and thus remove them from the MA part stock. You may only use DML commands to arrive at your solution for this part.

SELECT
    part_code
FROM
    part
WHERE
        vendor_id = (
            SELECT
                vendor_id
            FROM
                vendor
            WHERE
                vendor_name = 'Australian Automotive Parts'
        )
    AND NOT EXISTS (
        SELECT
            1
        FROM
            part_charge pc
        WHERE
            pc.part_code = part.part_code
    );

DELETE FROM part
WHERE
    part_code IN (
        SELECT
            part_code
        FROM
            part
        WHERE
                vendor_id = (
                    SELECT
                        vendor_id
                    FROM
                        vendor
                    WHERE
                        vendor_name = 'Australian Automotive Parts'
                )
            AND NOT EXISTS (
                SELECT
                    1
                FROM
                    part_charge pc
                WHERE
                    pc.part_code = part.part_code
            )
    );

COMMIT;