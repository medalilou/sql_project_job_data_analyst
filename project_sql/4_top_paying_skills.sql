
/* 

What are the top skills based on salary ?

*/

SELECT
    skills,
    ROUND (AVG (salary_year_avg), 0) AS avg_salary
FROM
    job_postings_fact
INNER JOIN
    skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN
    skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = TRUE
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25
    

/*

Here is a breakdown of the results of the top paying data analyst skills:

1. Big Data and Cloud Technologies Pay Well:
Skills like PySpark (average salary: $208,172), Databricks ($141,907), and GCP (Google Cloud Platform) ($122,500) are highly valued. This reflects the increasing demand for expertise in managing large-scale data processing and cloud computing.
2. Version Control and DevOps Tools Are Critical:
Tools like Bitbucket ($189,155), GitLab ($154,500), and Jenkins ($125,436) are highly compensated, indicating that data analysts who can work within DevOps and collaborative development environments are in demand.
3. AI/ML-Related Skills Command High Salaries:
Watson ($160,515), DataRobot ($155,486), and Scikit-learn ($125,781) are top-paying skills, highlighting the value of AI and machine learning knowledge in data analysis.
4. Programming Languages with Specialized Use Cases Are Rewarded:
Languages like Swift ($153,750), Golang ($145,000), Scala ($124,903), and PostgreSQL ($123,879) are also in the top-paying skills. These languages are crucial for developing optimized and scalable data-driven applications.
5. Popular Data Science Libraries & Tools:
Skills with widely used data science libraries like Pandas ($151,821), Numpy ($143,513), and Jupyter ($152,777) are critical for advanced data analysis, making them highly paid.

General Trend:
High-paying data analyst roles often require a blend of technical programming, cloud computing, big data handling, and machine learning expertise.
These trends emphasize that combining traditional data analysis skills with expertise in emerging technologies and tools increases earning potential in 2023.

*/
