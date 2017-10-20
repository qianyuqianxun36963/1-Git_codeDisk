package java����.d_ϵͳ.����;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class �������߰� {
	public static void main(String[] args) {
        ExecutorService executor = Executors.newFixedThreadPool(5);
  
        for (int i = 0; i<100; i++){
            executor.execute(new DataProcessor(i));
        }
  
        System.out.println("Starting shutdown...");
        executor.shutdown();
  
        try {
            executor.awaitTermination(1, TimeUnit.SECONDS);
        } catch (InterruptedException ex) {
            System.out.println("Interrupted or timed out while awaiting termination");
        }
  
        System.out.println("All done!");
  
    }
}

class DataProcessor implements Runnable {
    public DataProcessor(int data){
        this.data = data;
    }
  
    @Override
    public void run() {
        System.out.println("Processing data: " + data);
        // Data processing goes here
    }
  
    private int data;
}