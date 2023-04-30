const dropdown = document.getElementById('dropdown');
const content = document.getElementById('content');
var command = " This command allows you to "
var see = content.style.display = 'block';

dropdown.addEventListener('change', function() {
    if (dropdown.value === 'option1') {
        document.getElementById("output").innerHTML = '"SHOW DATABASES;"' + command + 'see every database that you have made.'
        see
    } else if (dropdown.value === 'option2') {
        document.getElementById("output").innerHTML = '"CREATE DATABASE;"' + command + 'make a database.'
        see
    } else if (dropdown.value === "option3") {
        document.getElementById("output").innerHTML = '"USE"' + command + 'use a database that you have made.'
        see
    } else if (dropdown.value === "option4") {
        document.getElementById("output").innerHTML = '"SHOW TABLES" ' + command + 'show the tables in a database that you have made.'
        see
    } else if (dropdown.value === "option5") {
        document.getElementById("output").innerHTML = '"CREATE TABLE"' + command + 'create a table in a database that you have made.'
        see
    } else if (dropdown.value === "option6") {
        document.getElementById("output").innerHTML = '"DESCRIBE"' + command + 'Discribes a table that you have made.'
        see
    } else if (dropdown.value == "option7") {
        document.getElementById("output").innerHTML = '"INSERT INTO"' + command + 'Insert into a table by useing (insert into NAME_OF_TABLE values (THE_NUM_YOU_CHOSE,"WHAT_EVER_WORD_YOU_CHOSE",ETC);)'
        see
    } else if (dropdown.value == "option8") {
        document.getElementById("output").innerHTML = '"SELECT * FROM"' + command + "select * from NAME_OF_TABLE; is a coomand that allows you to see whats inside a table"
        see
    }
    else if (dropdown == "DelateDatabases") {
        document.getElementById("output").innerHTML = "'Delate databases;'" + command + "Delate databases"
        see
    }
    else if (dropdown == "Delate part of database;"){
        document.getElementById("output").innerHTML = " Delete from TABLE_NAME where NAME_OF_Field = 'NAME';" + command + "get rid of a piece of the table"
        see
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    else {
        content.style.display = 'none';
    }
});