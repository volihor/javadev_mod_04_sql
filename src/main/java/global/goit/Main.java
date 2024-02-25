package global.goit;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Main {
private static Logger log4j = LogManager.getLogger(Main.class);
    public static void main(String[] args) {

        log4j.info("---   Test from Logger   ---");
        log4j.info("===  Hello from log4j, \'add number test\': {} ===", 444);

        log4j.debug(" => Debug log message");
        log4j.info (" => Info log message" );
        log4j.error(" => Error log message");
        log4j.warn (" => Warn log message" );

    }
}