package com.zkyouxi.pratical_pro;

public class Student {
    private AnswerListener listener;

    public void setListener(AnswerListener listener) {
        this.listener = listener;
    }

    public void doWork() {
        listener.onAnswer();
    }
}
