-- PART A - Inner JOIN
-- Question 1 Users who have subscriptions
SELECT
    u.user_id,
    u.user_name,
    s.subscription_id,
    s.start_date
FROM workspace.default.users u
INNER JOIN workspace.default.subscriptions s
    ON u.user_id = s.user_id;

-- Question 2 Subscriptions with their plans
SELECT
    s.subscription_id,
    s.user_id,
    p.plan_name,
    p.monthly_price
FROM workspace.default.subscriptions s
INNER JOIN workspace.default.plans p
    ON s.plan_id = p.plan_id;

--Question 3 Viewing sessions with matching shows
SELECT
    v.session_id,
    v.user_id,
    sh.show_title,
    sh.genre,
    v.watch_minutes
FROM workspace.default.viewing_sessions v
INNER JOIN workspace.default.shows sh
    ON v.show_id = sh.show_id;

-- Question 4 Viewing sessions with matching users
SELECT
    u.user_name,
    u.country,
    v.session_id,
    v.show_id,
    v.watch_minutes
FROM workspace.default.users u
INNER JOIN workspace.default.viewing_sessions v
    ON u.user_id = v.user_id;

--Question 5 Users, subscriptions and plans
SELECT
    u.user_name,
    u.country,
    p.plan_name,
    p.monthly_price,
    s.start_date
FROM users u
INNER JOIN workspace.default.subscriptions s
    ON u.user_id = s.user_id
INNER JOIN workspace.default.plans p
    ON s.plan_id = p.plan_id;

--PART B - LEFT JOIN
--Question 6 - All users and subscriptions
SELECT
    u.user_id,
    u.user_name,
    s.subscription_id,
    s.start_date
FROM workspace.default.users u
LEFT JOIN workspace.default.subscriptions s
    ON u.user_id = s.user_id;

--Question 7 All plans and subscriptions
SELECT
    p.plan_id,
    p.plan_name,
    s.subscription_id,
    s.user_id
FROM workspace.default.plans p
LEFT JOIN workspace.default.subscriptions s
    ON p.plan_id = s.plan_id;

--Question 8 All shows and viewing sessions
SELECT
    sh.show_id,
    sh.show_title,
    v.session_id,
    v.watch_minutes
FROM workspace.default.shows sh
LEFT JOIN workspace.default.viewing_sessions v
    ON sh.show_id = v.show_id;

--Question 9 All viewing sessions with users
SELECT
    v.session_id,
    v.show_id,
    v.watch_minutes,
    u.user_id,
    u.user_name
FROM workspace.default.viewing_sessions v
LEFT JOIN workspace.default.users u
    ON v.user_id = u.user_id;

--Question 10 All users and their plans
SELECT
    u.user_name,
    u.country,
    p.plan_name,
    p.monthly_price
FROM workspace.default.users u
LEFT JOIN workspace.default.subscriptions s
    ON u.user_id = s.user_id
LEFT JOIN workspace.default.plans p
    ON s.plan_id = p.plan_id;

--PART C FULL OUTER JOIN
-- Question 11 FULL OUTER JOIN users and subscriptions
SELECT
    COALESCE(u.user_id, s.user_id) AS user_id,
    u.user_name,
    s.subscription_id,
    s.start_date
FROM workspace.default.users u
FULL OUTER JOIN workspace.default.subscriptions s
    ON u.user_id = s.user_id;

-- Question 12 FULL OUTER JOIN plans and subscriptions
SELECT
    COALESCE(p.plan_id, s.plan_id) AS plan_id,
    p.plan_name,
    s.subscription_id,
    s.user_id
FROM workspace.default.plans p
FULL OUTER JOIN workspace.default.subscriptions s
    ON p.plan_id = s.plan_id;

-- Question 13 FULL OUTER JOIN shows and viewing sessions
SELECT
    COALESCE(sh.show_id, v.show_id) AS show_id,
    sh.show_title,
    v.session_id,
    v.watch_minutes
FROM workspace.default.shows sh
FULL OUTER JOIN workspace.default.viewing_sessions v
    ON sh.show_id = v.show_id;

--Question 14 FULL OUTER JOIN users and sessions
SELECT
    COALESCE(u.user_id, v.user_id) AS user_id,
    u.user_name,
    v.session_id,
    v.show_id,
    v.watch_minutes
FROM workspace.default.users u
FULL OUTER JOIN workspace.default.viewing_sessions v
    ON u.user_id = v.user_id;

-- Question 15 Users, subscriptions and plans using FULL OUTER JOIN
SELECT
    COALESCE(u.user_id, s.user_id) AS user_id,
    u.user_name,
    s.subscription_id,
    COALESCE(p.plan_id, s.plan_id) AS plan_id,
    p.plan_name
FROM workspace.default.users u
FULL OUTER JOIN workspace.default.subscriptions s
    ON u.user_id = s.user_id
FULL OUTER JOIN workspace.default.plans p
    ON s.plan_id = p.plan_id;

-- BONUS QUESTION
--BONUS Question 1: Which users have not subscribed to any plan?
SELECT
    u.user_id,
    u.user_name,
    u.country
FROM workspace.default.users u
LEFT JOIN workspace.default.subscriptions s
    ON u.user_id = s.user_id
WHERE s.subscription_id IS NULL;

--BONUS Question 2: Which subscriptions reference users that do not exist?
SELECT
    s.subscription_id,
    s.user_id,
    s.plan_id,
    s.start_date
FROM workspace.default.subscriptions s
LEFT JOIN workspace.default.users u
    ON s.user_id = u.user_id
WHERE u.user_id IS NULL;

--BONUS Question 3: Which shows have never been watched?
SELECT
    sh.show_id,
    sh.show_title,
    sh.genre
FROM workspace.default.shows sh
LEFT JOIN workspace.default.viewing_sessions v
    ON sh.show_id = v.show_id
WHERE v.session_id IS NULL;

--BONUS Question 4: Which viewing sessions reference shows that do not exist?
SELECT
    v.session_id,
    v.user_id,
    v.show_id,
    v.watch_minutes
FROM workspace.default.viewing_sessions v
LEFT JOIN workspace.default.shows sh
    ON v.show_id = sh.show_id
WHERE sh.show_id IS NULL;

--BONUS Question 5: Which plans have no subscribers?
SELECT
    p.plan_id,
    p.plan_name,
    p.monthly_price
FROM workspace.default.plans p
LEFT JOIN workspace.default.subscriptions s
    ON p.plan_id = s.plan_id
WHERE s.subscription_id IS NULL;
