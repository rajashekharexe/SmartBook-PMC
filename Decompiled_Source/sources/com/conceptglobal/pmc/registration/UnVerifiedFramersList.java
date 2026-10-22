package com.conceptglobal.pmc.registration;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.FragmentTransaction;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fragments.FarmersSearchFragment;
import com.conceptglobal.pmc.fragments.RetailersSearchFragment;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;

/* loaded from: classes.dex */
public class UnVerifiedFramersList extends AppCompatActivity {
    private String farmerType;
    private Toolbar mToolbar;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_unverified_farmers_list);
        String stringExtra = getIntent().getStringExtra("farmerType");
        this.farmerType = stringExtra;
        if (stringExtra.equalsIgnoreCase("UnVerifiedFarmer")) {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()) == null) {
                    this.mToolbar = CustomActionBar.initActionBar(this, "Farmer Details(" + UtilDeclarations.getApplicationVersion(this) + ")");
                } else {
                    this.mToolbar = CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()) + "(" + UtilDeclarations.getApplicationVersion(this) + ")");
                }
            } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()) == null) {
                this.mToolbar = CustomActionBar.initActionBar(this, "Farmer Details(" + UtilDeclarations.getApplicationVersion(this) + ")");
            } else {
                this.mToolbar = CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()) + "(" + UtilDeclarations.getApplicationVersion(this) + ")");
            }
        } else if (this.farmerType.equalsIgnoreCase("UnVerifiedRetailer")) {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()) == null) {
                    this.mToolbar = CustomActionBar.initActionBar(this, "Retailer Details(" + UtilDeclarations.getApplicationVersion(this) + ")");
                } else {
                    this.mToolbar = CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addRetailersDetailsText()) + "(" + UtilDeclarations.getApplicationVersion(this) + ")");
                }
            } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()) == null) {
                this.mToolbar = CustomActionBar.initActionBar(this, "Retailer Details(" + UtilDeclarations.getApplicationVersion(this) + ")");
            } else {
                this.mToolbar = CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addRetailersDetailsText()) + "(" + UtilDeclarations.getApplicationVersion(this) + ")");
            }
        }
        loadFarmersList();
    }

    private void loadFarmersList() {
        if (this.farmerType.equalsIgnoreCase("UnVerifiedFarmer")) {
            FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
            beginTransaction.replace(R.id.unVerifiedFarmersContent, FarmersSearchFragment.newInstance(this.farmerType));
            beginTransaction.commit();
        } else if (this.farmerType.equalsIgnoreCase("UnVerifiedRetailer")) {
            FragmentTransaction beginTransaction2 = getSupportFragmentManager().beginTransaction();
            beginTransaction2.replace(R.id.unVerifiedFarmersContent, RetailersSearchFragment.newInstance(this.farmerType));
            beginTransaction2.commit();
        }
    }
}
