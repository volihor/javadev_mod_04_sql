package global.goit;


//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import java.util.logging.Logger;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Main {
//    Logger logger = Logger.getLogger(getClass().getName());
//    Logger loggerSlf4j = LoggerFactory.getLogger(Main.class);
//    private static Logger loggerSlf4j = LoggerFactory.getLogger(Main.class);
private static Logger log4j = LogManager.getLogger(Main.class);

    public static void main(String[] args) {
        Main main = new Main();
        main.getLoggerTest();
        System.out.println("---   hi   ---");
//        Logger loggerSLF4J = LoggerFactory.getLogger(Main.class);
//        loggerSLF4J.info("Hi from loggerSLF4J ))");
//        loggerSlf4j.info("Hi from loggerSLF4J ))");
    }

    private void getLoggerTest() {
        int numForTest = 1234;
//        logger.info("My Message numForTest {}");
//        logger.info("My Message: \'java.util.logging.Logger\' can NOT add fields to logger: test {}\", numForTest");
//        loggerSlf4j.info("My Message: \'org.slf4j.Logger\' CAN add fields to logger: test {} : ", numForTest);
    }
}