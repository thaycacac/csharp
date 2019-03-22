-- DELETE

DELETE FROM member WHERE member_no = 1;
DELETE FROM corporation WHERE corp_no = 1;
DELETE FROM region WHERE region_no = 1;
DELETE FROM TestResult WHERE StudentID = 1;
DELETE FROM CourseRegistration WHERE StudentID = 1;

-- UPDATE

UPDATE member SET lastname = 'Hoa', firstname = 'Pham Ngoc', middleinitial = ''
street = '', city = '', state_prov = '', country = '', mail_code = '', phone_no = '',
photograph = NULL, issue_dt = (dateadd(year,(-1),getdate() + 1)),
expr_dt = GETDATE(), region_no = 5, corp_no = NULL, prev_balance = NULL, curr_balance = NULL
WHERE member_no = 1

UPDATE region SET region_name = '', street = '', city = '', state_prov = '',
country = '', mail_code = '', phone_no = '', region_code = ''
WHERE region_code = 1

UPDATE corporation SET corp_name = '', street = '', city = '', state_prov = '',
country = '', mail_code = '', phone_no = '', expr_dt = '', region_no = '', corp_code = ''
WHERE corp_no = 1

UPDATE TestResult SET StudentName = '', Subject = '', TestType = '', Date = '', Mark = ''
WHERE StudentID = 1

UPDATE CourseRegistration SET StudentName = '', Sex = ''1, Subject = '', Time = '', Note = ''
WHERE StudentID = 1

-- INSERT

INSERT INTO member (lastname, firstname, middleinitial, street, city,
    state_prov, country, mail_code, phone_no, photograph,
    issue_dt, expr_dt, region_no, corp_no, prev_balance, curr_balance)
VALUES
(   'Hoa',      -- lastname: varchar(15)
    'Pham Ngoc',      -- firstname: varchar(15)
    '',      -- middleinitial: char(1)
    '',      -- street: varchar(15)
    '',      -- city: varchar(15)
    '',      -- state_prov: char(2)
    '',      -- country: char(2)
    '',      -- mail_code: char(10)
    '',      -- phone_no: char(13)
    NULL,      -- photograph: image
    (dateadd(year,(-1),getdate() + 1)), -- issue_dt: datetime
    GETDATE(), -- expr_dt: datetime
    5,      -- region_no: int
    NULL,      -- corp_no: int
    NULL,      -- prev_balance: money
    NULL       -- curr_balance: money
)

INSERT INTO region (region_name, street, city,
    state_prov, country, mail_code, phone_no, region_code)
VALUES
(   NULL, -- region_name: varchar(15)
    NULL, -- street: varchar(15)
    NULL, -- city: varchar(15)
    NULL, -- state_prov: varchar(2)
    NULL, -- country: varchar(2)
    NULL, -- mail_code: varchar(10)
    NULL, -- phone_no: varchar(13)
    NULL  -- region_code: varchar(2)
)

INSERT INTO corporation (corp_name, street, city, state_prov, country, mail_code, 
    phone_no, expr_dt, region_no, corp_code)
VALUES
(   NULL,      -- corp_name: varchar(31)
    NULL,      -- street: varchar(15)
    NULL,      -- city: varchar(15)
    NULL,      -- state_prov: char(2)
    NULL,      -- country: char(2)
    NULL,      -- mail_code: char(10)
    NULL,      -- phone_no: char(13)
    GETDATE(), -- expr_dt: datetime
    NULL,      -- region_no: int
    NULL       -- corp_code: char(2)
)

INSERT INTO CourseRegistration (StudentID, StudentName, Sex, Subject, Time, Note)
VALUES
(   '',   -- StudentID: varchar(10)
    N'',  -- StudentName: nvarchar(100)
    NULL, -- Sex: bit
    '',   -- Subject: varchar(50)
    N'',  -- Time: nvarchar(20)
    ''    -- Note: text
)


INSERT INTO TestResult (StudentID, StudentName, Subject, TestType, Date, Mark)
VALUES
(   '',        -- StudentID: varchar(10)
    N'',       -- StudentName: nvarchar(100)
    N'',       -- Subject: nvarchar(50)
    '',        -- TestType: char(2)
    GETDATE(), -- Date: date
    0.0        -- Mark: float
)
