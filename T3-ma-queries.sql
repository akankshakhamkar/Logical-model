/* ITO4132 2022 TP6 Assignment 2 Assignment 2 Task 3 ANSWERS

   Student Name: Akanksha Khamkar
   Student ID:33657025

   Comments to your marker:

*/



/* (i)*/--Report the service number, vehicle VIN, registration number, make, the service job numbers and service job descriptions for all services which have been completed. The output should be in service number order, and within service number ordered by service job number. The most recent service should be shown first.
SELECT
    s.serv_no AS SERVICE_NO,
    v.veh_vin AS VEHICLE_VIN,
    v.veh_rego AS VEH_REG_NO,
    v.veh_make AS VEHICLE_MAKE,
    sj.sj_job_no AS SJ_JOB_NO,
    sj.sj_task_description AS SJ_TASK_DESC
FROM
         akha0124.service s
    JOIN akha0124.vehicle     v ON s.veh_vin = v.veh_vin
    JOIN akha0124.service_job sj ON s.serv_no = sj.serv_no
WHERE
    s.serv_ready_pickup IS NOT NULL
ORDER BY
    s.serv_no DESC,
    sj.sj_job_no ASC;

/* (ii)*/--For every part stocked by Monash Automotive list the part code, description, vendor id and vendor name in a single VENDOR column separated by - (see below), the current stock held by MA and the total value of the parts stock currently held. The output should be in part code order. The stock value should be output in the form of $123.45. 

SELECT
    p.part_code as PART_CODE,
    p.part_description as PART_DESCRIPTION,
    p.vendor_id
    || ' - '
    || v.vendor_name                                                    AS vendor,
    p.part_stock as PART_STOCK,
    to_char(p.part_stock * p.part_unit_cost, '$999,999,999,999,990.99') AS stock_value
FROM
         akha0124.part p
    JOIN akha0124.vendor v ON p.vendor_id = v.vendor_id
ORDER BY
    p.part_code;


/* (iii)*/--List all vehicles manufactured before the current year, which are of a 'Mazda' or 'Ford' make. Show the current details of the customer who owns the vehicle (customer number, name, and contact phone number) and a single column called VEHICLEDETAILS which shows the vehicle’s year, make and model. The output should be in customer number order and for a given customer show their vehicles with the oldest ones first. 
SELECT
    c.cust_no AS CUST_NO,
    c.cust_name AS CUST_NAME,
    c.cust_phone as CUST_PHONE,
    EXTRACT(YEAR FROM v.veh_year)
    || ' '
    || ( v.veh_make )
    || ' '
    || ( v.veh_model ) AS VEHICLEDETAILS
FROM
         akha0124.customer c
    JOIN akha0124.vehicle v ON c.cust_no = v.cust_no
WHERE
    ( v.veh_make ) IN ( 'Mazda', 'Ford' )
    AND to_char(EXTRACT(YEAR FROM v.veh_year)) < to_char(EXTRACT(YEAR FROM sysdate))
ORDER BY
    c.cust_no,
    v.veh_year;

/* (iv)*/--List the details of all services which include the words 'General Service' anywhere in the service instructions. Your output should show the customer number, customer name, the date the vehicle was serviced, the vin of the vehicle, the service number and the service instructions. Your output should be in customer number order. For a given customer, the output should be in service date order - where two services are carried out for the same customer on the same date the output should be in vehicle’s vin order.

SELECT
    c.cust_no as CUST_NO,
    c.cust_name as CUST_NAME,
    s.serv_date,
    s.veh_vin,
    s.serv_no,
    s.serv_instructions
FROM
         akha0124.customer c
    JOIN akha0124.service s ON c.cust_no = s.cust_no
WHERE
    upper(s.serv_instructions) LIKE upper('%General Service%')
ORDER BY
    c.cust_no,
    s.serv_date,
    s.veh_vin;




