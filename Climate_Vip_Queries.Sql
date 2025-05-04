**Schema (SQLite v3.39)**

      CREATE TABLE vips (
         member_id INTEGER PRIMARY KEY
       , last_name TEXT
       , first_name TEXT
       , event INTEGER
       , provides_feedback_to INTEGER
       , association TEXT
       , assoc_type TEXT
       , member_since INTEGER
       );
       
    CREATE TABLE reservations ( 
        member_id INTEGER
      , hotel INTEGER
      , welcome_rsvp BIT
      , dinner_rsvp BIT
      );
     
     
    CREATE TABLE events (
        event_id INTEGER PRIMARY KEY
      , event_name TEXT
      , event_type TEXT
      );
      
    
    CREATE TABLE hotels (
        hotel_id INTEGER PRIMARY KEY
      , hotel_name TEXT
      , address TEXT
      );
    
    
    INSERT INTO vips VALUES
    (2814, 'Fletcher', 'David', 5, 3742, 'Anishinabek Educational Institute', 'education', 2004)
    ,(1944, 'Kim', 'Jiho', 4, 4230, 'Appalachian State', 'education', 1991)
    ,(3889, 'Kowalski', 'Alex', 9, 3460, 'Brigg & McKinnnon AEC', 'private', 2015)
    ,(3775, 'Al-Hassan', 'Amina', 6, 3891, 'California Department of Water Resources', 'government', 2013)
    ,(4003, 'Chang', 'Nathan', 8, 3960, 'Chang Engineers, LLC', 'private', 2017)
    ,(3490, 'Anderson', 'Shanae', 2, 4315, 'Chicago Department of Public Health', 'government', 2008)
    ,(3077, 'Murphy', 'Aisling', 3, 2731, 'Climate Impacts on Farming Institute', 'research', 2006)
    ,(3960, 'Ivanov', 'Dmitri', 6, 2814, 'Cooperative Institute for Climate, Ocean, and Ecosystem Studies', 'research', 2016)
    ,(4402, 'Bennett', 'Leah', NULL, NULL, 'Denver Climate Research Foundation', 'research', 2024)
    ,(3891, 'Roy', 'Harper', 4, 3077, 'Environmental Science Associates', 'private', 2015)
    ,(4386, 'Silva', 'Thiago', NULL, NULL, 'Everglades Research Institute', 'research', 2023)
    ,(4297, 'Chukwu', 'Ifeoma', 9, 2716, 'Georgia State University', 'education', 2020)
    ,(3189, 'Martinez', 'Isabella', 8, 2011, 'Iowa State University', 'education', 2007)
    ,(3491, 'Gonzalez', 'Victor', 5, 3047, 'McGill University', 'education', 2008)
    ,(3742, 'Brown', 'Timothy', 3, 3490, 'Michigan State University', 'education', 2012)
    ,(4361, 'Riley', 'Daniel', 6, 1944, 'Minnesota Water Board', 'education', 2023)
    ,(1934, 'Garcia', 'Mateo', NULL, NULL, 'Oklahoma Department of Wildlife Conservation', 'government', 1990)
    ,(2011, 'Patel', 'Anika', 7, 3491, 'Renewable Energy Research Center, Honolulu', 'research', 1995)
    ,(4315, 'Shepherd', 'Priya', 10, 4003, 'Tech517', 'private', 2022)
    ,(1738, 'Johnson', 'Denny', NULL, NULL, 'Texas Department of Conservation and Natural Resources', 'government', 1987)
    ,(4230, 'Parker', 'Moss', 2, 3719, 'University of California, Davis', 'education', 2019)
    ,(2731, 'Rivera', 'Juan', 1, 4297, 'University of Montana', 'education', 2003)
    ,(2091, 'Haines', 'Keisha', 11, 3189, 'University of North Carolina', 'education', 1998)
    ,(2551, 'Nguyen', 'Linh', 2, 2091, 'University of Pennsylvania', 'education', 2002)
    ,(3047, 'Singh', 'Aarav', 4, 2551, 'US Department of Fish and Wildlife', 'government', 2005)
    ,(4112, 'Fernandez', 'Lucia', NULL, NULL, 'US Department of Fish and Wildlife', 'government', 2018)
    ,(3719, 'Denton', 'K. L.', 11, 3889, 'US Department of Housing and Urban Development', 'government', 2011)
    ,(3460, 'Chen', 'Beverly', 7, 4361, 'US Department of Natural Resources', 'government', 2008)
    ,(2716, 'Rodriguez', 'Sofia', 7, 3775, 'US Department of Renewable Energy', 'government', 2003)
    ,(2800, 'Lee', 'Min-Jun', NULL, NULL, 'US Department of Renewable Energy', 'government', 2004)
    ;
    
    
    INSERT INTO reservations VALUES
     (3491,  1, 1, 1)
    ,(4361,  1, 1, 1)
    ,(3047,  2, 1, 1)
    ,(3775,  1, 1, 1)
    ,(4003,  3, 0, 1)
    ,(4402,  2, 1, 1)
    ,(3891,  3, 1, 1)
    ,(2011,  1, 1, 1)
    ,(4808,  2, 1, 1)
    ,(3490,  1, 0, 1)
    ,(3189,  1, 1, 1)
    ,(1944,  1, 0, 1)
    ,(2716,  2, 0, 1)
    ,(2551,  2, 1, 1)
    ,(4386,  2, 0, 1)
    ,(2814,  3, 1, 1)
    ,(1738,  2, 0, 1)
    ,(3960,  1, 1, 1)
    ,(4315,  3, 1, 0)
    ,(4722,  2, 1, 1)
    ,(2731,  3, 1, 1)
    ,(2091,  1, 1, 0)
    ,(3889,  3, 1, 1)
    ,(3742,  2, 0, 1)
    ,(3719,  2, 0, 1)
    ,(3460,  2, 1, 1)
    ,(3077,  2, 0, 1)
    ,(4420,  1, 1, 0)
    ,(2800,  2, 0, 1)
    ,(1934,  3, 1, 1)
    ;
    
    
    INSERT INTO events VALUES
      (1, 'Climate Change Communication: Engaging the Public and Policy Makers', 'Keynote')
    , (2, 'Climate Change and Public Health: Risks and Responses', 'Panel')
    , (3, 'Climate Change and Agriculture: Ensuring Food Security', 'Panel')
    , (4, 'Biodiversity and Ecosystem Services in a Changing Climate', 'Panel')
    , (5, 'Indigenous Knowledge and Climate Change Adaptation', 'Panel')
    , (6, 'The Role of Oceans in Climate Change: Impacts and Solutions', 'Panel')
    , (7, 'Climate Change and Renewable Energy: Innovations and Challenges', 'Panel')
    , (8, 'Climate Justice and Equity: Addressing Disproportionate Impacts', 'Panel')
    , (9, 'The Economic Impact of Climate Change: Costs and Opportunities', 'Panel')
    , (10, 'Technological Innovations for Climate Monitoring and Assessment', 'Workshop')
    , (11, 'Urban Resilience: Designing Climate-Smart Cities', 'Workshop')
    , (12, 'The Role of Policy in Combating Climate Change', 'Workshop')
    ;
    
    
    INSERT INTO hotels VALUES
       (1, 'Hyatt Downtown', '392 South Main Street, Cityville, PA')
     , (2, 'Marriott', '1240 Marshall Avenue, Cityville, PA')
     , (3, 'Four Season''s', '900 Winter Road, Cityville, PA')
     ;

