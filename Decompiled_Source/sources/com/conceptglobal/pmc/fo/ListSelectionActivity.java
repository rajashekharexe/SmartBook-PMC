package com.conceptglobal.pmc.fo;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.adapter.ListSelectionAdapter;
import com.conceptglobal.pmc.common.Astat;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.FieldTypes;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class ListSelectionActivity extends BaseActivity {
    private static final String TAG = "ListSelectionActivity";
    private ListSelectionAdapter adapter;
    private List<FieldTypes> arrFiledTypes;
    private List<String> arrStrings;
    private Context context;
    private EditText edtSearch;
    boolean isFromFeedback;
    private ListView lvcounties;
    private LinearLayout nodata;
    SharedPreferences preferences;
    private String strQuery;
    private String farmerId = "0";
    private int segmentID = 0;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.preferences = getSharedPreferences("PMCTheme", 0);
        setContentView(R.layout.countries);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectActivityText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        init();
        setData();
        setListeners();
    }

    private void init() {
        this.lvcounties = (ListView) findViewById(R.id.lvcountries);
        EditText editText = (EditText) findViewById(R.id.et_search_edit_list);
        this.edtSearch = editText;
        editText.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_searchHereText()));
        this.nodata = (LinearLayout) findViewById(R.id.nodata);
        Intent intent = getIntent();
        this.farmerId = intent.getStringExtra("FarmerId");
        this.isFromFeedback = intent.getExtras().getBoolean("isFrom");
        if (intent.hasExtra("segmentId")) {
            this.segmentID = intent.getIntExtra("segmentId", 0);
        }
    }

    private void setActionBar() {
        getSupportActionBar().setDisplayOptions(16);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeButtonEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        getSupportActionBar().setCustomView(R.layout.header_actionbar);
        getSupportActionBar().setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.actionbar_blue)));
        TextView textView = (TextView) findViewById(R.id.tv_title_header_actionbar);
        ((TextView) findViewById(R.id.tv_subtitle_header_actionbar)).setVisibility(8);
        textView.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectActivityText()));
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    private void setData() {
        Intent intent = getIntent();
        this.strQuery = intent.getStringExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY());
        boolean z = intent.getExtras().getBoolean(Astat.KEY_STATIC_LIST);
        this.arrStrings = new ArrayList();
        this.arrFiledTypes = new ArrayList();
        if (z) {
            this.arrFiledTypes = getStaticData(intent.getExtras().getInt(Astat.KEY_STATIC_LIST_TYPE));
        } else {
            try {
                this.arrFiledTypes = GetDataFromDB.getInstance().getFiledDetails(this.strQuery);
            } catch (Exception e) {
                PLog.e(TAG, e);
            }
        }
        List<FieldTypes> list = this.arrFiledTypes;
        if (list != null && list.size() > 0) {
            for (int i = 0; i < this.arrFiledTypes.size(); i++) {
                this.arrStrings.add(this.arrFiledTypes.get(i).getName());
            }
            ListSelectionAdapter listSelectionAdapter = new ListSelectionAdapter(this, this.arrFiledTypes, this.farmerId, this.segmentID, this.isFromFeedback);
            this.adapter = listSelectionAdapter;
            this.lvcounties.setAdapter((ListAdapter) listSelectionAdapter);
            this.nodata.setVisibility(8);
            if (this.arrFiledTypes.size() <= 5) {
                this.edtSearch.setVisibility(8);
                return;
            }
            return;
        }
        this.lvcounties.setVisibility(8);
        this.edtSearch.setVisibility(8);
        this.nodata.setVisibility(0);
    }

    private void setListeners() {
        this.lvcounties.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fo.ListSelectionActivity.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            }
        });
        this.edtSearch.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fo.ListSelectionActivity.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                try {
                    ListSelectionActivity.this.adapter.getFilter().filter(charSequence.toString());
                    if (ListSelectionActivity.this.edtSearch.getText().toString().length() == 0) {
                        ListSelectionAdapter.mDuplicate = new ArrayList();
                    }
                } catch (Exception e) {
                    PLog.e(ListSelectionActivity.TAG, e);
                }
            }
        });
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return motionEvent.getAction() == 0 && UtilDeclarations.isOutOfBounds(motionEvent, this);
    }

    private List<FieldTypes> getStaticData(int i) {
        ArrayList arrayList = new ArrayList();
        switch (i) {
            case 50:
                return getSamplingData(new String[]{"100 gm", "250 gm", "500 gm", "600 gm", "650 gm", "1 kg", "1.2 kg", "5 kg", "10 kg"});
            case 51:
                return getSamplingData(new String[]{"NBHC", "Procom", "Barrower", "Third party"});
            case 52:
                return getSamplingData(new String[]{"NBHC", "Owner", "Third party"});
            case 53:
                return getSamplingData(new String[]{"Attached", "Not attaced"});
            case 54:
            case 59:
            case 60:
            case 61:
            default:
                return arrayList;
            case 55:
                return getSamplingData(new String[]{"Yes", "No"});
            case 56:
                return getSamplingData(new String[]{"Fresh deposit", "Pre stacked", "CAD transfer"});
            case 57:
                return getSamplingData(new String[]{"Exchange delivery", "Professional warehousing"});
            case 58:
                return getSamplingData(new String[]{"CM", "SP", "Normal"});
            case 62:
                return getSamplingData(new String[]{"10111001", "10111002", "10111003"});
            case 63:
                return getSamplingData(new String[]{"DO1001", "DO1002", "DO1003"});
        }
    }

    private List<FieldTypes> getSamplingData(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < strArr.length) {
            FieldTypes fieldTypes = new FieldTypes();
            int i2 = i + 1;
            fieldTypes.setId(i2);
            fieldTypes.setName(strArr[i]);
            arrayList.add(fieldTypes);
            i = i2;
        }
        return arrayList;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            Intent intent = new Intent();
            intent.putExtra(Astat.KEY_LIST_SELECTION, new String[]{"", ""});
            setResult(-1, intent);
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
