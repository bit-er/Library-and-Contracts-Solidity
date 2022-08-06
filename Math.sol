// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


library Math {
function isOdd(uint n)external pure returns(bool){
    return n%2==1;
}
function isEven(uint n)external pure returns(bool){
    return n%2==0;
}
function max(uint n1,uint n2)external pure returns(uint) {
    if(n1>n2)return n1;
    return n2;
}
function min(uint n1,uint n2)external pure returns(uint){
    if(n1<n2)return n1;
    return n2;
}
function sum(uint to)external pure returns(uint){
    return (to*(to+1))/2;
}
function sum(uint from,uint to)external pure returns(uint){
    return ((to*(to+1))/2)-((from*(from+1)/2))+from;
}
function sqrt2(uint n)public pure returns(uint){
        uint number=n;
        uint temp;
        uint pre=0;
        while(temp!=n && n!=pre){
            pre=temp;
            temp=n;
            n= ((n*n+number)/(2*n));
        }
        return n;
}
function sqrt(uint x)public pure returns (uint y) {
    uint z = (x + 1) / 2;
    y = x;
    while (z < y) {
        y = z;
        z = (x / z + z) / 2;
    }
}
function log(uint n)external pure returns(uint result){
    while(n>=10){
        result++;
        n/=10;
    }
}
function log(uint n,uint base)external pure returns(uint result){
    while(n>=base){
        result++;
        n/=base;
    }
}
function gcd(uint x,uint y)external pure returns(uint){
    if(x<y){
        uint temp=x;
        x=y;
        y=temp;
    }
    while(y!=0){
        uint temp=y;
        y=x%y;
        x=temp;
    }
    return x;
}
function isPrime(uint n)external pure returns(bool){
    uint limit=sqrt(n);
    for(uint i=2;i<=limit;i++){
        if(n%i==0)return false;
    }
    return true;
}
}