---

**Query #1**

    -- Get the names of VIPs along with the hotel name they are staying in.
    SELECT v. member_id, v.first_name, v.last_name, h.hotel_name
    FROM vips v
    INNER JOIN reservations r ON v.member_id = r.member_id
    INNER JOIN hotels h ON r.hotel = h.hotel_id
    Limit 5;

| member_id | first_name | last_name | hotel_name     |
| --------- | ---------- | --------- | -------------- |
| 3491      | Victor     | Gonzalez  | Hyatt Downtown |
| 4361      | Daniel     | Riley     | Hyatt Downtown |
| 3047      | Aarav      | Singh     | Marriott       |
| 3775      | Amina      | Al-Hassan | Hyatt Downtown |
| 4003      | Nathan     | Chang     | Four Season's  |

---
**Query #2**

    
    
    -- List all VIPs and show their hotel name if they have a reservation, otherwise show NULL.
    SELECT v.first_name, v.last_name, h.hotel_name
    FROM vips v
    LEFT JOIN reservations r ON v.member_id = r.member_id
    LEFT JOIN hotels h ON r.hotel = h.hotel_id
    Limit 5;

| first_name | last_name | hotel_name     |
| ---------- | --------- | -------------- |
| Denny      | Johnson   | Marriott       |
| Mateo      | Garcia    | Four Season's  |
| Jiho       | Kim       | Hyatt Downtown |
| Anika      | Patel     | Hyatt Downtown |
| Keisha     | Haines    | Hyatt Downtown |

---
**Query #3**

    
    
    -- Multiple JOINs: vips to events and hotels via reservations
    --Show each VIP's name, the event name they are attending, and the hotel they reserved.
    SELECT v.first_name, v.last_name, e.event_name, h.hotel_name
    FROM vips v
    LEFT JOIN events e ON v.event = e.event_id
    LEFT JOIN reservations r ON v.member_id = r.member_id
    LEFT JOIN hotels h ON r.hotel = h.hotel_id;

