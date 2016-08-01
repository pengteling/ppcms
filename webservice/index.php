<?php

try {
    $client = new SoapClient(null,
        array('location' =>"http://www.webxml.com.cn/WebServices/WeatherWebService.asmx?wsdl",'uri' => "http://www.webxml.com.cn/WebServices/WeatherWebService.asmx")
    );
    echo $client->getSupportCity("重庆");

} catch (SoapFault $fault){
    echo "Error: ",$fault->faultcode,", string: ",$fault->faultstring;
}