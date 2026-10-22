package com.conceptglobal.pmc.fo;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.conceptglobal.pmc.adapter.RetailerDetailsAdapter;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.PmcRetailersModel;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class RetailersDisplayActivity extends Activity {
    private String TAG = "RetailersDisplayActivity";
    private RetailerDetailsAdapter adapter;
    private Context context;
    private EditText et_search;
    private InputMethodManager inputManager;
    private ListView lv_list;
    private List<PmcRetailersModel> retailerNamesList;
    private TextView tv_header;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setLayout(-1, -2);
        setContentView(R.layout.list_edit_text);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        init();
        getDataFromDataBase();
        setToAdapter();
        setListeners();
        setSearch();
    }

    private void init() {
        this.inputManager = (InputMethodManager) getSystemService("input_method");
        this.et_search = (EditText) findViewById(R.id.et_search_edit_list);
        this.tv_header = (TextView) findViewById(R.id.tv_header_edit_list);
        this.lv_list = (ListView) findViewById(R.id.lv_search_edit_list);
        this.tv_header.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectDealerInFFA()));
    }

    private void getDataFromDataBase() {
        this.retailerNamesList = GetDataFromDB.getInstance().getRetailerNames(Queries.getInstance().getPmcRetailers());
        this.adapter = new RetailerDetailsAdapter(this.context, this.retailerNamesList);
    }

    private void setToAdapter() {
        this.adapter = new RetailerDetailsAdapter(this.context, this.retailerNamesList);
        this.lv_list.setTextFilterEnabled(true);
        this.lv_list.setAdapter((ListAdapter) this.adapter);
    }

    private void setSearch() {
        this.et_search.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fo.RetailersDisplayActivity.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                try {
                    RetailersDisplayActivity.this.adapter.getFilter().filter(charSequence.toString());
                    if (RetailersDisplayActivity.this.et_search.getText().toString().length() == 0) {
                        RetailerDetailsAdapter.mDuplicate = new ArrayList();
                    }
                } catch (Exception e) {
                    PLog.e(RetailersDisplayActivity.this.TAG, e);
                }
            }
        });
        this.lv_list.setOnTouchListener(new View.OnTouchListener() { // from class: com.conceptglobal.pmc.fo.RetailersDisplayActivity.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                RetailersDisplayActivity.this.inputManager.hideSoftInputFromWindow(RetailersDisplayActivity.this.getWindow().getDecorView().getWindowToken(), 2);
                return false;
            }
        });
    }

    private void setListeners() {
        this.lv_list.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fo.RetailersDisplayActivity.3
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                Intent intent = new Intent();
                if (RetailerDetailsAdapter.mDuplicate == null || RetailerDetailsAdapter.mDuplicate.isEmpty()) {
                    intent.putExtra(ConstantDeclarations.getInstance().getKEYRETAILERID(), ((PmcRetailersModel) RetailersDisplayActivity.this.retailerNamesList.get(i)).getRetailercode());
                    intent.putExtra(ConstantDeclarations.getInstance().getKEYRETAILERNAME(), ((PmcRetailersModel) RetailersDisplayActivity.this.retailerNamesList.get(i)).getContactName());
                } else {
                    intent.putExtra(ConstantDeclarations.getInstance().getKEYRETAILERID(), RetailerDetailsAdapter.mDuplicate.get(i).getRetailercode());
                    intent.putExtra(ConstantDeclarations.getInstance().getKEYRETAILERNAME(), RetailerDetailsAdapter.mDuplicate.get(i).getContactName());
                }
                RetailersDisplayActivity.this.setResult(-1, intent.setAction("ok"));
                RetailersDisplayActivity.this.finish();
            }
        });
    }
}
