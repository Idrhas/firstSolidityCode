// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Assignment {

        string myName;
        uint256 firstNumb;
        uint256 secondNumb;

     //@string stores a string called myName  
     //@unit256 stores stores two numbers named firstName and secondName
     

        function storeName(string memory Name) public {
            myName = Name;
        }

        function retrieveName() public view returns (string memory) {
        return string(abi.encodePacked("Username is: ", myName));
        }

        function storeFirstNumb(uint256 firsNumb) public {
            firstNumb = firsNumb;
        }

        function retrieveNumbOne() public view returns (uint256){
            return firstNumb;
        }
        
        function storeSecondNumb(uint256 secNumb) public {
            secondNumb = secNumb;
        }

        function retrieveNumbTwo() public view returns (uint256){
            return secondNumb;
        }

        function retrieveAddition() public view returns (uint256){
            return firstNumb + secondNumb;
        }

        function retrieveDivision() public view returns (uint256){
            return firstNumb / secondNumb;
        }

}    
