package 行为模式.命令;

	//风扇
    //----------  Class Fan  ------------------------------
    class Fan {
          public void startRotate() {
                 System.out.println("Fan is Rotating now !");
          }
          public void stopRotate() {
                 System.out.println("Fan is stop now !");
          }
    }
    
    //-----------------------------------------------------
    //----------  Class FanOnCommand  ---------------------
    class FanOnCommand implements Command {
          private Fan myFan;
          public FanOnCommand (Fan F) {
                 myFan = F;
          }
          public void execute() {
                 myFan.startRotate();
          }
    }
    //-----------------------------------------------------
    //----------  Class FanOffCommand  ---------------------
    class FanOffCommand implements Command {
          private Fan myFan;
          public FanOffCommand (Fan F) {
                 myFan = F;
          }
          public void execute() {
                 myFan.stopRotate();
          }
    }
    //-----------------------------------------------------
    
    
    //-----------------------------------------------------
    //----------  Class Light  ----------------------------
    class Light {
          public void turnOn() {
                 System.out.println("Light is on now !");
          }
          public void turnOff() {
                 System.out.println("Light is off now !");
          }
    }

    //-----------------------------------------------------
    //----------  Class LightOnCommand  -------------------
    class LightOnCommand implements Command {
        private Light myLight;
        public LightOnCommand (Light L) {
               myLight = L;
        }
        public void execute() {
               myLight.turnOn();
        }
    }
    //-----------------------------------------------------
    //----------  Class LightOffCommand  ------------------
    class LightOffCommand implements Command {
        private Light myLight;
        public LightOffCommand (Light L) {
               myLight = L;
        }
        public void execute() {
               myLight.turnOff();
        }
    }

