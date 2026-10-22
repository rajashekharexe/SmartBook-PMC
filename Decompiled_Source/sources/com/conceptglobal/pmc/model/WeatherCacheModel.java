package com.conceptglobal.pmc.model;

import java.util.List;

/* loaded from: classes.dex */
public class WeatherCacheModel {
    private String city;
    private String country;
    private Weather currentWeather;
    private String currentWeatherUpdatedTime;
    private List<Weather> forecastWeatherList;
    private String forecastWeatherUpdatedTime;
    private int isCurrentLocation;
    private String latitude;
    private String longitude;
    private String timeUpdated;

    public String getCity() {
        return this.city;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public String getCountry() {
        return this.country;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public Weather getCurrentWeather() {
        return this.currentWeather;
    }

    public void setCurrentWeather(Weather weather) {
        this.currentWeather = weather;
    }

    public List<Weather> getForecastWeatherList() {
        return this.forecastWeatherList;
    }

    public void setForecastWeatherList(List<Weather> list) {
        this.forecastWeatherList = list;
    }

    public String getForecastWeatherUpdatedTime() {
        return this.forecastWeatherUpdatedTime;
    }

    public void setForecastWeatherUpdatedTime(String str) {
        this.forecastWeatherUpdatedTime = str;
    }

    public String getCurrentWeatherUpdatedTime() {
        return this.currentWeatherUpdatedTime;
    }

    public void setCurrentWeatherUpdatedTime(String str) {
        this.currentWeatherUpdatedTime = str;
    }

    public String getTimeUpdated() {
        return this.timeUpdated;
    }

    public void setTimeUpdated(String str) {
        this.timeUpdated = str;
    }

    public int getIsCurrentLocation() {
        return this.isCurrentLocation;
    }

    public void setIsCurrentLocation(int i) {
        this.isCurrentLocation = i;
    }

    public String getLongitude() {
        return this.longitude;
    }

    public void setLongitude(String str) {
        this.longitude = str;
    }

    public String getLatitude() {
        return this.latitude;
    }

    public void setLatitude(String str) {
        this.latitude = str;
    }
}
