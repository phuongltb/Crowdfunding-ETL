-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
select cf_id, backers_count
from campaign as cp
where cp.outcome = 'live'
order by backers_count DESC;

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
select bk.cf_id, count(bk.backer_id)
from backers as bk, campaign as cp
where cp.outcome = 'live'
and bk.cf_id = cp.cf_id
group by bk.cf_id
order by count(bk.backer_id) DESC;

-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
SELECT ct.first_name, ct.last_name, ct.email, (cp.goal - cp.pledged) as "Remaining Goal Amount"
into email_contacts_remaining_goal_amount
from campaign as cp, contacts ct
where cp.outcome = 'live'
and ct.contact_id = cp.contact_id
order by "Remaining Goal Amount" desc;

-- Check the table
select * from email_contacts_remaining_goal_amount;

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 
SELECT bk.first_name, bk.last_name, bk.email, cp.cf_id, cp.company_name, cp.description, cp.end_date, (cp.goal - cp.pledged) as "Left of Goal"
into email_backers_remaining_goal_amount
from campaign as cp, backers bk
where cp.outcome = 'live'
and bk.cf_id = cp.cf_id
order by bk.email desc;

-- Check the table
select * from email_backers_remaining_goal_amount;


