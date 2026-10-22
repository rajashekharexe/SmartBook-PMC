package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class Weather {
    public byte[] iconData;
    public LocationModel location;
    public CurrentCondition currentCondition = new CurrentCondition();
    public Temperature temperature = new Temperature();
    public Wind wind = new Wind();
    public Rain rain = new Rain();
    public Snow snow = new Snow();
    public Clouds clouds = new Clouds();

    public class CurrentCondition {
        private String condition;
        private long date;
        private String dateText;
        private String descr;
        private float humidity;
        private String icon;
        private float pressure;
        private int weatherId;

        public CurrentCondition() {
        }

        public int getWeatherId() {
            return this.weatherId;
        }

        public void setWeatherId(int i) {
            this.weatherId = i;
        }

        public String getCondition() {
            return this.condition;
        }

        public void setCondition(String str) {
            this.condition = str;
        }

        public String getDescr() {
            return this.descr;
        }

        public void setDescr(String str) {
            this.descr = str;
        }

        public String getIcon() {
            return this.icon;
        }

        public void setIcon(String str) {
            this.icon = str;
        }

        public float getPressure() {
            return this.pressure;
        }

        public void setPressure(float f) {
            this.pressure = f;
        }

        public float getHumidity() {
            return this.humidity;
        }

        public void setHumidity(float f) {
            this.humidity = f;
        }

        public long getDate() {
            return this.date;
        }

        public void setDate(long j) {
            this.date = j;
        }

        public String getDateText() {
            return this.dateText;
        }

        public void setDateText(String str) {
            this.dateText = str;
        }
    }

    public class Temperature {
        private float maxTemp;
        private float minTemp;
        private float temp;

        public Temperature() {
        }

        public float getTemp() {
            return this.temp;
        }

        public void setTemp(float f) {
            this.temp = f;
        }

        public float getMinTemp() {
            return this.minTemp;
        }

        public void setMinTemp(float f) {
            this.minTemp = f;
        }

        public float getMaxTemp() {
            return this.maxTemp;
        }

        public void setMaxTemp(float f) {
            this.maxTemp = f;
        }
    }

    public class Wind {
        private float deg;
        private float speed;

        public Wind() {
        }

        public float getSpeed() {
            return this.speed;
        }

        public void setSpeed(float f) {
            this.speed = f;
        }

        public float getDeg() {
            return this.deg;
        }

        public void setDeg(float f) {
            this.deg = f;
        }
    }

    public class Rain {
        private float ammount;
        private String time;

        public Rain() {
        }

        public String getTime() {
            return this.time;
        }

        public void setTime(String str) {
            this.time = str;
        }

        public float getAmmount() {
            return this.ammount;
        }

        public void setAmmount(float f) {
            this.ammount = f;
        }
    }

    public class Snow {
        private float ammount;
        private String time;

        public Snow() {
        }

        public String getTime() {
            return this.time;
        }

        public void setTime(String str) {
            this.time = str;
        }

        public float getAmmount() {
            return this.ammount;
        }

        public void setAmmount(float f) {
            this.ammount = f;
        }
    }

    public class Clouds {
        private int perc;

        public Clouds() {
        }

        public int getPerc() {
            return this.perc;
        }

        public void setPerc(int i) {
            this.perc = i;
        }
    }
}
