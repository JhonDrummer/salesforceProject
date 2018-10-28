const sqlite3 = require('sqlite3').verbose();
 
// open database in memory
let db = new sqlite3.Database('C:/Users/ANDAP/Documents/sqlite/prueba.db', (err) => {
  if (err) {
    return console.error(err.message);
  }
  console.log('Connected to the in-memory SQlite database.');
});

/*let sql = 'SELECT * FROM persona where id_persona = ?';
//let id_persona = 1;

db.each(sql, ['1'], (err, row) => {
    if (err) {
      console.error(err.message);
    }
    console.log(row.id_persona + "\t" + row.nombre);
});*/

let sql = 'insert into persona (id_persona, nombre, apellido) values (?,?,?)'
let obj1 = ['6', 'Janeth', 'Mancilla'];

db.run(sql, obj1, function(err){
	if(err){
		return console.log(err.message);
	}
	console.log('Registros insertados ');
});

 
// close the database connection
db.close((err) => {
  if (err) {
    return console.error(err.message);
  }
  console.log('Close the database connection.');
});