| first_name | last_name | event_name                                                          | hotel_name     |
| ---------- | --------- | ------------------------------------------------------------------- | -------------- |
| Denny      | Johnson   |                                                                     | Marriott       |
| Mateo      | Garcia    |                                                                     | Four Season's  |
| Jiho       | Kim       | Biodiversity and Ecosystem Services in a Changing Climate           | Hyatt Downtown |
| Anika      | Patel     | Climate Change and Renewable Energy: Innovations and Challenges     | Hyatt Downtown |
| Keisha     | Haines    | Urban Resilience: Designing Climate-Smart Cities                    | Hyatt Downtown |
| Linh       | Nguyen    | Climate Change and Public Health: Risks and Responses               | Marriott       |
| Sofia      | Rodriguez | Climate Change and Renewable Energy: Innovations and Challenges     | Marriott       |
| Juan       | Rivera    | Climate Change Communication: Engaging the Public and Policy Makers | Four Season's  |
| Min-Jun    | Lee       |                                                                     | Marriott       |
| David      | Fletcher  | Indigenous Knowledge and Climate Change Adaptation                  | Four Season's  |
| Aarav      | Singh     | Biodiversity and Ecosystem Services in a Changing Climate           | Marriott       |
| Aisling    | Murphy    | Climate Change and Agriculture: Ensuring Food Security              | Marriott       |
| Isabella   | Martinez  | Climate Justice and Equity: Addressing Disproportionate Impacts     | Hyatt Downtown |
| Beverly    | Chen      | Climate Change and Renewable Energy: Innovations and Challenges     | Marriott       |
| Shanae     | Anderson  | Climate Change and Public Health: Risks and Responses               | Hyatt Downtown |
| Victor     | Gonzalez  | Indigenous Knowledge and Climate Change Adaptation                  | Hyatt Downtown |
| K. L.      | Denton    | Urban Resilience: Designing Climate-Smart Cities                    | Marriott       |
| Timothy    | Brown     | Climate Change and Agriculture: Ensuring Food Security              | Marriott       |
| Amina      | Al-Hassan | The Role of Oceans in Climate Change: Impacts and Solutions         | Hyatt Downtown |
| Alex       | Kowalski  | The Economic Impact of Climate Change: Costs and Opportunities      | Four Season's  |
| Harper     | Roy       | Biodiversity and Ecosystem Services in a Changing Climate           | Four Season's  |
| Dmitri     | Ivanov    | The Role of Oceans in Climate Change: Impacts and Solutions         | Hyatt Downtown |
| Nathan     | Chang     | Climate Justice and Equity: Addressing Disproportionate Impacts     | Four Season's  |
| Lucia      | Fernandez |                                                                     |                |
| Moss       | Parker    | Climate Change and Public Health: Risks and Responses               |                |
| Ifeoma     | Chukwu    | The Economic Impact of Climate Change: Costs and Opportunities      |                |
| Priya      | Shepherd  | Technological Innovations for Climate Monitoring and Assessment     | Four Season's  |
| Daniel     | Riley     | The Role of Oceans in Climate Change: Impacts and Solutions         | Hyatt Downtown |
| Thiago     | Silva     |                                                                     | Marriott       |
| Leah       | Bennett   |                                                                     | Marriott       |

---
**Query #4**

    
    
    -- SELF JOIN on vips to find the full name of the feedback recipient
    SELECT v1.first_name || ' ' || v1.last_name AS giver,
           v2.first_name || ' ' || v2.last_name AS receiver
    FROM vips v1
    JOIN vips v2 ON v1.provides_feedback_to = v2.member_id;

| giver             | receiver          |
| ----------------- | ----------------- |
| Jiho Kim          | Moss Parker       |
| Anika Patel       | Victor Gonzalez   |
| Keisha Haines     | Isabella Martinez |
| Linh Nguyen       | Keisha Haines     |
| Sofia Rodriguez   | Amina Al-Hassan   |
| Juan Rivera       | Ifeoma Chukwu     |
| David Fletcher    | Timothy Brown     |
| Aarav Singh       | Linh Nguyen       |
| Aisling Murphy    | Juan Rivera       |
| Isabella Martinez | Anika Patel       |
| Beverly Chen      | Daniel Riley      |
| Shanae Anderson   | Priya Shepherd    |
| Victor Gonzalez   | Aarav Singh       |
| K. L. Denton      | Alex Kowalski     |
| Timothy Brown     | Shanae Anderson   |
| Amina Al-Hassan   | Harper Roy        |
| Alex Kowalski     | Beverly Chen      |
| Harper Roy        | Aisling Murphy    |
| Dmitri Ivanov     | David Fletcher    |
| Nathan Chang      | Dmitri Ivanov     |
| Moss Parker       | K. L. Denton      |
| Ifeoma Chukwu     | Sofia Rodriguez   |
| Priya Shepherd    | Nathan Chang      |
| Daniel Riley      | Jiho Kim          |

