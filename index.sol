// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;
interface BinarySearch{
    function findUpperBound(uint256[] calldata array, uint256 element) external pure returns (bool);
    // function Sort(uint256[] storage array) external returns (uint256[] storage array);
}

contract Search is BinarySearch{

    function findUpperBound(uint256[] calldata array, uint256 element) external override pure returns (bool) {
        if (array.length == 0) {
            return false;
        }
        uint256 low = 0;
        uint256 high = uint256(array.length - 1);
        while(low<=high){
            // if(low == high){
            //     if(array[low] == element) {
            //         return true;
            //     }
            // }
            uint256 mid = uint256((low + high) / 2);
            if(element == array[mid]){
                return true;
            }
            if(element < array[mid]){
                high = mid - 1;
            } else {
                low = mid + 1;
            }

            
        }
        return false;
    } 
}