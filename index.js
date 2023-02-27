const inquirer = require('inquirer');
const mysql = require('mysql');
const consoleTable = require('console.table');

const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'employees_db'
});

//error check for connection
connection.connect(function(err) {
    if (err) throw err;
   
    console.log("Connected as ID " + connection.threadId);
    console.clear();
    console.log ("======================================");
    console.log ("");
    console.log ("   WELCOME TO THE EMPLOYEE DATABASE   ");
    console.log ("");
    console.log ("======================================");
    runEmployeeDB();
  });


function startEmployeeDB() {
    inquirer.prompt([
        {
        type: "list",
        message: "What would you like to do today?",
        name: "action",
        choices: [
                "View All Employees", 
                "View All Departments",
                "View All Roles",
                "View All Employees by Department",
                "View All Employees by Role",
                "Add Department",
                "Add Role",
                "Add Employee",
                "Update Employee Role",
                "Exit"
                ]
}
]).then(function(answers) {
    switch (answers.action) {

        // VIEW ALL EMPLOYEES ___________________
        case "View All Employees":
            viewAllEmployees();
        break;

        // VIEW ALL DEPARTMENTS _________________
        case "View All Departments":
            viewAllDepts();
        break;

         // VIEW ALL ROLES ______________________
        case "View All Roles":
            viewAllRoles();
        break;
            
        // VIEW ALL EMPLOYES BY DEPT ____________
        case "View All Employees by Department":
            viewEmployeesByDept();
        break;

        // VIEW EMPLOYEES BY ROLE ______________
        case "View All Employees by Role":
            viewEmployeesByRole();
        break;

        // ADD A DEPARTMENT ____________________
        case "Add Department":
            addDept();
        break;

        // ADD A ROLE ___________________________
        case "Add Role":
            addRole();
        break;

        // ADD EMPLOYEE _________________________
        case "Add Employee":
            addEmployee();
        break;

        // UPDATE EMPLOYEE ROLE _________________
        case "Update Employee Role":
            updateEmployeeRole();
        break;

        //EXIT ________________________
        case "Exit":
            console.log ("===============================================");
            console.log ("");
            console.log ("   THANK YOU FOR USING THE EMPLOYEE DATABASE   ");
            console.log ("");
            console.log ("===============================================");
            connection.end();
        break;
        }
})
};