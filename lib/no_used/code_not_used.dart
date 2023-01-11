// class DatabasePage extends StatelessWidget {
//   const DatabasePage({
//     super.key,
//     required this.database,
//   });

//   final int database;

//   @override
//   Widget build(BuildContext context) {
//     return DecoratedPage(
//       title: 'Database $database',
//       child: ListView.builder(itemBuilder: (context, index) {
//         return ListTile(
//           title: Text('Table $index'),
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) =>
//                     TablePage(database: database, table: index),
//               ),
//             );
//           },
//         );
//       }),
//     );
//   }
// }

// class TablePage extends StatelessWidget {
//   const TablePage({
//     super.key,
//     required this.database,
//     required this.table,
//   });

//   final int database;
//   final int table;

//   @override
//   Widget build(BuildContext context) {
//     return DecoratedPage(
//       title: 'Database $database, Table $table',
//       child: ListView.builder(itemBuilder: (context, index) {
//         return ListTile(
//           title: Text('Row $index'),
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) =>
//                     RowPage(database: database, table: table, row: index),
//               ),
//             );
//           },
//         );
//       }),
//     );
//   }
// }

// class RowPage extends StatelessWidget {
//   const RowPage({
//     super.key,
//     required this.database,
//     required this.table,
//     required this.row,
//   });

//   final int database;
//   final int table;
//   final int row;

//   @override
//   Widget build(BuildContext context) {
//     return DecoratedPage(
//       title: 'Database $database, Table $table, Row $row',
//       child: ListView.builder(itemBuilder: (context, index) {
//         return ListTile(
//           title: Text('Column $index'),
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => ColumnPage(
//                     database: database, table: table, row: row, column: index),
//               ),
//             );
//           },
//         );
//       }),
//     );
//   }
// }

// class ColumnPage extends StatelessWidget {
//   const ColumnPage({
//     super.key,
//     required this.database,
//     required this.table,
//     required this.row,
//     required this.column,
//   });

//   final int database;
//   final int table;
//   final int row;
//   final int column;

//   @override
//   Widget build(BuildContext context) {
//     return DecoratedPage(
//       title: 'Database $database, Table $table, Row $row, Column $column',
//       child: ListView.builder(itemBuilder: (context, index) {
//         return ListTile(
//           title: Text('Cell $index'),
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => CellPage(
//                     database: database,
//                     table: table,
//                     row: row,
//                     column: column,
//                     cell: index),
//               ),
//             );
//           },
//         );
//       }),
//     );
//   }
// }

// class CellPage extends StatelessWidget {
//   const CellPage({
//     super.key,
//     required this.database,
//     required this.table,
//     required this.row,
//     required this.column,
//     required this.cell,
//   });

//   final int database;
//   final int table;
//   final int row;
//   final int column;
//   final int cell;

//   @override
//   Widget build(BuildContext context) {
//     return DecoratedPage(
//       title:
//           'Database $database, Table $table, Row $row, Column $column, Cell $cell',
//       child: ListView.builder(itemBuilder: (context, index) {
//         return ListTile(
//           title: Text('Value $index'),
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => ValuePage(
//                     database: database,
//                     table: table,
//                     row: row,
//                     column: column,
//                     cell: cell,
//                     value: index),
//               ),
//             );
//           },
//         );
//       }),
//     );
//   }
// }

// class ValuePage extends StatelessWidget {
//   const ValuePage({
//     super.key,
//     required this.database,
//     required this.table,
//     required this.row,
//     required this.column,
//     required this.cell,
//     required this.value,
//   });

//   final int database;
//   final int table;
//   final int row;
//   final int column;
//   final int cell;
//   final int value;

//   @override
//   Widget build(BuildContext context) {
//     return DecoratedPage(
//       title:
//           'Database $database, Table $table, Row $row, Column $column, Cell $cell, Value $value',
//       child: ListView.builder(itemBuilder: (context, index) {
//         return ListTile(
//           title: Text('Value $index'),
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => ValuePage(
//                     database: database,
//                     table: table,
//                     row: row,
//                     column: column,
//                     cell: cell,
//                     value: index),
//               ),
//             );
//           },
//         );
//       }),
//     );
//   }
// }
