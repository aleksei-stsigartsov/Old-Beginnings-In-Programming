package com.example.tiktaktoe;

import androidx.appcompat.app.AppCompatActivity;
import android.view.View;
import android.os.Bundle;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {
    private Integer nextStep;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        nextStep = 1;
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button btnPole1=(Button) findViewById(R.id.button1);
        Button btnPole2=(Button) findViewById(R.id.button2);
        Button btnPole3=(Button) findViewById(R.id.button3);
        Button btnPole4=(Button) findViewById(R.id.button4);
        Button btnPole5=(Button) findViewById(R.id.button5);
        Button btnPole6=(Button) findViewById(R.id.button6);
        Button btnPole7=(Button) findViewById(R.id.button7);
        Button btnPole8=(Button) findViewById(R.id.button8);
        Button btnPole9=(Button) findViewById(R.id.button9);

        View.OnClickListener btnPole1Reaction = new View.OnClickListener(){public void onClick(View v){ if(btnPole1.getText()==""){ if(nextStep==1){ btnPole1.setText("X"); }else{ btnPole1.setText("O"); }nextStep= 1-nextStep; } }
        };
        btnPole1.setOnClickListener(btnPole1Reaction);

        View.OnClickListener btnPole2Reaction = new View.OnClickListener(){public void onClick(View v){ if(btnPole2.getText()==""){ if(nextStep==1){ btnPole2.setText("X"); }else{ btnPole2.setText("O"); }nextStep=1-nextStep; } }
        };
        btnPole2.setOnClickListener(btnPole2Reaction);

        View.OnClickListener btnPole3Reaction = new View.OnClickListener(){public void onClick(View v){ if(btnPole3.getText()==""){ if(nextStep==1){ btnPole3.setText("X"); }else{ btnPole3.setText("O"); }nextStep=1-nextStep; } }
        };
        btnPole3.setOnClickListener(btnPole3Reaction);

        View.OnClickListener btnPole4Reaction = new View.OnClickListener(){public void onClick(View v){ if(btnPole4.getText()==""){ if(nextStep==1){ btnPole4.setText("X"); }else{ btnPole4.setText("O"); }nextStep=1-nextStep; } }
        };
        btnPole4.setOnClickListener(btnPole4Reaction);

        View.OnClickListener btnPole5Reaction = new View.OnClickListener(){public void onClick(View v){ if(btnPole5.getText()==""){ if(nextStep==1){ btnPole5.setText("X"); }else{ btnPole5.setText("O"); }nextStep=1-nextStep; } }
        };
        btnPole5.setOnClickListener(btnPole5Reaction);

        View.OnClickListener btnPole6Reaction = new View.OnClickListener(){public void onClick(View v){ if(btnPole6.getText()==""){ if(nextStep==1){ btnPole6.setText("X"); }else{ btnPole6.setText("O"); }nextStep=1-nextStep; } }
        };
        btnPole6.setOnClickListener(btnPole6Reaction);

        View.OnClickListener btnPole7Reaction = new View.OnClickListener(){public void onClick(View v){ if(btnPole7.getText()==""){ if(nextStep==1){ btnPole7.setText("X"); }else{ btnPole7.setText("O"); }nextStep=1-nextStep; } }
        };
        btnPole7.setOnClickListener(btnPole7Reaction);

        View.OnClickListener btnPole8Reaction = new View.OnClickListener(){public void onClick(View v){ if(btnPole8.getText()==""){ if(nextStep==1){ btnPole8.setText("X"); }else{ btnPole8.setText("O"); }nextStep=1-nextStep; } }
        };
        btnPole8.setOnClickListener(btnPole8Reaction);

        View.OnClickListener btnPole9Reaction = new View.OnClickListener(){public void onClick(View v){ if(btnPole9.getText()==""){ if(nextStep==1){ btnPole9.setText("X"); }else{ btnPole9.setText("O"); }nextStep=1-nextStep; } }
        };
        btnPole9.setOnClickListener(btnPole9Reaction);
    }
}