---
**Query #5**

    
    
    -- Subquery to get average year of membership
    --List VIPs who have been members longer than the average membership start year.
    SELECT first_name, last_name, member_since
    FROM vips
    WHERE member_since < (
        SELECT AVG(member_since) FROM vips WHERE member_since IS NOT NULL
    );

| first_name | last_name | member_since |
| ---------- | --------- | ------------ |
| Denny      | Johnson   | 1987         |
| Mateo      | Garcia    | 1990         |
| Jiho       | Kim       | 1991         |
| Anika      | Patel     | 1995         |
| Keisha     | Haines    | 1998         |
| Linh       | Nguyen    | 2002         |
| Sofia      | Rodriguez | 2003         |
| Juan       | Rivera    | 2003         |
| Min-Jun    | Lee       | 2004         |
| David      | Fletcher  | 2004         |
| Aarav      | Singh     | 2005         |
| Aisling    | Murphy    | 2006         |
| Isabella   | Martinez  | 2007         |
| Beverly    | Chen      | 2008         |
| Shanae     | Anderson  | 2008         |
| Victor     | Gonzalez  | 2008         |

---
**Query #6**

    
    
    -- Join vips and reservations, group by event and count dinner_rsvp = 1
    --Count how many VIPs RSVP’d ‘yes’ to dinner for each event.
    SELECT e.event_name, COUNT(*) AS dinner_yes_rsvp
    FROM vips v
    JOIN reservations r ON v.member_id = r.member_id
    JOIN events e ON v.event = e.event_id
    WHERE r.dinner_rsvp = 1
    GROUP BY e.event_name;

| event_name                                                          | dinner_yes_rsvp |
| ------------------------------------------------------------------- | --------------- |
| Biodiversity and Ecosystem Services in a Changing Climate           | 3               |
| Climate Change Communication: Engaging the Public and Policy Makers | 1               |
| Climate Change and Agriculture: Ensuring Food Security              | 2               |
| Climate Change and Public Health: Risks and Responses               | 2               |
| Climate Change and Renewable Energy: Innovations and Challenges     | 3               |
| Climate Justice and Equity: Addressing Disproportionate Impacts     | 2               |
| Indigenous Knowledge and Climate Change Adaptation                  | 2               |
| The Economic Impact of Climate Change: Costs and Opportunities      | 1               |
| The Role of Oceans in Climate Change: Impacts and Solutions         | 3               |
| Urban Resilience: Designing Climate-Smart Cities                    | 1               |

---
**Query #7**

    
    
    -- LEFT JOIN and filter where reservation is missing
    --Your choice: Find VIPs without a hotel reservation
    SELECT v.first_name, v.last_name
    FROM vips v
    LEFT JOIN reservations r ON v.member_id = r.member_id
    WHERE r.member_id IS NULL;

| first_name | last_name |
| ---------- | --------- |
| Lucia      | Fernandez |
| Moss       | Parker    |
| Ifeoma     | Chukwu    |

---
**Query #8**

    
    
    -- VIPs who joined before 2000 and RSVP’d for dinner
    SELECT v.first_name, v.last_name
    FROM vips v
    JOIN reservations r ON v.member_id = r.member_id
    WHERE v.member_since < 2000 AND r.dinner_rsvp = 1;

| first_name | last_name |
| ---------- | --------- |
| Anika      | Patel     |
| Jiho       | Kim       |
| Denny      | Johnson   |
| Mateo      | Garcia    |

---
**Query #9**

    
    
    --Government VIPs attending an event
    SELECT v.first_name, v.last_name, e.event_name
    FROM vips v
    INNER JOIN events e ON v.event = e.event_id
    WHERE v.assoc_type = 'government';

| first_name | last_name | event_name                                                      |
| ---------- | --------- | --------------------------------------------------------------- |
| Sofia      | Rodriguez | Climate Change and Renewable Energy: Innovations and Challenges |
| Aarav      | Singh     | Biodiversity and Ecosystem Services in a Changing Climate       |
| Beverly    | Chen      | Climate Change and Renewable Energy: Innovations and Challenges |
| Shanae     | Anderson  | Climate Change and Public Health: Risks and Responses           |
| K. L.      | Denton    | Urban Resilience: Designing Climate-Smart Cities                |
| Amina      | Al-Hassan | The Role of Oceans in Climate Change: Impacts and Solutions     |

---

[View on DB Fiddle](https://www.db-fiddle.com/f/pxMci1sLL945KHKYvpe9W6/1)
