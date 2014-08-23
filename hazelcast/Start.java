import com.hazelcast.core.Hazelcast;
import com.hazelcast.core.HazelcastInstance;

public class Start {
    public static void main(String[] args) throws InterruptedException {
        HazelcastInstance instance = Hazelcast.newHazelcastInstance();

        // TERM signal processing
        Runtime.getRuntime().addShutdownHook(new Thread(new Runnable() {
                public void run() {
                    Hazelcast.shutdownAll();
                }
            }));
    }
}
