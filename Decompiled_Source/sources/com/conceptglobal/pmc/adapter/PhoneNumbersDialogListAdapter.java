package com.conceptglobal.pmc.adapter;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.List;

/* loaded from: classes.dex */
public class PhoneNumbersDialogListAdapter extends RecyclerView.Adapter<PhoneNumbersListViewHolder> {
    private static final String TAG = "PhoneNumbersDialogListAdapter";
    private int callOrSms;
    private final Context context;
    private int lastPosition = -1;
    List<String> list;

    public PhoneNumbersDialogListAdapter(Context context, List<String> list, int i) {
        this.context = context;
        this.list = list;
        this.callOrSms = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(PhoneNumbersListViewHolder phoneNumbersListViewHolder, final int i) {
        phoneNumbersListViewHolder.item.setText(this.list.get(i));
        int i2 = this.callOrSms;
        if (i2 == 1) {
            phoneNumbersListViewHolder.item.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_call_black_18dp, 0, 0, 0);
        } else if (i2 == 2) {
            phoneNumbersListViewHolder.item.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_chat_black_18dp, 0, 0, 0);
        }
        phoneNumbersListViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.PhoneNumbersDialogListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str = PhoneNumbersDialogListAdapter.this.list.get(i);
                try {
                    if (PhoneNumbersDialogListAdapter.this.callOrSms != 1) {
                        if (PhoneNumbersDialogListAdapter.this.callOrSms == 2) {
                            PhoneNumbersDialogListAdapter.this.context.startActivity(new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + str)));
                        }
                    } else {
                        Intent intent = new Intent();
                        intent.setAction("android.intent.action.DIAL");
                        intent.setData(Uri.parse("tel:" + str));
                        PhoneNumbersDialogListAdapter.this.context.startActivity(intent);
                    }
                } catch (ActivityNotFoundException e) {
                    PLog.e("PhoneNumDialogListAdapter", e);
                    e.printStackTrace();
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public PhoneNumbersListViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.custom_dialog_list_row, viewGroup, false);
        this.lastPosition = i;
        return new PhoneNumbersListViewHolder(inflate);
    }

    public static class PhoneNumbersListViewHolder extends RecyclerView.ViewHolder {
        protected TextView item;

        public PhoneNumbersListViewHolder(View view) {
            super(view);
            this.item = (TextView) view.findViewById(R.id.item);
        }
    }
}
