package com.zkyouxi.pratical_pro;

public class Teacher {
    public static void main(String... args) {
        Student student = new Student();
        student.setListener(new AnswerListener() {
            @Override
            public void onAnswer() {
                System.out.println("听课");
            }
        });
        System.out.println("上课");
        student.doWork();

    }
}
