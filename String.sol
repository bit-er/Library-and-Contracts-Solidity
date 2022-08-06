// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Strings{
    
    function isPolidrome(string calldata str)external pure returns(bool){
        bytes calldata bytestr=bytes(str);
        uint mlen=bytestr.length/2;
        uint last=bytestr.length-1;
        for(uint i=0;i<mlen;i++){
            if(bytestr[i]!=bytestr[last-i])return false;
        }
        return true;
    }

    function areAnagram(string calldata s1,string calldata s2)external pure returns(bool){
        if(hashAnagram(s1)==hashAnagram(s2))return true;
        return false;
    }
    function hashAnagram(string calldata str)public pure returns(uint){
        bytes calldata s=bytes(str);
        uint8[] memory primes=new uint8[](26);
        primes[0]=2;
        primes[1]=3;
        primes[2]=4;
        primes[3]=5;
        primes[4]=7;
        primes[5]=11;
        primes[6]=13;
        primes[7]=17;
        primes[8]=19;
        primes[9]=23;
        primes[10]=29;
        primes[11]=31;
        primes[12]=37;
        primes[13]=41;
        primes[14]=43;
        primes[15]=47;
        primes[16]=53;
        primes[17]=59;
        primes[18]=61;
        primes[19]=67;
        primes[20]=71;
        primes[21]=73;
        primes[22]=79;
        primes[23]=83;
        primes[24]=89;
        primes[25]=97;
        uint hash=1;
        for(uint i=0;i<s.length;i++){
            uint8 curr=uint8(s[i]);
            hash*=primes[curr-97];
        }
        return hash;
    }
    function areIsomorphic(string calldata str1,string calldata str2)external pure returns(bool){
        bytes calldata s1=bytes(str1);
        bytes calldata s2=bytes(str2);
        if(s1.length!=s2.length)return false;
        uint8[] memory map1=new uint8[](26);
        uint8[] memory map2=new uint8[](26);
        for(uint i=0;i<s1.length;i++){
            uint8 curr1=uint8(s1[i])-97;
            uint8 curr2=uint8(s2[i])-97;
            if(map1[curr1]!=0){
                if(map2[curr2]==0)return false;
                if(map1[curr1]!=curr2 || map2[curr2]!=curr1)return false;
            }
            else{
                if(map2[curr2]!=0)return false;
                map1[curr1]=curr2;
                map2[curr2]=curr1;
            }
        }
        return true;
    }
    function isEqualt(string calldata s1,string calldata s2)external pure returns(bool){
        return keccak256(bytes(s1))==keccak256(bytes(s2));
    }
}
