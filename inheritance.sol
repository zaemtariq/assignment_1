pragma solidity ^0.8.0;

contract ParentVehicle{
    event response(string);
    function start() public pure returns(string memory s)
    {
        s = "The Vehicle has just Started";
        return s;
    }
 function accelerate() public pure returns(string memory s)
    {
        s = "The Vehicle has just Accelerated";
        return s;
    }

     function stop() public pure returns(string memory s)
    {
        s = "The Vehicle has just Stopped";
        return s;
    }

     function service() virtual public returns(string memory s)
    {
        emit response("The Vehicle is being serviced");
        s = "The Vehicle is being serviced";
        return s;
    }

}

contract Cars is ParentVehicle{

  function service() override public returns(string memory s)
    {
        emit response("The Car is being serviced");
        s = "The Car is being serviced";
        return s;
    }

}

contract Truck is ParentVehicle{
  function service() override public pure returns(string memory s)
    {
        s = "The Truck is being serviced";
        return s;
    }

}

contract Bike is ParentVehicle{
  function service() override public pure returns(string memory s)
    {
        s = "The Bike is being serviced";
        return s;
    }

}


//Child Class of Car

contract AtloMehran is Cars{
    
}

//Child Class of Truck

contract Hino is Truck{
    
}

//Child Class of MotorCycle
contract Yamaha is Bike{
    
    
}


contract carServiceStation{
    function vehicleService(address obj) public returns(string memory)  {

        AtloMehran a= AtloMehran(obj);
        a.service();
        return "call";
        
    }
    
}

contract TruckServiceStation{
     function vehicleService() public  {
        
    }
    
    
}

contract MotorCycleServiceStation{
     function vehicleService() public  {
        
    }
    
    
}
