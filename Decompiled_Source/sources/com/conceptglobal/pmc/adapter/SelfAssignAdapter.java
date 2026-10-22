package com.conceptglobal.pmc.adapter;

import android.app.Activity;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.fo.ListSelectionActivity;
import com.conceptglobal.pmc.fo.SelfAssignDetailsActivity;
import com.conceptglobal.pmc.interfaces.OnTapListener;
import com.conceptglobal.pmc.model.CustomListDisplayModel;
import com.conceptglobal.pmc.registration.DraftList;
import com.conceptglobal.pmc.textdrawable.ColorGenerator;
import com.conceptglobal.pmc.textdrawable.TextDrawable;
import com.conceptglobal.pmc.utils.CircleImageView;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.views.RippleView;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.List;

/* loaded from: classes.dex */
public class SelfAssignAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final int GETCUSTOMER = 3;
    private List<CustomListDisplayModel> data;
    private int isFromAssignment;
    private int isFromFeedBack;
    private int isFromOrders;
    private int isFromTestimonial;
    private int isFromTodo;
    private int isFromcomplaint;
    private Activity mActivity;
    private ColorGenerator mColorGenerator = ColorGenerator.MATERIAL;
    private TextDrawable.IBuilder mDrawableBuilder = TextDrawable.builder().round();
    private OnTapListener onTapListener;

    public SelfAssignAdapter(Activity activity, List<CustomListDisplayModel> list, int i, int i2, int i3, int i4, int i5) {
        this.mActivity = activity;
        this.data = list;
        this.isFromAssignment = i;
        this.isFromcomplaint = i3;
        this.isFromOrders = i2;
        this.isFromTestimonial = i4;
        this.isFromFeedBack = i5;
    }

    public SelfAssignAdapter(Activity activity, List<CustomListDisplayModel> list, int i, int i2, int i3, int i4, int i5, int i6) {
        this.mActivity = activity;
        this.data = list;
        this.isFromAssignment = i;
        this.isFromcomplaint = i3;
        this.isFromOrders = i2;
        this.isFromTestimonial = i4;
        this.isFromFeedBack = i5;
        this.isFromTodo = i6;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.selfassign_row, (ViewGroup) null));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        viewHolder.rippleView.setOnRippleCompleteListener(new RippleView.OnRippleCompleteListener() { // from class: com.conceptglobal.pmc.adapter.SelfAssignAdapter.1
            @Override // com.conceptglobal.pmc.views.RippleView.OnRippleCompleteListener
            public void onComplete(RippleView rippleView) {
                String typeName = ((CustomListDisplayModel) SelfAssignAdapter.this.data.get(i)).getTypeName();
                if (Integer.parseInt(((CustomListDisplayModel) SelfAssignAdapter.this.data.get(i)).getTypeId()) == 10) {
                    Intent intent = new Intent(SelfAssignAdapter.this.mActivity, (Class<?>) ListSelectionActivity.class);
                    intent.putExtra("FarmerId", ConstantsPMC.getInstance().getUserId());
                    intent.putExtra("segmentId", Integer.parseInt(((CustomListDisplayModel) SelfAssignAdapter.this.data.get(i)).getTypeId()));
                    intent.putExtra("isfromfeed", SelfAssignAdapter.this.isFromFeedBack);
                    intent.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getActivtiesListBySegment(Integer.parseInt(((CustomListDisplayModel) SelfAssignAdapter.this.data.get(i)).getTypeId())));
                    SelfAssignAdapter.this.mActivity.startActivityForResult(intent, 2);
                    return;
                }
                if (typeName.equalsIgnoreCase("farmer") || typeName.equalsIgnoreCase("retailer") || typeName.equalsIgnoreCase("dealer") || typeName.equalsIgnoreCase("village")) {
                    Intent intent2 = new Intent(SelfAssignAdapter.this.mActivity, (Class<?>) DraftList.class);
                    intent2.putExtra("segmentId", Integer.parseInt(((CustomListDisplayModel) SelfAssignAdapter.this.data.get(i)).getTypeId()));
                    if (SelfAssignAdapter.this.isFromTestimonial != 111) {
                        if (SelfAssignAdapter.this.isFromFeedBack == 222) {
                            intent2.putExtra("FromSelfAssignment", false);
                            intent2.putExtra("FromTestmonial", false);
                            intent2.putExtra("FromFeedBack", true);
                        } else {
                            intent2.putExtra("FromSelfAssignment", true);
                            intent2.putExtra("FromTestmonial", false);
                            intent2.putExtra("FromFeedBack", false);
                        }
                    } else {
                        intent2.putExtra("FromSelfAssignment", false);
                        intent2.putExtra("FromTestmonial", true);
                        intent2.putExtra("FromFeedBack", false);
                    }
                    if (SelfAssignAdapter.this.isFromAssignment == 1) {
                        intent2.putExtra("isFromAssignment", SelfAssignAdapter.this.isFromAssignment);
                    }
                    intent2.putExtra("isFromOrders", SelfAssignAdapter.this.isFromOrders);
                    intent2.putExtra("isFromComplaints", SelfAssignAdapter.this.isFromcomplaint);
                    intent2.putExtra("isFromTodo", SelfAssignAdapter.this.isFromTodo);
                    intent2.putExtra("farmerType", ((CustomListDisplayModel) SelfAssignAdapter.this.data.get(i)).getTypeName());
                    SelfAssignAdapter.this.mActivity.startActivityForResult(intent2, 3);
                    return;
                }
                Intent intent3 = new Intent(SelfAssignAdapter.this.mActivity, (Class<?>) SelfAssignDetailsActivity.class);
                intent3.putExtra("segmentId", Integer.parseInt(((CustomListDisplayModel) SelfAssignAdapter.this.data.get(i)).getTypeId()));
                if (SelfAssignAdapter.this.isFromTestimonial == 111) {
                    intent3.putExtra("isFromTestimonial", SelfAssignAdapter.this.isFromTestimonial);
                }
                if (SelfAssignAdapter.this.isFromFeedBack == 222) {
                    intent3.putExtra("isFromFeedBack", SelfAssignAdapter.this.isFromFeedBack);
                }
                if (SelfAssignAdapter.this.isFromAssignment == 1) {
                    intent3.putExtra("isFromAssignment", SelfAssignAdapter.this.isFromAssignment);
                }
                intent3.putExtra("isFromOrders", SelfAssignAdapter.this.isFromOrders);
                intent3.putExtra("isFromComplaints", SelfAssignAdapter.this.isFromcomplaint);
                SelfAssignAdapter.this.mActivity.startActivityForResult(intent3, 3);
            }
        });
        viewHolder.profileimage.setVisibility(4);
        viewHolder.profTextView.setText(this.data.get(i).getTypeName());
        viewHolder.profTextView.setTextSize(18.0f);
        viewHolder.rippleView.setTag(this.data.get(i));
        viewHolder.itemView.setTag(this.data.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.data.size();
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        protected TextView profTextView;
        protected CircleImageView profileimage;
        private RippleView rippleView;
        RippleView rippleview;

        public ViewHolder(View view) {
            super(view);
            this.rippleView = (RippleView) view.findViewById(R.id.rippleview);
            this.profileimage = (CircleImageView) view.findViewById(R.id.profile_image);
            this.profTextView = (TextView) view.findViewById(R.id.tv_textview_display);
        }
    }

    public void setOnTapListener(OnTapListener onTapListener) {
        this.onTapListener = onTapListener;
    }
}
