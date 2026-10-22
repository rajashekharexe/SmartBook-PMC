package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.model.Weather;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.squareup.picasso.Picasso;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class WeatherRecyclerViewAdapter extends RecyclerView.Adapter<WeatherTodoHolder> {
    private Context context;
    private List<Weather> weatherList;

    public WeatherRecyclerViewAdapter(Context context, List<Weather> list) {
        this.context = context;
        this.weatherList = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public WeatherTodoHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new WeatherTodoHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.weatherxml, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(WeatherTodoHolder weatherTodoHolder, int i) {
        Weather weather = this.weatherList.get(i);
        if (weather.iconData != null && weather.iconData.length > 0) {
            weatherTodoHolder.imgView.setImageBitmap(BitmapFactory.decodeByteArray(weather.iconData, 0, weather.iconData.length));
            Picasso.with(this.context).load("http://openweathermap.org/img/w/" + weather.currentCondition.getIcon() + ".png").resize(150, 150).skipMemoryCache().placeholder((Drawable) null).into(weatherTodoHolder.imgView);
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.ENGLISH);
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("EEE MMM,dd");
        if (weather.currentCondition.getDateText() != null || i != 0) {
            try {
                String format = simpleDateFormat2.format(simpleDateFormat.parse(weather.currentCondition.getDateText()));
                weatherTodoHolder.cityText.setText(format + "");
            } catch (Exception e) {
                e.printStackTrace();
                weatherTodoHolder.cityText.setText(weather.currentCondition.getDateText());
            }
        } else {
            weatherTodoHolder.cityText.setText("Today");
        }
        weatherTodoHolder.condDescr.setText(weather.currentCondition.getCondition() + "(" + weather.currentCondition.getDescr() + ")");
        TextView textView = weatherTodoHolder.temp;
        StringBuilder sb = new StringBuilder("");
        sb.append(Math.round(weather.temperature.getTemp()));
        sb.append("℃");
        textView.setText(sb.toString());
        weatherTodoHolder.hum.setText("Humidity :" + weather.currentCondition.getHumidity() + "%");
        weatherTodoHolder.minmaxtext.setText("" + weather.temperature.getMinTemp() + "℃/" + weather.temperature.getMaxTemp() + "℃");
        TextView textView2 = weatherTodoHolder.windSpeed;
        StringBuilder sb2 = new StringBuilder("Wind :");
        sb2.append(weather.wind.getSpeed());
        sb2.append(" mps");
        textView2.setText(sb2.toString());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.weatherList.size();
    }

    public class WeatherTodoHolder extends RecyclerView.ViewHolder {
        private TextView cityText;
        private TextView condDescr;
        private TextView hum;
        private ImageView imgView;
        private TextView minmaxtext;
        private TextView temp;
        private TextView windSpeed;

        public WeatherTodoHolder(View view) {
            super(view);
            this.cityText = (TextView) view.findViewById(R.id.dayText);
            this.condDescr = (TextView) view.findViewById(R.id.DescText);
            this.temp = (TextView) view.findViewById(R.id.tempText);
            this.hum = (TextView) view.findViewById(R.id.huimidityText);
            this.minmaxtext = (TextView) view.findViewById(R.id.minmaxTempText);
            this.windSpeed = (TextView) view.findViewById(R.id.windText);
            this.imgView = (ImageView) view.findViewById(R.id.wthrImage);
        }
    }
}
