
with skills_demand as (
    SELECT skills_dim.skill_id,
           skills_dim.skills,
        count(skills_job_dim.job_id) as demand_count
    from job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id =  skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE job_title_short = 'Data Analyst'
        and salary_year_avg IS NOT NULL
        and job_work_from_home = TRUE
    GROUP BY skills_dim.skill_id

)
, average_salary as(
    SELECT 
        skills_job_dim.skill_id,
        round(avg(salary_year_avg),0) as avg_salary
    from job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id =  skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE job_title_short = 'Data Analyst'
        and salary_year_avg IS NOT NULL
    GROUP BY skills_job_dim.skill_id

)

SELECT 
    skills_demand.skill_id,
    skills_demand.skills,
    demand_count,
    avg_salary
from 
    skills_demand
INNER JOIN average_salary on skills_demand.skill_id = average_salary.skill_id
WHERE demand_count >10
ORDER BY
    demand_count DESC,
    avg_salary DESC
LIMIT 25;