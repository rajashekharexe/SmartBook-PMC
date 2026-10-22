package com.conceptglobal.pmc.common;

import android.R;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.GradientDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.BrandsModel;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class CustomCheckBoxDialog extends Dialog {
    private static final String TAG = "CustomCheckBoxDialog";
    private int activityId;
    private int attributeId;
    private EditText edtSearch;
    private List<BrandsModel> filteredList;
    private int isDisplayCount;
    private int ismba;
    LinearLayout layout;
    ListView listView;
    CustomItemsAdapter mAdapter;
    private int maxLength;
    private List<BrandsModel> rawListItems;
    private String searchString;
    Context setcontext;

    public CustomCheckBoxDialog(Context context, List<BrandsModel> list, int i, String str, View view, TextView textView, int i2, int i3, int i4) {
        super(context, R.style.Theme.Translucent.NoTitleBar);
        this.listView = null;
        this.layout = null;
        this.rawListItems = new ArrayList();
        this.filteredList = new ArrayList();
        this.searchString = "";
        this.activityId = i3;
        this.attributeId = i4;
        init(context, list, i, str, view, textView);
        this.setcontext = context;
        this.ismba = i;
        this.maxLength = i2;
        this.rawListItems = list;
    }

    private void init(Context context, List<BrandsModel> list, int i, String str, final View view, final TextView textView) {
        view.setEnabled(false);
        LayoutInflater layoutInflater = getLayoutInflater();
        requestWindowFeature(1);
        LinearLayout linearLayout = (LinearLayout) layoutInflater.inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.custom_list_popup, (ViewGroup) null);
        this.layout = (LinearLayout) linearLayout.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.llCustomPopupbody);
        setContentView(linearLayout, new ViewGroup.LayoutParams(-1, -1));
        Button button = (Button) linearLayout.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.buttonDoneMulti);
        Button button2 = (Button) linearLayout.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.buttonReset);
        this.edtSearch = (EditText) linearLayout.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.et_search_list);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.common.CustomCheckBoxDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                textView.setText("");
                if (Items.selectedItemIds.size() > 0) {
                    Items.selectedItemIds.clear();
                }
                ((TextView) view).setText("");
                view.setEnabled(true);
                view.setTag(com.conceptglobal.pmcdeepakfertilizers.R.string.ENTRYID_SET, "");
                view.setTag(com.conceptglobal.pmcdeepakfertilizers.R.string.ENTRYNAME_SET, "");
                CustomCheckBoxDialog.this.getWindow().setSoftInputMode(3);
                CustomCheckBoxDialog.this.dismiss();
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.common.CustomCheckBoxDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                String str2 = "";
                int i2 = 0;
                while (i2 < Items.selectedItemIds.size()) {
                    str2 = str2 + Items.selectedItemIds.get(i2);
                    i2++;
                    if (i2 < Items.selectedItemIds.size()) {
                        str2 = str2 + ",";
                    }
                }
                view.setEnabled(true);
                view.setTag(com.conceptglobal.pmcdeepakfertilizers.R.string.ENTRYID_SET, str2);
                textView.setText(str2);
                CustomCheckBoxDialog.this.getWindow().setSoftInputMode(3);
                CustomCheckBoxDialog.this.dismiss();
            }
        });
        this.edtSearch.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.common.CustomCheckBoxDialog.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                try {
                    CustomCheckBoxDialog customCheckBoxDialog = CustomCheckBoxDialog.this;
                    customCheckBoxDialog.filteredList = customCheckBoxDialog.mAdapter.getFilter(charSequence.toString());
                    CustomCheckBoxDialog customCheckBoxDialog2 = CustomCheckBoxDialog.this;
                    CustomCheckBoxDialog customCheckBoxDialog3 = CustomCheckBoxDialog.this;
                    customCheckBoxDialog2.mAdapter = customCheckBoxDialog3.new CustomItemsAdapter(customCheckBoxDialog3.filteredList, view, textView);
                    CustomCheckBoxDialog.this.listView.setAdapter((ListAdapter) CustomCheckBoxDialog.this.mAdapter);
                    CustomCheckBoxDialog.this.layout.removeAllViews();
                    CustomCheckBoxDialog.this.layout.addView(CustomCheckBoxDialog.this.listView, new LinearLayout.LayoutParams(-1, -1));
                } catch (Exception e) {
                    PLog.e("CustomCheckBoxListPopUp", e);
                }
            }
        });
        ((TextView) linearLayout.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvCustomPopuphead)).setText(str);
        this.mAdapter = new CustomItemsAdapter(list, view, textView);
        ListView listView = new ListView(context);
        this.listView = listView;
        listView.setDivider(new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{0, 268435455, 0}));
        this.listView.setDividerHeight(0);
        this.listView.setCacheColorHint(0);
        this.listView.setFadingEdgeLength(0);
        this.listView.setAdapter((ListAdapter) this.mAdapter);
        this.layout.addView(this.listView, new LinearLayout.LayoutParams(-1, -1));
        Items.selectedItems.clear();
        Items.selectedItemIds.clear();
        try {
            this.isDisplayCount = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getMultiSelectCountDisplayValue(this.activityId, this.attributeId));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.setcontext);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.common.CustomCheckBoxDialog.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                CustomCheckBoxDialog.this.getWindow().setSoftInputMode(3);
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this.setcontext)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private class CustomItemsAdapter extends BaseAdapter {
        List<BrandsModel> brandsList;
        ViewHolder holder;
        private TextView tvIdsItems;
        private TextView tvItems;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public CustomItemsAdapter(List<BrandsModel> list, View view, View view2) {
            this.brandsList = list;
            TextView textView = (TextView) view;
            this.tvItems = textView;
            this.tvIdsItems = (TextView) view2;
            textView.setEnabled(true);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            try {
                return this.brandsList.size();
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
            String trim;
            LayoutInflater layoutInflater = (LayoutInflater) CustomCheckBoxDialog.this.setcontext.getSystemService("layout_inflater");
            this.holder = new ViewHolder();
            if (view == null) {
                view = layoutInflater.inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.custom_checkbox_list_row, viewGroup, false);
                this.holder.itemid = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.itemid);
                this.holder.itemname = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.itemname);
                this.holder.itemchkbox = (CheckBox) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.itemchkbox);
                view.setTag(this.holder);
            } else {
                this.holder = (ViewHolder) view.getTag();
            }
            new BrandsModel();
            BrandsModel brandsModel = this.brandsList.get(i);
            this.holder.itemid.setText(brandsModel.getBrandId());
            this.holder.itemname.setText(brandsModel.getBrandName());
            if (CustomCheckBoxDialog.this.isDisplayCount == 1) {
                trim = this.tvItems.getTag(com.conceptglobal.pmcdeepakfertilizers.R.string.ENTRYNAME_SET) != null ? this.tvItems.getTag(com.conceptglobal.pmcdeepakfertilizers.R.string.ENTRYNAME_SET).toString() : "";
            } else {
                trim = this.tvItems.getText().toString().trim();
            }
            String charSequence = this.tvIdsItems.getText().toString();
            ArrayList arrayList = new ArrayList(Arrays.asList(trim.replaceAll("\\s+", "").split(",")));
            ArrayList arrayList2 = new ArrayList(Arrays.asList(charSequence.replaceAll("\\s+", "").split(",")));
            if (arrayList.size() > 0 && arrayList.contains(brandsModel.getBrandName().trim().replaceAll("\\s+", "")) && arrayList2.size() > 0 && arrayList2.contains(brandsModel.getBrandId().trim())) {
                this.holder.itemchkbox.setChecked(true);
                if (!Items.selectedItemIds.contains(this.brandsList.get(i).getBrandId())) {
                    Items.selectedItemIds.add(this.brandsList.get(i).getBrandId());
                    Items.selectedItems.add(this.brandsList.get(i).getBrandName());
                }
            } else {
                this.holder.itemchkbox.setChecked(false);
                for (int i2 = 0; i2 < Items.selectedItemIds.size(); i2++) {
                    if (Items.selectedItemIds.get(i2).equalsIgnoreCase(this.brandsList.get(i).getBrandId())) {
                        Items.selectedItemIds.remove(i2);
                        Items.selectedItems.remove(i2);
                    }
                }
            }
            this.holder.itemchkbox.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.common.CustomCheckBoxDialog.CustomItemsAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    CheckBox checkBox = (CheckBox) view2;
                    if (checkBox.isChecked()) {
                        if (CustomCheckBoxDialog.this.maxLength == 0) {
                            CustomCheckBoxDialog.this.maxLength = 3;
                        }
                        int size = Items.selectedItems.size() + 1;
                        if (Items.selectedItems != null && size > CustomCheckBoxDialog.this.maxLength) {
                            CustomCheckBoxDialog.this.showAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_multipleCheckBoxLimitDialog()) + CustomCheckBoxDialog.this.maxLength + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_multipleCheckBoxItemsDialog()));
                            checkBox.setChecked(false);
                        } else {
                            if (!Items.selectedItemIds.contains(CustomItemsAdapter.this.brandsList.get(i).getBrandId())) {
                                Items.selectedItemIds.add(CustomItemsAdapter.this.brandsList.get(i).getBrandId());
                                Items.selectedItems.add(CustomItemsAdapter.this.brandsList.get(i).getBrandName());
                            }
                            CustomItemsAdapter.this.brandsList.get(i).setBrandSelected(CustomItemsAdapter.this.brandsList.get(i).getBrandId());
                        }
                    } else {
                        for (int i3 = 0; i3 < Items.selectedItemIds.size(); i3++) {
                            if (Items.selectedItemIds.get(i3).equalsIgnoreCase(CustomItemsAdapter.this.brandsList.get(i).getBrandId())) {
                                Items.selectedItemIds.remove(i3);
                                Items.selectedItems.remove(i3);
                            }
                        }
                        CustomItemsAdapter.this.brandsList.get(i).setBrandSelected(null);
                    }
                    StringBuilder sb = new StringBuilder();
                    StringBuilder sb2 = new StringBuilder();
                    for (int i4 = 0; i4 < Items.selectedItems.size(); i4++) {
                        if (i4 > 0) {
                            sb.append(",");
                            sb2.append(",");
                        }
                        sb.append(Items.selectedItems.get(i4));
                        sb2.append(Items.selectedItemIds.get(i4));
                    }
                    if (sb.toString().length() == 0) {
                        CustomCheckBoxDialog.this.setcontext.getString(com.conceptglobal.pmcdeepakfertilizers.R.string.strselect);
                        CustomItemsAdapter.this.tvItems.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()));
                        return;
                    }
                    String sb3 = sb.toString();
                    if (CustomCheckBoxDialog.this.isDisplayCount == 1) {
                        CustomItemsAdapter.this.tvItems.setText(Items.selectedItems.size() + " Selected");
                    } else {
                        CustomItemsAdapter.this.tvItems.setText(sb3);
                    }
                    CustomItemsAdapter.this.tvItems.setTag(com.conceptglobal.pmcdeepakfertilizers.R.string.ENTRYID_SET, sb2.toString());
                    CustomItemsAdapter.this.tvItems.setTag(com.conceptglobal.pmcdeepakfertilizers.R.string.ENTRYNAME_SET, sb3);
                    CustomItemsAdapter.this.tvIdsItems.setText(sb2.toString());
                    CustomItemsAdapter.this.tvIdsItems.setTag(com.conceptglobal.pmcdeepakfertilizers.R.string.ENTRYID_SET, sb2.toString());
                    PLog.e("Custom Test", "brands " + sb3);
                    PLog.e("Custom Test", "ids " + sb2.toString());
                }
            });
            return view;
        }

        public List<BrandsModel> getFilter(String str) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < CustomCheckBoxDialog.this.rawListItems.size(); i++) {
                CustomCheckBoxDialog.this.searchString = str.toLowerCase(Locale.getDefault());
                if (((BrandsModel) CustomCheckBoxDialog.this.rawListItems.get(i)).getBrandName().toLowerCase(Locale.getDefault()).contains(CustomCheckBoxDialog.this.searchString)) {
                    arrayList.add((BrandsModel) CustomCheckBoxDialog.this.rawListItems.get(i));
                }
            }
            return arrayList;
        }

        public class ViewHolder {
            CheckBox itemchkbox;
            TextView itemid;
            TextView itemname;

            public ViewHolder() {
            }
        }
    }
}
