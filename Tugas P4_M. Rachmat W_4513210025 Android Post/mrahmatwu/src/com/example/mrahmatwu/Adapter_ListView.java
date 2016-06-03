package com.example.mrahmatwu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
 
public class Adapter_ListView extends BaseAdapter{
 
    private int count;
    private Context context;
 
    public Adapter_ListView(int count, Context context)
    {
        this.count = count;
        this.context = context;
    }
 
    @Override
    public int getCount() {
        // TODO Auto-generated method stub
        return count;
    }
 
    @Override
    public Object getItem(int arg0) {
        // TODO Auto-generated method stub
        return null;
    }
 
    @Override
    public long getItemId(int arg0) {
        // TODO Auto-generated method stub
        return 0;
    }
 
    @Override
    public View getView(int position, View contentView, ViewGroup arg2) {
        // TODO Auto-generated method stub
        LayoutInflater inflater = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        contentView = inflater.inflate(R.layout.layout_inflate_list, null);
 
        TextView title = (TextView)contentView.findViewById(R.id.inflate_title);
        TextView body = (TextView)contentView.findViewById(R.id.inflate_body);
 
        title.setText("Title - "+position);
        body.setText("Body - "+position);
 
        return contentView;
    }
 
}