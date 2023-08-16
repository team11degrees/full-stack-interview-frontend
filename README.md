# Instructions

## Frontend
The task is to replicate the ui below.

### Screenshot 1
![screenshot-1](https://github.com/team11degrees/full-stack-interview-frontend/blob/main/screnshot-1.png?raw=true)
### Screenshot 2
![screenshot-2](https://github.com/team11degrees/full-stack-interview-frontend/blob/main/screenshot-2.png?raw=true)

- List the payroll data formatted as shown above.
- Add filter for net pay and employee search.
- The filter query params should reflect on the url.
- Use debounce to reduce the network requests.
- Add simple pagination by default showing 5 records.

## Backend
- An sql data file is provided in the repo. (payroll-data.sql).
- Create a database and import the data.
- Set up a fresh Laravel project.
- Add Payroll model plus Controller(s) as you see fit.

#### The formulae for calculating gross and net pay are as follows:
- Gross Pay = basic salary + allowances - deductions affecting gross 


- Net Pay = basic salary + allowances with cash benefits - all deductions