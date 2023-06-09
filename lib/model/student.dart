import 'package:student_clean_arc/model/batch.dart';

class Student {
  final String fname;
  final String lname;
  final String phonNo;
  final String username;
  final String course;
  final Batch batch;

  Student(this.fname, this.lname, this.phonNo, this.username, this.course,
      this.batch);
}
