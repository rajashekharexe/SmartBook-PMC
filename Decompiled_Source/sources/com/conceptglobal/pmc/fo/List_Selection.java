package com.conceptglobal.pmc.fo;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.FieldTypes;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class List_Selection extends BaseActivity {
    private static final String TAG = "List_Selection";
    private List<FieldTypes> arrFiledTypes;
    private List<String> arrStrings;
    private Context context;
    private ListView lvcounties;
    private String strQuery;
    private TextView tvBack;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.countries);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        init();
        setData();
        setListeners();
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    private void init() {
        this.lvcounties = (ListView) findViewById(R.id.lvcountries);
    }

    private void setData() {
        this.strQuery = getIntent().getStringExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY());
        this.arrStrings = new ArrayList();
        this.arrFiledTypes = new ArrayList();
        try {
            this.arrFiledTypes = GetDataFromDB.getInstance().getFiledDetails(this.strQuery);
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
        if (this.arrFiledTypes != null) {
            for (int i = 0; i < this.arrFiledTypes.size(); i++) {
                this.arrStrings.add(this.arrFiledTypes.get(i).getName());
            }
        }
        this.lvcounties.setAdapter((ListAdapter) new MoreAdapter(this, this.arrStrings));
    }

    private void setListeners() {
        this.lvcounties.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fo.List_Selection.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                Intent intent = new Intent();
                intent.putExtra(ConstantDeclarations.getInstance().getKEYSELECTION(), new String[]{Integer.toString(((FieldTypes) List_Selection.this.arrFiledTypes.get(i)).getId()), ((FieldTypes) List_Selection.this.arrFiledTypes.get(i)).getName()});
                List_Selection.this.setResult(-1, intent);
                List_Selection.this.finish();
            }
        });
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return motionEvent.getAction() == 0 && UtilDeclarations.isOutOfBounds(motionEvent, this);
    }

    class MoreAdapter extends BaseAdapter {
        private List<String> holder;
        private LayoutInflater inflater;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public MoreAdapter(Context context, List<String> list) {
            this.holder = list;
            this.inflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.holder.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.holder.get(i).toString();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = this.inflater.inflate(R.layout.inflate_moreselection, (ViewGroup) null);
            }
            ViewHolder viewHolder = List_Selection.this.new ViewHolder();
            viewHolder.name = (TextView) view.findViewById(R.id.items_more_selections);
            viewHolder.name.setText(this.holder.get(i));
            return view;
        }
    }

    public class ViewHolder {
        TextView name;

        public ViewHolder() {
        }
    }
}
