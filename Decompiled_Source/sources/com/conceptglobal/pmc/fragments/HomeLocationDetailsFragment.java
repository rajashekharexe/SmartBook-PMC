package com.conceptglobal.pmc.fragments;

import android.app.ProgressDialog;
import android.content.ContentValues;
import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import com.conceptglobal.pmc.MainHomePageActivity;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;

/* loaded from: classes.dex */
public class HomeLocationDetailsFragment extends Fragment implements View.OnClickListener {
    private Button btnDiscription;
    private ImageView btnLatLng;
    private Context con;
    private EditText etDiscription;
    private LocationUtils mLocationUtils;
    private ProgressDialog progressDialog;
    private String response;
    private View rootView;
    private Button saveButton;
    private TextView tvLatitude;
    private TextView tvLongitude;
    private String urlString;

    private void getData() {
    }

    private void setData() {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.con = layoutInflater.getContext();
        this.rootView = layoutInflater.inflate(R.layout.home_location_details, viewGroup, false);
        initialization();
        getData();
        setData();
        return this.rootView;
    }

    private void initialization() {
        this.saveButton = (Button) this.rootView.findViewById(R.id.btn_save);
        this.btnLatLng = (ImageView) this.rootView.findViewById(R.id.btn_get_latlong_farmer_personal_detailss);
        this.tvLatitude = (TextView) this.rootView.findViewById(R.id.tv_latitude_personal_detailss);
        this.tvLongitude = (TextView) this.rootView.findViewById(R.id.tv_longitude_personal_detailss);
        this.btnDiscription = (Button) this.rootView.findViewById(R.id.tv_discription_farmer_other_details);
        this.etDiscription = (EditText) this.rootView.findViewById(R.id.et_discription_farmer_other_details);
        this.mLocationUtils = new LocationUtils();
        this.btnLatLng.setOnClickListener(this);
        this.saveButton.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.HomeLocationDetailsFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    if (!TextUtils.isEmpty(HomeLocationDetailsFragment.this.tvLatitude.getText().toString())) {
                        if (TextUtils.isEmpty(HomeLocationDetailsFragment.this.etDiscription.getText().toString())) {
                            Toast.makeText(HomeLocationDetailsFragment.this.getActivity(), "Please enter Address ", 1).show();
                            return;
                        }
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("HomeLatitude", HomeLocationDetailsFragment.this.tvLatitude.getText().toString());
                        contentValues.put("HomeLongitude", HomeLocationDetailsFragment.this.tvLongitude.getText().toString());
                        contentValues.put("HomeAddress", HomeLocationDetailsFragment.this.etDiscription.getText().toString());
                        contentValues.put("homelocationupdateddate", UtilDeclarations.getDateTime());
                        contentValues.put("HomeLocationSyncStatus", "False");
                        InsertDataIntoDB.UpdateUserDetailsFOHomeLocation(contentValues, ConstantsPMC.getInstance().getDeviceID());
                        HomeLocationDetailsFragment.this.getFragmentManager().beginTransaction().replace(R.id.container, new HomePageFragment()).commit();
                        return;
                    }
                    Toast.makeText(HomeLocationDetailsFragment.this.getActivity(), "Please take Latitude and Longitude ", 1).show();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        UtilDeclarations.hideInputKeyboard(getActivity());
        if (view.getId() != R.id.btn_get_latlong_farmer_personal_detailss) {
            return;
        }
        fetchLocation();
    }

    private void fetchLocation() {
        if (!this.mLocationUtils.checkPermissions(getActivity())) {
            this.mLocationUtils.requestPermissions(getActivity());
            return;
        }
        try {
            new FetchLocation(getActivity(), true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fragments.HomeLocationDetailsFragment.2
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    HomeLocationDetailsFragment.this.tvLatitude.setText(locationInfo.getLatitude() + "");
                    HomeLocationDetailsFragment.this.tvLongitude.setText(locationInfo.getLongitude() + "");
                }
            }, "HomeLocationDetailsFragment");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ((MainHomePageActivity) getActivity()).endBtn.setVisibility(8);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        ((MainHomePageActivity) getActivity()).endBtn.setVisibility(0);
        super.onDestroy();
    }

    private void setCustomActionBar() {
        if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
            if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_settingsToolbarText()) == null) {
                CustomActionBar.initActionBar((AppCompatActivity) this.con, "Settings (Training - " + UtilDeclarations.getApplicationVersion(this.con) + ")");
                return;
            }
            CustomActionBar.initActionBar((AppCompatActivity) this.con, " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_settingsToolbarText()) + " (Training " + UtilDeclarations.getApplicationVersion(this.con) + " )");
            return;
        }
        if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_settingsToolbarText()) == null) {
            CustomActionBar.initActionBar((AppCompatActivity) this.con, "Settings ( Live " + UtilDeclarations.getApplicationVersion(this.con) + ")");
            return;
        }
        CustomActionBar.initActionBar((AppCompatActivity) this.con, " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_settingsToolbarText()) + " (Live " + UtilDeclarations.getApplicationVersion(this.con) + " )");
    }
}
