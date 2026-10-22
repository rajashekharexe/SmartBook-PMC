package com.conceptglobal.pmc.common;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.interfaces.CropChanger;
import com.conceptglobal.pmc.utils.PLog;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Locale;

/* loaded from: classes.dex */
public class ListPopupOne extends Dialog {
    private ListAdapter adapter;
    private CropChanger cropChangedListener;
    private EditText edtSearch;
    private String ids;
    private LinearLayout layout;
    private ListView listView;
    private String[][] lookupdata;
    private String[][] lookupdataFiltered;
    private String names;
    private String searchString;
    Context setcontext;
    private TextView tvCustomPopuphead;
    private TextView tvset;
    private TextView tvsetid;

    public ListPopupOne(Context context, String str, String str2, View view, TextView textView) {
        super(context, R.style.Theme.Translucent.NoTitleBar);
        this.searchString = "";
        this.setcontext = context;
        init(context, str, str2, view, textView);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        super.onBackPressed();
        this.tvset.setEnabled(true);
    }

    public ListPopupOne(Context context, String str, String str2, View view, TextView textView, CropChanger cropChanger) {
        super(context, R.style.Theme.Translucent.NoTitleBar);
        this.searchString = "";
        this.setcontext = context;
        init(context, str, str2, view, textView);
        this.cropChangedListener = cropChanger;
    }

    private void init(Context context, String str, String str2, View view, TextView textView) {
        TextView textView2 = (TextView) view;
        this.tvset = textView2;
        textView2.setEnabled(false);
        this.tvsetid = textView;
        String[][] strArr = GetDataFromDB.getInstance().getlotdata(str2);
        this.lookupdata = strArr;
        this.lookupdataFiltered = strArr;
        LayoutInflater layoutInflater = getLayoutInflater();
        requestWindowFeature(1);
        LinearLayout linearLayout = (LinearLayout) layoutInflater.inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.custom_list_popup, (ViewGroup) null);
        this.layout = (LinearLayout) linearLayout.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.llCustomPopupbody);
        Button button = (Button) linearLayout.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.buttonDoneMulti);
        Button button2 = (Button) linearLayout.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.buttonReset);
        EditText editText = (EditText) linearLayout.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.et_search_list);
        this.edtSearch = editText;
        editText.clearFocus();
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.common.ListPopupOne.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ListPopupOne.this.tvset.setText("");
                ListPopupOne.this.tvsetid.setText("");
                ListPopupOne.this.tvset.setEnabled(true);
                ListPopupOne.this.getWindow().setSoftInputMode(3);
                ListPopupOne.this.dismiss();
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.common.ListPopupOne.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ListPopupOne.this.tvset.setEnabled(true);
                ListPopupOne.this.getWindow().setSoftInputMode(3);
                ListPopupOne.this.dismiss();
            }
        });
        this.edtSearch.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.common.ListPopupOne.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                try {
                    ListPopupOne listPopupOne = ListPopupOne.this;
                    listPopupOne.lookupdataFiltered = listPopupOne.adapter.getFilter(charSequence.toString());
                    ListPopupOne listPopupOne2 = ListPopupOne.this;
                    ListPopupOne listPopupOne3 = ListPopupOne.this;
                    listPopupOne2.adapter = listPopupOne3.new ListAdapter(listPopupOne3.lookupdataFiltered);
                    ListPopupOne.this.listView.setAdapter((android.widget.ListAdapter) ListPopupOne.this.adapter);
                    ListPopupOne.this.layout.removeAllViews();
                    ListPopupOne.this.layout.addView(ListPopupOne.this.listView, new LinearLayout.LayoutParams(-1, -1));
                } catch (Exception e) {
                    PLog.e("ListPopUp", e);
                }
            }
        });
        setContentView(linearLayout, new ViewGroup.LayoutParams(-1, -1));
        TextView textView3 = (TextView) linearLayout.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvCustomPopuphead);
        this.tvCustomPopuphead = textView3;
        textView3.setText(str);
        this.adapter = new ListAdapter(this.lookupdata);
        ListView listView = new ListView(context);
        this.listView = listView;
        listView.setDivider(new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{0, 268435455, 0}));
        this.listView.setDividerHeight(0);
        this.listView.setCacheColorHint(0);
        this.listView.setFadingEdgeLength(0);
        this.listView.setAdapter((android.widget.ListAdapter) this.adapter);
        String[][] strArr2 = this.lookupdata;
        if (strArr2 != null && strArr2.length <= 5) {
            this.edtSearch.setVisibility(8);
        }
        this.layout.addView(this.listView, new LinearLayout.LayoutParams(-1, -1));
        getWindow().setSoftInputMode(3);
    }

    private class ListAdapter extends BaseAdapter {
        String[][] viewList;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        ListAdapter(String[][] strArr) {
            this.viewList = strArr;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            try {
                return this.viewList.length;
            } catch (Exception unused) {
                return 0;
            }
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public View getView(final int i, View view, ViewGroup viewGroup) {
            LinearLayout linearLayout = (LinearLayout) ListPopupOne.this.getLayoutInflater().inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.rating_cell, (ViewGroup) null);
            TextView textView = (TextView) linearLayout.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvratingtext);
            final RadioButton radioButton = (RadioButton) linearLayout.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.rbutton);
            textView.setText(this.viewList[i][1]);
            radioButton.setClickable(false);
            linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.conceptglobal.pmc.common.ListPopupOne.ListAdapter.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view2, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 1) {
                        radioButton.setChecked(true);
                        ListPopupOne.this.names = ListAdapter.this.viewList[i][1];
                        ListPopupOne.this.ids = ListAdapter.this.viewList[i][0];
                        ListPopupOne.this.tvsetid.setText("" + ListPopupOne.this.ids);
                        ListPopupOne.this.tvset.setText(ListPopupOne.this.names);
                        ListPopupOne.this.tvset.setTag(com.conceptglobal.pmcdeepakfertilizers.R.string.ENTRYID_SET, "" + ListPopupOne.this.ids);
                        ListPopupOne.this.tvset.setEnabled(true);
                        ListPopupOne.this.getWindow().setSoftInputMode(3);
                        ListPopupOne.this.dismiss();
                    }
                    return true;
                }
            });
            return linearLayout;
        }

        public String[][] getFilter(String str) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < ListPopupOne.this.lookupdata.length; i++) {
                ListPopupOne.this.searchString = str.toLowerCase(Locale.getDefault());
                if (ListPopupOne.this.lookupdata[i][1].toLowerCase(Locale.getDefault()).contains(ListPopupOne.this.searchString)) {
                    arrayList.add(new String[]{ListPopupOne.this.lookupdata[i][0], ListPopupOne.this.lookupdata[i][1]});
                }
            }
            return (String[][]) arrayList.toArray((String[][]) Array.newInstance((Class<?>) String.class, 0, 0));
        }
    }
}
