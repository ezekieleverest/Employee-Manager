const express = require("express");
const router = express.Router();
const mysql = require("mysql");
const inquirer = require("inquirer");

const connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "Stickman7",
  database: "employee_db"
});

var startPrompt = {
        type: "list",
        message: "What would you like to do?",
        choices: ["Add Employee", 'Remove Employee', 'View All Employee', 'View All Employees by Department', 'View All Employees by Manager', 'Update Employee Manager', 'Update Employee Role', 'Add Role', 'View All Roles', 'Remove Role'],
        name: 'list'
}
var employeeList = connection.query(function(err, res) {
          if (err) throw err;
    "SELECT * FROM employee_db.employee" [res.first_name, res.last_name], 

    //   console.log(res)
      console.log(employeeList)
    //   employeeList = res
    //   console.log(res)
    }
    
  );
function start() {
    inquirer.prompt(startPrompt).then((answers) => {
        var whichOp = answers.list
        if (whichOp === "Remove Employee"){
            removeEmployee()
        }
    })}
var whichEmpRmvQuery = "SELECT * FROM employee"
var whichEmpRmv = {            
            type: "list",
            choices: ([employeeList]),
            message: "Which Employee would you like to remove?",
            name: "empForRmv"
        }
function removeEmployee() {
        inquirer.prompt(whichEmpRmv).then((answers) => {
        if (err) throw err
        console.log(answers)
    }
    );
    console.log("Made it")
    }
var questions = [
    {

    },
    {
        type: "input",
        message: "Which Employee do you want to remove?",
        name: 'rmvEmp',
        // when: answers.list = "Remove Employee"
    },
    {
        type: 'input', 
        message: 'What is the Employees first name?',
        name: "newEmpFirName"
        // when
    },
    {
        type: 'input',
        message: 'What is the Employees last name?',
        name: 'newEmpLastName'
    },
    {
        type: 'input',
        message: 'What is the Employees role?',
        name: 'newEmpLastName'
    },
    {
        type: 'input',
        message: 'Who is the Employees manager?',
        name: 'newEmpMan'
    }
  
];
inquirer.prompt(questions)
    .then((answers) => {
        if (err) throw err
    })

start()
//     console.log(answers)
// function showEmp(employeeList) {
    //     if 
    //   return function (answers) {
        //     return answers[employeeList];
        //   };
        // }