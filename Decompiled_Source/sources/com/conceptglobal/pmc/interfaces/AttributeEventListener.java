package com.conceptglobal.pmc.interfaces;

import android.widget.EditText;
import androidx.fragment.app.Fragment;
import com.conceptglobal.pmc.model.AttributeModel;
import java.util.List;

/* loaded from: classes.dex */
public interface AttributeEventListener {
    void GetData(List<AttributeModel> list, List<EditText> list2, List<EditText> list3);

    void getFragmentsList(List<Fragment> list);
}
