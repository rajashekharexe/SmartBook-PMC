package com.conceptglobal.pmc.model;

import androidx.core.app.NotificationCompat;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JSONWeatherParser {
    public static Weather getWeather(String str) throws JSONException {
        Weather weather = new Weather();
        if (str == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        LocationModel locationModel = new LocationModel();
        JSONObject object = getObject("coord", jSONObject);
        locationModel.setLatitude(getFloat("lat", object));
        locationModel.setLongitude(getFloat("lon", object));
        locationModel.setCountry(getString("country", getObject(NotificationCompat.CATEGORY_SYSTEM, jSONObject)));
        locationModel.setSunrise(getInt("sunrise", r2));
        locationModel.setSunset(getInt("sunset", r2));
        locationModel.setCity(getString("name", jSONObject));
        weather.location = locationModel;
        JSONObject jSONObject2 = jSONObject.getJSONArray("weather").getJSONObject(0);
        weather.currentCondition.setWeatherId(getInt("id", jSONObject2));
        weather.currentCondition.setDescr(getString("description", jSONObject2));
        weather.currentCondition.setCondition(getString("main", jSONObject2));
        weather.currentCondition.setIcon(getString(SettingsJsonConstants.APP_ICON_KEY, jSONObject2));
        JSONObject object2 = getObject("main", jSONObject);
        weather.currentCondition.setHumidity(getInt("humidity", object2));
        weather.currentCondition.setPressure(getInt("pressure", object2));
        weather.temperature.setMaxTemp(getFloat("temp_max", object2));
        weather.temperature.setMinTemp(getFloat("temp_min", object2));
        weather.temperature.setTemp(getFloat("temp", object2));
        JSONObject object3 = getObject("wind", jSONObject);
        weather.wind.setSpeed(getFloat("speed", object3));
        try {
            weather.wind.setDeg(getFloat("deg", object3));
        } catch (Exception e) {
            e.printStackTrace();
        }
        weather.clouds.setPerc(getInt("all", getObject("clouds", jSONObject)));
        return weather;
    }

    public static List<Weather> getWeatherList(String str) throws JSONException {
        ArrayList arrayList = new ArrayList();
        if (str == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        JSONObject jSONObject2 = jSONObject.getJSONObject("city");
        LocationModel locationModel = new LocationModel();
        JSONObject object = getObject("coord", jSONObject2);
        locationModel.setLatitude(getFloat("lat", object));
        locationModel.setLongitude(getFloat("lon", object));
        locationModel.setCity(getString("name", jSONObject2));
        locationModel.setCountry(getString("country", jSONObject2));
        JSONArray jSONArray = jSONObject.getJSONArray("list");
        for (int i = 0; i < jSONArray.length(); i++) {
            Weather weather = new Weather();
            JSONObject jSONObject3 = jSONArray.getJSONObject(i);
            weather.location = locationModel;
            weather.currentCondition.setDate(getLong("dt", jSONObject3));
            weather.currentCondition.setDateText(getString("dt_txt", jSONObject3));
            JSONObject jSONObject4 = jSONObject3.getJSONArray("weather").getJSONObject(0);
            weather.currentCondition.setWeatherId(getInt("id", jSONObject4));
            weather.currentCondition.setDescr(getString("description", jSONObject4));
            weather.currentCondition.setCondition(getString("main", jSONObject4));
            weather.currentCondition.setIcon(getString(SettingsJsonConstants.APP_ICON_KEY, jSONObject4));
            JSONObject object2 = getObject("main", jSONObject3);
            weather.currentCondition.setHumidity(getInt("humidity", object2));
            weather.currentCondition.setPressure(getInt("pressure", object2));
            weather.temperature.setMaxTemp(getFloat("temp_max", object2));
            weather.temperature.setMinTemp(getFloat("temp_min", object2));
            weather.temperature.setTemp(getFloat("temp", object2));
            JSONObject object3 = getObject("wind", jSONObject3);
            weather.wind.setSpeed(getFloat("speed", object3));
            weather.wind.setDeg(getFloat("deg", object3));
            weather.clouds.setPerc(getInt("all", getObject("clouds", jSONObject3)));
            arrayList.add(weather);
        }
        return arrayList;
    }

    private static JSONObject getObject(String str, JSONObject jSONObject) throws JSONException {
        return jSONObject.getJSONObject(str);
    }

    private static String getString(String str, JSONObject jSONObject) throws JSONException {
        return jSONObject.getString(str);
    }

    private static float getFloat(String str, JSONObject jSONObject) throws JSONException {
        return (float) jSONObject.getDouble(str);
    }

    private static long getLong(String str, JSONObject jSONObject) throws JSONException {
        return jSONObject.getLong(str);
    }

    private static int getInt(String str, JSONObject jSONObject) throws JSONException {
        return jSONObject.getInt(str);
    }
}
