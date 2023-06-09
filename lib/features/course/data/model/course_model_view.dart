import 'package:hive/hive.dart';
import 'package:student_clean_arc/config/constants/hive_table_constant.dart';
import 'package:uuid/uuid.dart';

part 'course_model_view.g.dart';

@HiveType(typeId: HiveTableConstant.courseTableId)

class CourseHiveModel {
  @HiveField(0)
  final String courseId;

  @HiveField(1)
  final String courseName;

  CourseHiveModel.empty() : this(courseId: '', courseName: '');

  CourseHiveModel({
    String? courseId,
    required this.courseName,
  }) : courseId = courseId ?? const Uuid().v4();

  @override
  String toString() {
    return 'courseId: $courseId, courseName: $courseName';
  }
}
