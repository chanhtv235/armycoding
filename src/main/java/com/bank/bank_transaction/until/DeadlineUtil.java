package com.bank.bank_transaction.until;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


public class DeadlineUtil {
    private static final DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss");

    public static boolean checkDeadline() {

        String deadlineString = "2026-12-29T20:38:00";

        // Không có DEADLINE

        LocalDateTime deadline =
                LocalDateTime.parse(deadlineString, FORMATTER);

        LocalDateTime now = LocalDateTime.now();

        return !now.isAfter(deadline);
    }
}