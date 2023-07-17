/* ITO4132 2022 TP6 Assignment 2 Assignment 2 Task 1 ANSWERS
-- Inserting sample data for SERVICES

   Student Name: Akanksha Khamkar
   Student ID: 33657025

   All keys added MUST be less than 200 as per the brief instructions

   Comments to your marker:

*/


-- Inserting sample data for SERVICES
INSERT INTO service (
    serv_no,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_ready_pickup,
    serv_kms,
    serv_labour_cost,
    serv_parts_cost,
    serv_instructions,
    pay_mode_code,
    veh_vin,
    cust_no
) VALUES (
    100,
    TO_DATE('05-01-2022', 'dd-mm-yyyy'),
    TO_DATE('05-01-2022 08:30 AM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('05-01-2022 04:00 PM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('05-01-2022 05:00 PM', 'dd-mm-yyyy hh:mi am'),
    100000,
    150.00,
    75.50,
    'Standard service',
    'S',
    'WBAWR33598P984354',
    1020
);

INSERT INTO service (
    serv_no,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_ready_pickup,
    serv_kms,
    serv_labour_cost,
    serv_parts_cost,
    serv_instructions,
    pay_mode_code,
    veh_vin,
    cust_no
) VALUES (
    101,
    TO_DATE('25-01-2022', 'dd-mm-yyyy'),
    TO_DATE('25-01-2022 09:00 AM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('25-01-2022 05:00 PM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('25-01-2022 05:20 PM', 'dd-mm-yyyy hh:mi am'),
    125000,
    200.00,
    120.75,
    'Oil change, tire rotation',
    'C',
    'WA1DGAFE9CD490452',
    1030
);

INSERT INTO service (
    serv_no,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_ready_pickup,
    serv_kms,
    serv_labour_cost,
    serv_parts_cost,
    serv_instructions,
    pay_mode_code,
    veh_vin,
    cust_no
) VALUES (
    102,
    TO_DATE('03-02-2022', 'dd-mm-yyyy'),
    TO_DATE('03-02-2022 10:30 AM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('03-02-2022 05:45 PM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('03-02-2022 05:30 PM', 'dd-mm-yyyy hh:mi am'),
    142000,
    180.00,
    95.25,
    'Tune-up, brake inspection',
    'E',
    '19UYA42792A297253',
    1080
);

INSERT INTO service (
    serv_no,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_ready_pickup,
    serv_kms,
    serv_labour_cost,
    serv_parts_cost,
    serv_instructions,
    pay_mode_code,
    veh_vin,
    cust_no
) VALUES (
    103,
    TO_DATE('12-01-2022', 'dd-mm-yyyy'),
    TO_DATE('12-01-2022 08:30 AM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('12-01-2022 04:00 PM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('12-01-2022 04:00 PM', 'dd-mm-yyyy hh:mi am'),
    95000,
    200.00,
    150.00,
    'Wheel alignment, tire balancing',
    'C',
    '4T1BK3DB4CU320186',
    1010
);

INSERT INTO service (
    serv_no,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_ready_pickup,
    serv_kms,
    serv_labour_cost,
    serv_parts_cost,
    serv_instructions,
    pay_mode_code,
    veh_vin,
    cust_no
) VALUES (
    104,
    TO_DATE('08-02-2022', 'dd-mm-yyyy'),
    TO_DATE('08-02-2022 09:00 AM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('08-02-2022 05:00 PM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('08-02-2022 06:00 PM', 'dd-mm-yyyy hh:mi am'),
    110000,
    180.00,
    120.75,
    'Check engine light, diagnostic',
    'S',
    'JN1CV6EK6FM569421',
    1040
);

INSERT INTO service (
    serv_no,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_ready_pickup,
    serv_kms,
    serv_labour_cost,
    serv_parts_cost,
    serv_instructions,
    pay_mode_code,
    veh_vin,
    cust_no
) VALUES (
    105,
    TO_DATE('25-03-2022', 'dd-mm-yyyy'),
    TO_DATE('25-03-2022 10:30 AM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('25-03-2022 06:00 PM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('25-03-2022 06:30 PM', 'dd-mm-yyyy hh:mi am'),
    125000,
    220.00,
    180.50,
    'Replace spark plugs, ignition system check',
    'E',
    '5XXGM4A74DG668202',
    1050
);

INSERT INTO service (
    serv_no,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_ready_pickup,
    serv_kms,
    serv_labour_cost,
    serv_parts_cost,
    serv_instructions,
    pay_mode_code,
    veh_vin,
    cust_no
) VALUES (
    106,
    TO_DATE('03-04-2022', 'dd-mm-yyyy'),
    TO_DATE('03-04-2022 08:30 AM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('03-04-2022 04:30 PM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('03-04-2022 05:30 PM', 'dd-mm-yyyy hh:mi am'),
    95000,
    150.00,
    95.25,
    'Oil change, filter replacement',
    'S',
    'JN1CV6EK6FM569421',
    1000
);

INSERT INTO service (
    serv_no,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_ready_pickup,
    serv_kms,
    serv_labour_cost,
    serv_parts_cost,
    serv_instructions,
    pay_mode_code,
    veh_vin,
    cust_no
) VALUES (
    107,
    TO_DATE('10-05-2022', 'dd-mm-yyyy'),
    TO_DATE('10-05-2022 10:00 AM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('10-05-2022 05:00 PM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('10-05-2022 04:30 PM', 'dd-mm-yyyy hh:mi am'),
    105000,
    200.00,
    130.50,
    'Brake inspection, pad replacement',
    'C',
    'TRUWT28N921709039',
    1060
);

INSERT INTO service (
    serv_no,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_ready_pickup,
    serv_kms,
    serv_labour_cost,
    serv_parts_cost,
    serv_instructions,
    pay_mode_code,
    veh_vin,
    cust_no
) VALUES (
    108,
    TO_DATE('25-02-2022', 'dd-mm-yyyy'),
    TO_DATE('25-02-2022 09:00 AM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('25-02-2022 06:30 PM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('25-02-2022 07:30 PM', 'dd-mm-yyyy hh:mi am'),
    120000,
    180.00,
    110.75,
    'Fluid flush and refill',
    'E',
    '19UYA42792A297253',
    1080
);

INSERT INTO service (
    serv_no,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_ready_pickup,
    serv_kms,
    serv_labour_cost,
    serv_parts_cost,
    serv_instructions,
    pay_mode_code,
    veh_vin,
    cust_no
) VALUES (
    109,
    TO_DATE('17-01-2022', 'dd-mm-yyyy'),
    TO_DATE('17-01-2022 08:30 AM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('17-01-2022 04:00 PM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('17-01-2022 05:00 PM', 'dd-mm-yyyy hh:mi am'),
    100000,
    150.00,
    75.50,
    'Standard service',
    'S',
    'WAUVFAFH4AN857561',
    1030
);

INSERT INTO service (
    serv_no,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_ready_pickup,
    serv_kms,
    serv_labour_cost,
    serv_parts_cost,
    serv_instructions,
    pay_mode_code,
    veh_vin,
    cust_no
) VALUES (
    110,
    TO_DATE('28-03-2022', 'dd-mm-yyyy'),
    TO_DATE('28-03-2022 10:00 AM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('28-03-2022 06:30 PM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('28-03-2022 06:30 PM', 'dd-mm-yyyy hh:mi am'),
    125000,
    200.00,
    120.75,
    'Oil change, tire rotation',
    'S',
    'TRUWT28N921709039',
    1070
);

INSERT INTO service (
    serv_no,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_ready_pickup,
    serv_kms,
    serv_labour_cost,
    serv_parts_cost,
    serv_instructions,
    pay_mode_code,
    veh_vin,
    cust_no
) VALUES (
    111,
    TO_DATE('16-05-2022', 'dd-mm-yyyy'),
    TO_DATE('16-05-2022 09:00 AM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('16-05-2022 05:00 PM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('16-05-2022 07:00 PM', 'dd-mm-yyyy hh:mi am'),
    142000,
    180.00,
    95.25,
    'Tune-up, brake inspection',
    'E',
    '3GTU1YEJ1BG975085',
    1020
);

INSERT INTO service (
    serv_no,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_ready_pickup,
    serv_kms,
    serv_labour_cost,
    serv_parts_cost,
    serv_instructions,
    pay_mode_code,
    veh_vin,
    cust_no
) VALUES (
    112,
    TO_DATE('07-04-2022', 'dd-mm-yyyy'),
    TO_DATE('07-04-2022 08:30 AM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('07-04-2022 04:30 PM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('07-04-2022 04:40 PM', 'dd-mm-yyyy hh:mi am'),
    95000,
    150.00,
    95.25,
    'Oil change, filter replacement',
    'C',
    'WA1CGCFE6BD111395',
    1050
);


INSERT INTO service (
    serv_no,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_ready_pickup,
    serv_kms,
    serv_labour_cost,
    serv_parts_cost,
    serv_instructions,
    pay_mode_code,
    veh_vin,
    cust_no
) VALUES (
    113,
    TO_DATE('21-04-2022', 'dd-mm-yyyy'),
    TO_DATE('21-04-2022 09:00 AM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('21-04-2022 05:00 PM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('21-04-2022 05:00 PM', 'dd-mm-yyyy hh:mi am'),
    115000,
    200.00,
    120.75,
    'Brake pad replacement, rotor resurfacing',
    'C',
    'WBAWR33598P984354',
    1040
);

INSERT INTO service (
    serv_no,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_ready_pickup,
    serv_kms,
    serv_labour_cost,
    serv_parts_cost,
    serv_instructions,
    pay_mode_code,
    veh_vin,
    cust_no
) VALUES (
    114,
    TO_DATE('17-02-2022', 'dd-mm-yyyy'),
    TO_DATE('17-02-2022 10:10 AM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('17-02-2022 05:30 PM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('17-02-2022 05:30 PM', 'dd-mm-yyyy hh:mi am'),
    130000,
    180.00,
    95.25,
    'Transmission fluid flush',
    'E',
    'WAUGFAFC8FN843179',
    1080
);

INSERT INTO service (
    serv_no,
    serv_date,
    serv_drop_off,
    serv_req_pickup,
    serv_ready_pickup,
    serv_kms,
    serv_labour_cost,
    serv_parts_cost,
    serv_instructions,
    pay_mode_code,
    veh_vin,
    cust_no
) VALUES (
    115,
    TO_DATE('18-03-2022', 'dd-mm-yyyy'),
    TO_DATE('18-03-2022 08:30 AM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('18-03-2022 05:00 PM', 'dd-mm-yyyy hh:mi am'),
    TO_DATE('18-03-2022 05:15 PM', 'dd-mm-yyyy hh:mi am'),
    100000,
    150.00,
    75.50,
    'Standard service',
    'C',
    '3GTU1YEJ1BG975085',
    1060
);


  -- Inserting more sample data for SERVICE_JOB
INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    101,
    4,
    'Battery replacement'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    101,
    5,
    'Air filter replacement'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    102,
    2,
    'Spark plug replacement'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    103,
    1,
    'Oil Filter replacement'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    103,
    2,
    'Exhaust system inspection'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    103,
    4,
    'Headlight restoration'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    104,
    2,
    'Transmission flush'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    104,
    4,
    'Radiator replacement'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    105,
    3,
    'Exhaust system repair'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    106,
    2,
    'Battery charging system inspection'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    106,
    3,
    'Starter motor replacement'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    107,
    2,
    'Suspension bushing replacement'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    108,
    3,
    'Shock absorber replacement'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    108,
    4,
    'Wheel bearing inspection'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    109,
    4,
    'Ignition coil replacement'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    109,
    5,
    'Air conditioning repair'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    110,
    2,
    'Engine tune-up'
);

INSERT INTO service_job (
    serv_no,
    sj_job_no,
    sj_task_description
) VALUES (
    111,
    2,
    'Oxygen sensor replacement'
);
-- Insert additional sample data for part charges
INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    4,
    1,
    89.50,
    101,
    4,
    'KCA415'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    5,
    1,
    18.75,
    101,
    5,
    'R2132P'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    6,
    4,
    32.60,
    102,
    2,
    'FR8HDC'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    9,
    1,
    135.80,
    103,
    1,
    'TPS146'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    10,
    1,
    56.75,
    103,
    2,
    '341490'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    12,
    2,
    40.50,
    103,
    4,
    'KCA415'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    14,
    1,
    76.50,
    104,
    2,
    '338166'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    16,
    1,
    112.25,
    104,
    4,
    'NKR6T1'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    19,
    1,
    58.90,
    105,
    3,
    'ONE2-5'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    20,
    1,
    82.60,
    106,
    2,
    'CTG009'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    21,
    1,
    105.40,
    106,
    3,
    'T23000'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    23,
    1,
    87.25,
    107,
    2,
    'TIM333'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    25,
    2,
    96.50,
    108,
    3,
    'N32780'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    26,
    1,
    42.25,
    108,
    4,
    'GEN123'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    29,
    4,
    78.75,
    109,
    4,
    '341490'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    30,
    1,
    145.60,
    109,
    5,
    'TIM333'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    31,
    1,
    90.25,
    110,
    2,
    'NKR6T1'
);

INSERT INTO part_charge (
    part_charge_no,
    pc_quantity,
    pc_linecost,
    serv_no,
    sj_job_no,
    part_code
) VALUES (
    33,
    1,
    52.90,
    111,
    2,
    'TPS146'
);

COMMIT;
