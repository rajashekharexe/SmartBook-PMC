package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class StatusAdapter extends BaseAdapter implements View.OnClickListener, Filterable {
    public static final int TYPE_SECTION_HEADER = 0;
    public final ArrayAdapter<String> headers;
    public final Map<String, Adapter> sections = new LinkedHashMap();

    public boolean areAllItemsSelectable() {
        return false;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    public StatusAdapter(Context context) {
        this.headers = new ArrayAdapter<>(context, R.layout.statusview1);
    }

    public void addSection(String str, Adapter adapter) {
        this.headers.add(str);
        this.sections.put(str, adapter);
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        for (String str : this.sections.keySet()) {
            Adapter adapter = this.sections.get(str);
            int count = adapter.getCount() + 1;
            if (i == 0) {
                return str;
            }
            if (i < count) {
                return adapter.getItem(i - 1);
            }
            i -= count;
        }
        return null;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        Iterator<Adapter> it = this.sections.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            i += it.next().getCount() + 1;
        }
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        Iterator<Adapter> it = this.sections.values().iterator();
        int i = 1;
        while (it.hasNext()) {
            i += it.next().getViewTypeCount();
        }
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        Iterator<String> it = this.sections.keySet().iterator();
        int i2 = 1;
        while (it.hasNext()) {
            Adapter adapter = this.sections.get(it.next());
            int count = adapter.getCount() + 1;
            if (i == 0) {
                return 0;
            }
            if (i < count) {
                return i2 + adapter.getItemViewType(i - 1);
            }
            i -= count;
            i2 += adapter.getViewTypeCount();
        }
        return -1;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return getItemViewType(i) != 0;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        Iterator<String> it = this.sections.keySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Adapter adapter = this.sections.get(it.next());
            int count = adapter.getCount() + 1;
            if (i == 0) {
                return this.headers.getView(i2, view, viewGroup);
            }
            if (i < count) {
                return adapter.getView(i - 1, view, viewGroup);
            }
            i -= count;
            i2++;
        }
        return null;
    }
}
