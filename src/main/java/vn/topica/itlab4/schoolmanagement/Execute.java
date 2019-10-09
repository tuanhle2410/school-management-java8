package vn.topica.itlab4.schoolmanagement;

import vn.topica.itlab4.schoolmanagement.entities.*;

import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * This class contains executions to show the reports.
 *
 * @author AnhLT14 (anhlt14@topica.edu.vn)
 */
public class Execute {
    public static void main(String[] args) {
        Database db = new Database();
        db.loadFullDb();

        /**
         * Exercise 1: Get the number of students of each school
         */
        System.out.println("Exercise 1:");
        db.listStudent.stream()
                .collect(Collectors.groupingBy(student ->
                        db.listClass.stream()
                                .filter(classOfSchool -> classOfSchool.getClassId().equals(student.getClassId()))
                                .findAny().get()
                                .getSchoolId(), Collectors.counting()
                )).forEach((a, b) -> System.out.println("School ID: " + a + " - Number of Students = " + b));
        System.out.println("------------------------------");

        /**
         * Exercise 2: Calculate the average score of each subject
         */
        System.out.println("Exercise 2:");
        db.listStudentSubjectRegister.stream()
                .collect(Collectors.groupingBy(StudentSubjectRegister::getSubjectId)).entrySet().stream()
                .collect(Collectors.groupingBy(ssrMap ->
                        db.listStudent.stream()
                                .filter(student -> student.getStudentId().equals(ssrMap.getValue().iterator().next().getStudentId()))
                                .collect(Collectors.groupingBy(student ->
                                        db.listClass.stream()
                                                .filter(classOfSchool -> classOfSchool.getClassId().equals(student.getClassId()))
                                                .findFirst().get()
                                                .getSchoolId()
                                )).keySet()
                )).forEach((a, b) -> {
            System.out.println("---School ID: " + a.stream().findFirst().get());
            b.forEach((x) -> System.out.println("Subject ID: "
                    + x.getKey()
                    + " - Avg = "
                    + x.getValue().stream().mapToDouble(score -> score.getScore()).summaryStatistics().getAverage()));
        });
        System.out.println("------------------------------");

        /**
         * Exercise 3: Show the class with the highest average score in each school
         */
        System.out.println("Exercise 3:");
        db.listStudentSubjectRegister.stream()
                .collect(Collectors.groupingBy(ssr ->
                        db.listStudent.stream()
                                .filter(student -> student.getStudentId().equals(ssr.getStudentId()))
                                .collect(Collectors.groupingBy(Student::getClassId))
                                .keySet()
                )).entrySet().stream()
                .collect(Collectors.groupingBy(ssrMap ->
                        db.listClass.stream()
                                .filter(classOfSchool -> classOfSchool.getClassId().equals(ssrMap.getKey().iterator().next()))
                                .findAny().get()
                                .getSchoolId()
                )).forEach((a, b) -> {
            System.out.println("School ID: " + a);
            Map.Entry<Set<Integer>, Double> entry = b.stream().collect(Collectors.toMap(bb -> bb.getKey(),
                    bb -> bb.getValue().stream().mapToDouble(score -> score.getScore()).summaryStatistics().getAverage())).entrySet().stream()
                    .max(Comparator.comparingDouble(o -> o.getValue())).orElse(null);
            System.out.println(entry == null ? "null" : "Class ID: " + entry.getKey().stream().findFirst().get() + " - Avg = " + entry.getValue());
        });

        System.out.println("------------------------------");

        /**
         * Exercise 4: Show the best and worst 10 students with each subject
         */
        System.out.println("Exercise 4:");
        db.listStudentSubjectRegister.stream()
                .collect(Collectors.groupingBy(StudentSubjectRegister::getSubjectId)).values()
                .forEach(list -> {
                    list.stream()
                            .sorted(Comparator.comparingDouble(StudentSubjectRegister::getScore).reversed())
                            .limit(10)
                            .forEach(a -> System.out.println(a));
                    System.out.println("^^^^^^^^^^^^^^^^^^^^^");
                });

        System.out.println("-------------------------------------");

        /**
         * Exercise 5: Get the class whose average score is highest, group by SubjectDomain
         */
        System.out.println("Exercise 5:");
        db.listStudentSubjectRegister.stream()
                .collect(Collectors.groupingBy(ssr ->
                        db.listStudent.stream()
                                .filter(student -> student.getStudentId().equals(ssr.getStudentId()))
                                .findAny().get()
                                .getClassId()
                )).entrySet().stream()
                .collect(Collectors.groupingBy(ssrMap ->
                        db.listSubject.stream().collect(Collectors.groupingBy(Subject::getDomain))
                                .entrySet().stream()
                                .filter(obj -> ssrMap.getValue().stream().anyMatch(s -> s.getSubjectId().equals(obj.getValue().iterator().next().getSubjectId())))
                                .iterator().next()
                                .getKey()
                )).forEach((a, b) -> {
            System.out.println("--Domain: " + a);
            Map.Entry<Integer, Double> entry = b.stream().collect(Collectors.toMap(bb -> bb.getKey(),
                    bb -> bb.getValue().stream().mapToDouble(score -> score.getScore()).summaryStatistics().getAverage())).entrySet().stream()
                    .max(Comparator.comparingDouble(o -> o.getValue())).orElse(null);
            System.out.println(entry == null ? "null" : "Class ID: " + entry.getKey() + " - Avg = " + entry.getValue());
        });
        System.out.println("-------------------------------------");

        /**
         * Exercise 6: Get the domain whose average score is highest in group by school.
         *             Get the domain whose number of students registered is the most
         */
        System.out.println("Exercise 6:");
        System.out.println("---Get the domain whose average score is highest in group by school");
        db.listStudentSubjectRegister.stream()
                .collect(Collectors.groupingBy(ssr ->
                        db.listSubject.stream()
                                .filter(subject -> subject.getSubjectId().equals(ssr.getSubjectId()))
                                .findFirst().get()
                                .getDomain()
                )).entrySet().stream()
                .collect(Collectors.groupingBy(ssrMap ->
                        db.listStudent.stream()
                                .filter(student -> student.getStudentId().equals(ssrMap.getValue().iterator().next().getStudentId()))
                                .collect(Collectors.groupingBy(student ->
                                        db.listClass.stream()
                                                .filter(classOfSchool -> classOfSchool.getClassId().equals(student.getClassId()))
                                                .findAny().get()
                                                .getSchoolId()
                                )).keySet()
                )).forEach((a, b) -> {
            System.out.println("School ID: " + a.stream().findFirst().get());
            Map.Entry<SubjectDomain, Double> entry = b.stream().collect(Collectors.toMap(Map.Entry::getKey,
                    bb -> bb.getValue().stream().mapToDouble(StudentSubjectRegister::getScore).summaryStatistics().getAverage())).entrySet().stream()
                    .max(Comparator.comparingDouble(Map.Entry::getValue)).orElse(null);
            System.out.println(entry == null ? "null" : "Domain: " + entry.getKey() + " - Avg = " + entry.getValue());
        });


        System.out.println("---Get the domain whose average score is highest in group by school");
        double max = db.listStudentSubjectRegister.stream()
                .collect(Collectors.groupingBy(ssr ->
                        db.listSubject.stream()
                                .filter(subject -> subject.getSubjectId().equals(ssr.getSubjectId()))
                                .findFirst().get()
                                .getDomain(), Collectors.counting()
                )).values().stream().max(Comparator.comparingDouble(o -> o)).orElse(null);

        System.out.println(max);
    }
}