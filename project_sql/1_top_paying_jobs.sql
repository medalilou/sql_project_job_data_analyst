/*

what are the top paying data analyst jobs ?

*/

SELECT
    job_id,
    job_title_short,
    salary_year_avg,
    name as company_name
FROM
    job_postings_fact
LEFT JOIN
    company_dim
ON
    company_dim.company_id = job_postings_fact.company_id
WHERE
    job_title_short = 'Data Analyst'
    AND job_location = 'Anywhere'
    AND salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10