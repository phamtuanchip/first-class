package org.exoplatform.mobile.forum;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

public class Login extends Activity implements OnClickListener{
  /**
   * Called when the activity is first created.
   */
  @Override
  public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.main);
  }

@Override
public void onClick(View arg0) {
	System.out.println("click login button");
	
}
}
