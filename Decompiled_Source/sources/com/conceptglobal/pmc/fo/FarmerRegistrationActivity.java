package com.conceptglobal.pmc.fo;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TextView;
import android.widget.Toast;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.common.Astat;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.InputFilterMinMax;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.util.regex.Pattern;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class FarmerRegistrationActivity extends BaseActivity implements View.OnClickListener {
    private static int SELECTED_ID = 0;
    private static final String TAG = "Farmer Registration Activity";
    private Button acreas2Button;
    private Button acres1Button;
    private EditText acres1EditText;
    private EditText acres2EditText;
    private Button ageButton;
    private EditText ageEditText;
    private Button care_of_noButton;
    private EditText care_of_noEditText;
    private Context context;
    private Button cultivatedLandButton;
    private EditText cultivatedLandEditText;
    private EditText currentEditText;
    private Button districtButton;
    private EditText districtEditText;
    private Button farmerNameButton;
    private EditText farmerNameEditText;
    private Button farmerTypeButton;
    private EditText farmerTypeEditText;
    private Button fatherNameButton;
    private EditText fatherNameEditText;
    private GetDataFromDB getDataFromDB;
    private Button hybrid1Button;
    private EditText hybrid1EditText;
    private Button hybrid2Button;
    private EditText hybrid2EditText;
    private Intent intentGetData;
    private Button irrigatedLandButton;
    private EditText irrigatedLandEditText;
    private Button landLineButton;
    private EditText landLineEditText;
    private Button leasedCultivatedButton;
    private EditText leasedCultivatedEditText;
    private Button mobileNoButton;
    private EditText mobileNoEditText;
    private Button ownedCultivatedButton;
    private EditText ownedCultivatedEditText;
    private Button preferredRetailerButton;
    private EditText preferredRetailerEditText;
    private Queries queries;
    private Button rainFedLandButton;
    private EditText rainFedLandEditText;
    private Button season1Button;
    private EditText season1EditText;
    private Button season2Button;
    private EditText season2EditText;
    private Button socialStatusButton;
    private EditText socialStatusEditText;
    private Button stateButton;
    private EditText stateEditText;
    private Button surNameButton;
    private EditText surNameEditText;
    private TabHost tabHost;
    private Button talukaButton;
    private EditText talukaEditText;
    private Button top1CropButton;
    private EditText top1CropEditText;
    private Button top2CropButton;
    private EditText top2CropEditText;
    private Button villageButton;
    private EditText villageEditText;
    InputFilter characterSpaceFullStopFilter = new InputFilter() { // from class: com.conceptglobal.pmc.fo.FarmerRegistrationActivity.5
        boolean canEnterSpace = false;

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            if (FarmerRegistrationActivity.this.currentEditText != null && FarmerRegistrationActivity.this.currentEditText.getText().toString().equals("")) {
                this.canEnterSpace = false;
            }
            StringBuilder sb = new StringBuilder();
            while (i < i2) {
                char charAt = charSequence.charAt(i);
                if (Character.isLetter(charAt) || charAt == '.') {
                    sb.append(charAt);
                    this.canEnterSpace = true;
                }
                if (Character.isWhitespace(charAt) && this.canEnterSpace) {
                    sb.append(charAt);
                }
                i++;
            }
            return sb.toString();
        }
    };
    InputFilter filter = new InputFilter() { // from class: com.conceptglobal.pmc.fo.FarmerRegistrationActivity.6
        final int maxDigitsBeforeDecimalPoint = 3;
        final int maxDigitsAfterDecimalPoint = 3;

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            StringBuilder sb = new StringBuilder(spanned);
            sb.replace(i3, i4, charSequence.subSequence(i, i2).toString());
            if (sb.toString().matches("(([0-9]{1})([0-9]{0,2})?)?(\\.[0-9]{0,3})?")) {
                return null;
            }
            if (charSequence.length() == 0) {
                return spanned.subSequence(i3, i4);
            }
            return "";
        }
    };

    private void getData() {
    }

    private void settingData() {
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.farmer_register_tab_activity);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_farmerRegDetails()));
        initialization();
        settingTabs();
        setFilters();
        getData();
        setLayoutData();
        settingData();
        setListeners();
    }

    private void setFilters() {
        this.farmerNameEditText.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerRegistrationActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FarmerRegistrationActivity farmerRegistrationActivity = FarmerRegistrationActivity.this;
                farmerRegistrationActivity.currentEditText = farmerRegistrationActivity.farmerNameEditText;
            }
        });
        this.farmerNameEditText.setFilters(new InputFilter[]{this.characterSpaceFullStopFilter});
        this.fatherNameEditText.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerRegistrationActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FarmerRegistrationActivity farmerRegistrationActivity = FarmerRegistrationActivity.this;
                farmerRegistrationActivity.currentEditText = farmerRegistrationActivity.fatherNameEditText;
            }
        });
        this.fatherNameEditText.setFilters(new InputFilter[]{this.characterSpaceFullStopFilter});
        DecimalDigitsInputFilter decimalDigitsInputFilter = new DecimalDigitsInputFilter(5, 2);
        this.cultivatedLandEditText.setFilters(new InputFilter[]{decimalDigitsInputFilter});
        this.ownedCultivatedEditText.setFilters(new InputFilter[]{decimalDigitsInputFilter});
        this.leasedCultivatedEditText.setFilters(new InputFilter[]{decimalDigitsInputFilter});
        this.irrigatedLandEditText.setFilters(new InputFilter[]{new InputFilterMinMax(0, 100)});
        this.irrigatedLandEditText.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fo.FarmerRegistrationActivity.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (charSequence == null || charSequence.toString().equalsIgnoreCase("")) {
                    FarmerRegistrationActivity.this.rainFedLandEditText.setText("");
                    return;
                }
                int parseInt = Integer.parseInt(charSequence.toString());
                FarmerRegistrationActivity.this.rainFedLandEditText.setText((100 - parseInt) + "");
            }
        });
        this.acres1EditText.setFilters(new InputFilter[]{decimalDigitsInputFilter});
        this.acres2EditText.setFilters(new InputFilter[]{decimalDigitsInputFilter});
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    private void setListeners() {
        this.tabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener() { // from class: com.conceptglobal.pmc.fo.FarmerRegistrationActivity.4
            @Override // android.widget.TabHost.OnTabChangeListener
            public void onTabChanged(String str) {
                UtilDeclarations.hideInputKeyboard(FarmerRegistrationActivity.this.context);
            }
        });
        this.stateEditText.setOnClickListener(this);
        this.districtEditText.setOnClickListener(this);
        this.talukaEditText.setOnClickListener(this);
        this.villageEditText.setOnClickListener(this);
        this.ageEditText.setOnClickListener(this);
        this.top1CropEditText.setOnClickListener(this);
        this.season1EditText.setOnClickListener(this);
        this.hybrid1EditText.setOnClickListener(this);
        this.top2CropEditText.setOnClickListener(this);
        this.season2EditText.setOnClickListener(this);
        this.hybrid2EditText.setOnClickListener(this);
    }

    private void setLayoutData() {
        this.stateButton.setText(getResources().getString(R.string.pmc_heading_state) + "*");
        this.talukaButton.setText(getResources().getString(R.string.pmc_heading_taluka) + "*");
        this.districtButton.setText(getResources().getString(R.string.pmc_heading_district) + "*");
        this.villageButton.setText(getResources().getString(R.string.pmc_heading_village) + "*");
        this.farmerNameButton.setText(getResources().getString(R.string.pmc_reg_farmer_name) + "*");
        this.surNameButton.setText(getResources().getString(R.string.pmc_heading_surname) + "*");
        this.fatherNameButton.setText(getResources().getString(R.string.pmc_heading_fathername) + "*");
        this.mobileNoButton.setText(getResources().getString(R.string.pmc_reg_mobile_no));
        this.landLineButton.setText(getResources().getString(R.string.landline_number));
        this.care_of_noButton.setText(getResources().getString(R.string.co_number));
        this.ageButton.setText(getResources().getString(R.string.tv_age));
        this.cultivatedLandButton.setText(getResources().getString(R.string.pmc_heading_cultivated_reg) + "*");
        this.ownedCultivatedButton.setText(getResources().getString(R.string.pmc_heading_owned) + "*");
        this.leasedCultivatedButton.setText(getResources().getString(R.string.pmc_heading_leasedin) + "*");
        this.irrigatedLandButton.setText(getResources().getString(R.string.pmc_heading_irrigated) + "*");
        this.rainFedLandButton.setText(getResources().getString(R.string.pmc_heading_rain_fed));
        this.top1CropButton.setText(getResources().getString(R.string.pmc_reg_farmer_top_crop));
        this.season1Button.setText(getResources().getString(R.string.pmc_reg_farmer_season));
        this.hybrid1Button.setText(getResources().getString(R.string.pmc_reg_farmer_hybrid));
        this.acres1Button.setText(getResources().getString(R.string.pmc_reg_farmer_acre));
        this.top2CropButton.setText(getResources().getString(R.string.pmc_reg_farmer_top_2crop));
        this.season2Button.setText(getResources().getString(R.string.pmc_reg_farmer_2season));
        this.hybrid2Button.setText(getResources().getString(R.string.pmc_reg_farmer_2hybrid));
        this.acreas2Button.setText(getResources().getString(R.string.pmc_reg_farmer_2acre));
        this.farmerTypeButton.setText(getResources().getString(R.string.pmc_reg_farmer_farmer_type));
        this.preferredRetailerButton.setText(getResources().getString(R.string.pmc_reg_farmer_prferred_retailer));
        this.socialStatusButton.setText(getResources().getString(R.string.pmc_reg_farmer_social_status));
    }

    private void settingTabs() {
        this.tabHost.setup();
        addTab(getResources().getString(R.string.pmc_reg_farmer_geography_tab), R.drawable.ic_action_last_vist, getResources().getString(R.string.pmc_tag1));
        addTab(getResources().getString(R.string.pmc_reg_farmer_personal_details_tab), R.drawable.ic_action_person_wight, getResources().getString(R.string.pmc_tag2));
        addTab(getResources().getString(R.string.pmc_reg_farmer_acreages_tab), R.drawable.ic_acerage_wight, getResources().getString(R.string.pmc_tag3));
        addTab(getResources().getString(R.string.pmc_reg_farmer_top_crops_tab), R.drawable.ic_activity_wight, getResources().getString(R.string.pmc_tag4));
        addTab(getResources().getString(R.string.pmc_reg_farmer_others_tab), R.drawable.ic_others_wight, getResources().getString(R.string.pmc_tag5));
    }

    private void addTab(String str, int i, String str2) {
        TabHost.TabSpec newTabSpec = this.tabHost.newTabSpec(str);
        View inflate = LayoutInflater.from(this).inflate(R.layout.tab_indicator, (ViewGroup) this.tabHost.getTabWidget(), false);
        ((TextView) inflate.findViewById(R.id.title_tab_indicator)).setText(str);
        ((ImageView) inflate.findViewById(R.id.icon_tab_indicator)).setImageResource(i);
        newTabSpec.setIndicator(inflate);
        if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag1))) {
            newTabSpec.setContent(R.id.tab1);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag2))) {
            newTabSpec.setContent(R.id.tab2);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag3))) {
            newTabSpec.setContent(R.id.tab3);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag4))) {
            newTabSpec.setContent(R.id.tab4);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag5))) {
            newTabSpec.setContent(R.id.tab5);
        } else {
            newTabSpec.setContent(R.id.tab1);
        }
        this.tabHost.addTab(newTabSpec);
    }

    private void initialization() {
        this.intentGetData = getIntent();
        this.queries = Queries.getInstance();
        this.getDataFromDB = GetDataFromDB.getInstance();
        TabHost tabHost = (TabHost) findViewById(R.id.reg_farmer_tabhost);
        this.tabHost = tabHost;
        this.stateButton = (Button) tabHost.findViewById(R.id.tv_heading_state);
        this.districtButton = (Button) this.tabHost.findViewById(R.id.tv_heading_district);
        this.talukaButton = (Button) this.tabHost.findViewById(R.id.tv_heading_taluka);
        this.villageButton = (Button) this.tabHost.findViewById(R.id.tv_heading_village);
        this.stateEditText = (EditText) this.tabHost.findViewById(R.id.et_state);
        this.districtEditText = (EditText) this.tabHost.findViewById(R.id.et_district);
        this.talukaEditText = (EditText) this.tabHost.findViewById(R.id.et_taluka);
        this.villageEditText = (EditText) this.tabHost.findViewById(R.id.et_village);
        this.farmerNameButton = (Button) this.tabHost.findViewById(R.id.tv_name_farmer_personal_details);
        this.surNameButton = (Button) this.tabHost.findViewById(R.id.tv_surname_farmer_personal_details);
        this.fatherNameButton = (Button) this.tabHost.findViewById(R.id.tv_fathername_farmer_personal_details);
        this.mobileNoButton = (Button) this.tabHost.findViewById(R.id.tv_mobile_farmer_personal_details);
        this.landLineButton = (Button) this.tabHost.findViewById(R.id.tv_landline_farmer_personal_details);
        this.care_of_noButton = (Button) this.tabHost.findViewById(R.id.tv_conumber_farmer_personal_details);
        this.ageButton = (Button) this.tabHost.findViewById(R.id.tv_age);
        this.farmerNameEditText = (EditText) this.tabHost.findViewById(R.id.et_name_farmer_personal_details);
        this.surNameEditText = (EditText) this.tabHost.findViewById(R.id.et_surname_farmer_personal_details);
        this.fatherNameEditText = (EditText) this.tabHost.findViewById(R.id.et_fathername_farmer_personal_details);
        this.mobileNoEditText = (EditText) this.tabHost.findViewById(R.id.et_mobile_farmer_personal_details);
        this.landLineEditText = (EditText) this.tabHost.findViewById(R.id.et_landline_farmer_personal_details);
        this.care_of_noEditText = (EditText) this.tabHost.findViewById(R.id.et_conumber_farmer_personal_details);
        this.ageEditText = (EditText) this.tabHost.findViewById(R.id.et_age);
        this.cultivatedLandButton = (Button) this.tabHost.findViewById(R.id.tv_cultivated_land);
        this.ownedCultivatedButton = (Button) this.tabHost.findViewById(R.id.tv_owned_and_cultivated);
        this.leasedCultivatedButton = (Button) this.tabHost.findViewById(R.id.tv_leased_and_cultivated);
        this.irrigatedLandButton = (Button) this.tabHost.findViewById(R.id.tv_irrigated_land);
        this.rainFedLandButton = (Button) this.tabHost.findViewById(R.id.tv_rain_fed_land);
        this.cultivatedLandEditText = (EditText) this.tabHost.findViewById(R.id.et_cultivated_land);
        this.ownedCultivatedEditText = (EditText) this.tabHost.findViewById(R.id.et_owned_and_cultivated);
        this.leasedCultivatedEditText = (EditText) this.tabHost.findViewById(R.id.et_leased_and_cultivated);
        this.irrigatedLandEditText = (EditText) this.tabHost.findViewById(R.id.et_irrigated_land);
        this.rainFedLandEditText = (EditText) this.tabHost.findViewById(R.id.et_rain_fed_land);
        this.top1CropButton = (Button) this.tabHost.findViewById(R.id.tv_top_one_crop);
        this.season1Button = (Button) this.tabHost.findViewById(R.id.tv_season);
        this.hybrid1Button = (Button) this.tabHost.findViewById(R.id.tv_heading_hybrid);
        this.acres1Button = (Button) this.tabHost.findViewById(R.id.tv_acre);
        this.top2CropButton = (Button) this.tabHost.findViewById(R.id.tv_top_two_crop);
        this.season2Button = (Button) this.tabHost.findViewById(R.id.tv_season2);
        this.hybrid2Button = (Button) this.tabHost.findViewById(R.id.tv_heading_hybrid2);
        this.acreas2Button = (Button) this.tabHost.findViewById(R.id.tv_2acre);
        this.top1CropEditText = (EditText) this.tabHost.findViewById(R.id.et_top_one_crop);
        this.season1EditText = (EditText) this.tabHost.findViewById(R.id.et_season);
        this.hybrid1EditText = (EditText) this.tabHost.findViewById(R.id.et_hybrid);
        this.acres1EditText = (EditText) this.tabHost.findViewById(R.id.et_acre);
        this.top2CropEditText = (EditText) this.tabHost.findViewById(R.id.et_top_two_crop);
        this.season2EditText = (EditText) this.tabHost.findViewById(R.id.et_season2);
        this.hybrid2EditText = (EditText) this.tabHost.findViewById(R.id.et_hybrid2);
        this.acres2EditText = (EditText) this.tabHost.findViewById(R.id.et_2acre);
        this.farmerTypeButton = (Button) this.tabHost.findViewById(R.id.tv_farmer_type);
        this.preferredRetailerButton = (Button) this.tabHost.findViewById(R.id.tv_preferred_retailler);
        this.socialStatusButton = (Button) this.tabHost.findViewById(R.id.tv_social_status);
        this.farmerTypeEditText = (EditText) this.tabHost.findViewById(R.id.et_farmer_type);
        this.preferredRetailerEditText = (EditText) this.tabHost.findViewById(R.id.et_preferred_retailler);
        this.socialStatusEditText = (EditText) this.tabHost.findViewById(R.id.et_social_status);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.et_age /* 2131296651 */:
                try {
                    SELECTED_ID = R.id.et_age;
                    Intent addFlags = new Intent(this, (Class<?>) ListSelectionActivity.class).addFlags(67108864);
                    addFlags.putExtra(Astat.KEY_LIST_QUERY, Queries.getInstance().getAgeList());
                    startActivityForResult(addFlags, 6);
                    break;
                } catch (Exception e) {
                    PLog.e(TAG, e);
                    return;
                }
            case R.id.et_district /* 2131296671 */:
                try {
                    if (this.stateEditText.getTag() != null) {
                        SELECTED_ID = R.id.et_district;
                        Intent addFlags2 = new Intent(this, (Class<?>) ListSelectionActivity.class).addFlags(67108864);
                        String str = (String) this.stateEditText.getTag();
                        Log.e("eeeee", str + "");
                        addFlags2.putExtra(Astat.KEY_LIST_QUERY, Queries.getInstance().getDistrictlist(Integer.parseInt(str)));
                        startActivityForResult(addFlags2, 3);
                    } else {
                        Toast.makeText(getApplicationContext(), "Please Select State", 0).show();
                    }
                    break;
                } catch (Exception e2) {
                    PLog.e(TAG, e2);
                    return;
                }
            case R.id.et_farmer_type /* 2131296673 */:
                try {
                    SELECTED_ID = R.id.et_farmer_type;
                    Intent addFlags3 = new Intent(this, (Class<?>) ListSelectionActivity.class).addFlags(67108864);
                    addFlags3.putExtra(Astat.KEY_LIST_QUERY, Queries.getInstance().getFarmerTypes());
                    startActivityForResult(addFlags3, 7);
                    break;
                } catch (Exception e3) {
                    PLog.e(TAG, e3);
                    return;
                }
            case R.id.et_hybrid /* 2131296675 */:
                try {
                    SELECTED_ID = R.id.et_hybrid;
                    Intent addFlags4 = new Intent(this, (Class<?>) ListSelectionActivity.class).addFlags(67108864);
                    addFlags4.putExtra(Astat.KEY_LIST_QUERY, Queries.getInstance().getHybridNames());
                    startActivityForResult(addFlags4, 7);
                    break;
                } catch (Exception e4) {
                    PLog.e(TAG, e4);
                    return;
                }
            case R.id.et_hybrid2 /* 2131296676 */:
                try {
                    SELECTED_ID = R.id.et_hybrid2;
                    Intent addFlags5 = new Intent(this, (Class<?>) ListSelectionActivity.class).addFlags(67108864);
                    addFlags5.putExtra(Astat.KEY_LIST_QUERY, Queries.getInstance().getHybridNames());
                    startActivityForResult(addFlags5, 7);
                    break;
                } catch (Exception e5) {
                    PLog.e(TAG, e5);
                    return;
                }
            case R.id.et_preferred_retailler /* 2131296702 */:
                try {
                    SELECTED_ID = R.id.et_preferred_retailler;
                    Intent addFlags6 = new Intent(this, (Class<?>) ListSelectionActivity.class).addFlags(67108864);
                    addFlags6.putExtra(Astat.KEY_LIST_QUERY, Queries.getInstance().getFarmerTypes());
                    startActivityForResult(addFlags6, 7);
                    break;
                } catch (Exception e6) {
                    PLog.e(TAG, e6);
                    return;
                }
            case R.id.et_season /* 2131296712 */:
                try {
                    SELECTED_ID = R.id.et_season;
                    Intent addFlags7 = new Intent(this, (Class<?>) ListSelectionActivity.class).addFlags(67108864);
                    addFlags7.putExtra(Astat.KEY_LIST_QUERY, Queries.getInstance().getSeasonNames());
                    startActivityForResult(addFlags7, 7);
                    break;
                } catch (Exception e7) {
                    PLog.e(TAG, e7);
                    return;
                }
            case R.id.et_season2 /* 2131296713 */:
                try {
                    SELECTED_ID = R.id.et_season2;
                    Intent addFlags8 = new Intent(this, (Class<?>) ListSelectionActivity.class).addFlags(67108864);
                    addFlags8.putExtra(Astat.KEY_LIST_QUERY, Queries.getInstance().getSeasonNames());
                    startActivityForResult(addFlags8, 7);
                    break;
                } catch (Exception e8) {
                    PLog.e(TAG, e8);
                    return;
                }
            case R.id.et_state /* 2131296718 */:
                try {
                    SELECTED_ID = R.id.et_state;
                    Intent addFlags9 = new Intent(this, (Class<?>) ListSelectionActivity.class).addFlags(67108864);
                    addFlags9.putExtra(Astat.KEY_LIST_QUERY, Queries.getInstance().getStates());
                    startActivityForResult(addFlags9, 1);
                    break;
                } catch (Exception e9) {
                    PLog.e(TAG, e9);
                    return;
                }
            case R.id.et_taluka /* 2131296721 */:
                try {
                    if (this.districtEditText.getTag() != null) {
                        SELECTED_ID = R.id.et_taluka;
                        Intent addFlags10 = new Intent(this, (Class<?>) ListSelectionActivity.class).addFlags(67108864);
                        addFlags10.putExtra(Astat.KEY_LIST_QUERY, Queries.getInstance().getTalukasList(Integer.parseInt((String) this.districtEditText.getTag())));
                        startActivityForResult(addFlags10, 4);
                    } else {
                        Toast.makeText(getApplicationContext(), "Please Select District", 0).show();
                    }
                    break;
                } catch (Exception e10) {
                    PLog.e(TAG, e10);
                    return;
                }
            case R.id.et_top_one_crop /* 2131296722 */:
                try {
                    SELECTED_ID = R.id.et_top_one_crop;
                    Intent addFlags11 = new Intent(this, (Class<?>) ListSelectionActivity.class).addFlags(67108864);
                    addFlags11.putExtra(Astat.KEY_LIST_QUERY, Queries.getInstance().getCropNames());
                    startActivityForResult(addFlags11, 7);
                    break;
                } catch (Exception e11) {
                    PLog.e(TAG, e11);
                    return;
                }
            case R.id.et_top_two_crop /* 2131296723 */:
                try {
                    SELECTED_ID = R.id.et_top_two_crop;
                    Intent addFlags12 = new Intent(this, (Class<?>) ListSelectionActivity.class).addFlags(67108864);
                    addFlags12.putExtra(Astat.KEY_LIST_QUERY, Queries.getInstance().getCropNames());
                    startActivityForResult(addFlags12, 7);
                    break;
                } catch (Exception e12) {
                    PLog.e(TAG, e12);
                    return;
                }
            case R.id.et_village /* 2131296724 */:
                try {
                    if (this.talukaEditText.getTag() != null) {
                        SELECTED_ID = R.id.et_village;
                        Intent addFlags13 = new Intent(this, (Class<?>) ListSelectionActivity.class).addFlags(67108864);
                        addFlags13.putExtra(Astat.KEY_LIST_QUERY, Queries.getInstance().getVillagesList(Integer.parseInt((String) this.talukaEditText.getTag())));
                        startActivityForResult(addFlags13, 5);
                    } else {
                        Toast.makeText(getApplicationContext(), "Please Select Taluka", 0).show();
                    }
                    break;
                } catch (Exception e13) {
                    PLog.e(TAG, e13);
                    return;
                }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        String[] stringArray;
        String str;
        super.onActivityResult(i, i2, intent);
        if (i2 == 0 || intent == null || intent.getStringArrayExtra(Astat.KEY_LIST_SELECTION) == null || (str = (stringArray = intent.getExtras().getStringArray(Astat.KEY_LIST_SELECTION))[0]) == null || str.length() == 0) {
            return;
        }
        String str2 = stringArray[0];
        String str3 = stringArray[1];
        try {
            switch (SELECTED_ID) {
                case R.id.et_age /* 2131296651 */:
                    this.ageEditText.setText(str3);
                    this.ageEditText.setTag(str2);
                    break;
                case R.id.et_district /* 2131296671 */:
                    this.districtEditText.setText(str3);
                    this.districtEditText.setTag(str2);
                    this.talukaEditText.setText((CharSequence) null);
                    this.talukaEditText.setTag(null);
                    this.villageEditText.setText((CharSequence) null);
                    this.villageEditText.setTag(null);
                    break;
                case R.id.et_hybrid /* 2131296675 */:
                    this.hybrid1EditText.setText(str3);
                    this.hybrid1EditText.setTag(str2);
                    break;
                case R.id.et_hybrid2 /* 2131296676 */:
                    this.hybrid2EditText.setText(str3);
                    this.hybrid2EditText.setTag(str2);
                    break;
                case R.id.et_season /* 2131296712 */:
                    this.season1EditText.setText(str3);
                    this.season1EditText.setTag(str2);
                    break;
                case R.id.et_season2 /* 2131296713 */:
                    this.season2EditText.setText(str3);
                    this.season2EditText.setTag(str2);
                    break;
                case R.id.et_state /* 2131296718 */:
                    this.stateEditText.setText(str3);
                    this.stateEditText.setTag(str2);
                    this.districtEditText.setText((CharSequence) null);
                    this.districtEditText.setTag(null);
                    this.talukaEditText.setText((CharSequence) null);
                    this.talukaEditText.setTag(null);
                    this.villageEditText.setText((CharSequence) null);
                    this.villageEditText.setTag(null);
                    break;
                case R.id.et_taluka /* 2131296721 */:
                    this.talukaEditText.setText(str3);
                    this.talukaEditText.setTag(str2);
                    this.villageEditText.setText((CharSequence) null);
                    this.villageEditText.setTag(null);
                    break;
                case R.id.et_top_one_crop /* 2131296722 */:
                    this.top1CropEditText.setText(str3);
                    this.top1CropEditText.setTag(str2);
                    break;
                case R.id.et_top_two_crop /* 2131296723 */:
                    this.top2CropEditText.setText(str3);
                    this.top2CropEditText.setTag(str2);
                    break;
                case R.id.et_village /* 2131296724 */:
                    this.villageEditText.setText(str3);
                    this.villageEditText.setTag(str2);
                    break;
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    class DecimalDigitsInputFilter implements InputFilter {
        Pattern mPattern;

        public DecimalDigitsInputFilter(int i, int i2) {
            StringBuilder sb = new StringBuilder("[0-9]{0,");
            sb.append(i - 1);
            sb.append("}+((\\.[0-9]{0,");
            sb.append(i2 - 1);
            sb.append("})?)||(\\.)?");
            this.mPattern = Pattern.compile(sb.toString());
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            if (this.mPattern.matcher(spanned).matches()) {
                return null;
            }
            return "";
        }
    }
}