/* (v)*/--For every part stocked by Monash Automotive list the part code, the part description, the name of the vendor who supplies the part and an indicator if the part has been used (or not used) in a service. The indicator should say 'Used in at least one service' or 'Not used in any service'. The output should be in part code order. 
SELECT
    p.part_code,
    p.part_description,
    v.vendor_name,
    CASE
        WHEN pc.part_code IS NULL THEN
            'Not used in any service'
        ELSE
            'Used in at least one service'
    END AS partusage
FROM
         akha0124.part p
    JOIN akha0124.vendor      v ON p.vendor_id = v.vendor_id
    LEFT JOIN akha0124.part_charge pc ON p.part_code = pc.part_code
GROUP BY
    p.part_code,
    p.part_description,
    v.vendor_name,
    pc.part_code
ORDER BY
    p.part_code;

/* (vi)*/--For every part stocked by Monash Automotive list the part code, part description, the quantity of these items which have been charged out via a part charge and the total amount of such charges. In arriving at your solution, it is important to note that the current unit cost listed in the part table may not be the price the item was charged out at due to part price variations. Your output should be listed with the part which has been used the most times first. Typical output would have the form:

SELECT
    p.part_code,
    p.part_description,
    COUNT(pc.pc_quantity)                    AS quantity_used,
    COUNT(pc.pc_quantity) * p.part_unit_cost AS total_charged
FROM
    akha0124.part        p
    LEFT JOIN akha0124.part_charge pc ON p.part_code = pc.part_code
GROUP BY
    p.part_code,
    p.part_description,
    p.part_unit_cost
ORDER BY
    COUNT(pc.pc_quantity) DESC;

/* (vii)*/--For all completed services in which the vehicle was ready for pickup later than the customer's requested pickup time, list the customer number, customer name, the service number, the required pickup time, the time the vehicle was ready for pickup and how late the delivery was in hours and minutes in the form 1 hr 15 mins. The output should show the longest delayed delivery first. Typical output would have the form (you are required to use the format, output positions and column headings as shown below):



SELECT
    c.cust_no,
    c.cust_name,
    s.serv_no,
    TO_CHAR(s.serv_req_pickup, 'HH:MI') AS "Required Pickup Time",
    TO_CHAR(s.serv_ready_pickup, 'HH:MI') AS "Ready for Pickup Time",
    TRUNC((s.serv_ready_pickup - s.serv_req_pickup) * 24) || ' hr ' ||
        TRUNC(MOD((s.serv_ready_pickup - s.serv_req_pickup) * 1440, 60)) || ' mins' AS "Late delivery"
FROM
    akha0124.customer c
INNER JOIN
    akha0124.service s ON c.cust_no = s.cust_no
WHERE
    s.serv_ready_pickup > s.serv_req_pickup
ORDER BY
    (s.serv_ready_pickup - s.serv_req_pickup) DESC;


/* (viii)*/--For all completed services in which the vehicle was ready for pickup later than the customer's requested pickup time, list the customer number, customer name, the service number, the required pickup time, the time the vehicle was ready for pickup and how late the delivery was in hours and minutes in the form 1 hr 15 mins. The output should show the longest delayed delivery first. 

SELECT
    c.cust_no,
    c.cust_name,
    '$'
    || to_char(pc.total_part_payment, '999999.99') AS total_part_payment
FROM
         akha0124.customer c
    JOIN (
        SELECT
            s.cust_no,
            SUM(pc.pc_linecost) AS total_part_payment
        FROM
                 akha0124.service s
            JOIN part_charge pc ON s.serv_no = pc.serv_no
        WHERE
            s.serv_ready_pickup IS NOT NULL
        GROUP BY
            s.cust_no
    ) pc ON c.cust_no = pc.cust_no
    JOIN (
        SELECT
            AVG(total_part_payment) AS avg_part_payment
        FROM
            (
                SELECT
                    s.cust_no,
                    SUM(pc.pc_linecost) AS total_part_payment
                FROM
                         akha0124.service s
                    JOIN part_charge pc ON s.serv_no = pc.serv_no
                WHERE
                    s.serv_ready_pickup IS NOT NULL
                GROUP BY
                    s.cust_no
            )
    ) avg ON pc.total_part_payment > avg.avg_part_payment
ORDER BY
    pc.total_part_payment DESC,
    c.cust_name;