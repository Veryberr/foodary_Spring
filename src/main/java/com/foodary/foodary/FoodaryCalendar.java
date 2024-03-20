package com.foodary.foodary;

public class FoodaryCalendar {

	// 윤년 확인
	public static boolean isLeapYear(int year) {
		return year % 4 == 0 && year % 100 != 0 || year % 400 == 0;
	}
	
	// 각 월에 해당하는 날짜 수 
	public static int lastDay(int year, int month) {
		int[] m = {31, 0, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
		m[1] = isLeapYear(year) ? 29 : 28; // 윤년이면 29일, 아니면 28일
		return m[month - 1];
	}
	
	// 전년도 12월 31일까지 지난 날짜수에 전달까지 지난 날짜를 더하기
	public static int totalDay(int year, int month, int day) {
		int sum = (year - 1) * 365 + (year - 1) / 4 - (year - 1) / 100 + (year - 1) / 400;
		for (int i=1; i<month; i++) {
			sum += lastDay(year, i);
		}
		return sum + day;
	}
	
	// 요일 출력
	public static int weekDay(int year, int month, int day) {
		return totalDay(year, month, day) % 7;
	}
	
}





