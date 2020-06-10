import 'package:path/path.dart';
import 'package:projeto_prova/model/animal.dart';
import 'package:projeto_prova/model/docente.dart';
import 'package:sqflite/sqflite.dart';
class SQLiteService {
       Future <Database> database;
      Future<void> incializacao() async{
         database = openDatabase(
         join(await getDatabasesPath(), 'cadastro.db'),
         onCreate: (db, version){
           return db.execute("CREATE TABLE cadastroDocente (id INTRGER PRIMARY KEY, nome TEXT, matricula INTRGER, senha TEXT, dnasc TEXT)");
         }, 
         version: 1,
        );
      }

      Future<void>insertDocente(Docente docente)async{
        final Database db = await this.database;
        await db.insert('cadastroDocente', docente.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace
        );
        
      }
}

// class SQLiteService {
//       Future <Database> database;
//      Future<void> incializacao() async{
//         database = openDatabase(
//        join(await getDatabasesPath(), 'cadastro.db'),
//         onCreate: (db, version){
//           return db.execute("CREATE TABLE animal (id INTRGER PRIMARY KEY, especie TEXT, areaBioterio TEXT)");
//         }, 
//         version: 1,
//        );
//      }
//
//      Future<void>insertAnimal(Animal animal)async{
//        final Database db = await this.database;
//        await db.insert('animal', animal.toMap(),
//        conflictAlgorithm: ConflictAlgorithm.replace
//        );
//        
//      }
//}