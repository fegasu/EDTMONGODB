<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
function Escribir($fp,$que){
    fwrite($fp,$que.chr(10));
}
$data = [];
$archi=$argv[1];
for($i=0;$i<24;$i++) 
echo chr(10);
echo "Autor: Jose Fernando Galindo Suarez\nEmail:jgalindos@sena.edu.co\nConvirtiendo a formato JSON MongoDB ";
$data=file($archi.".csv");
$fp=fopen($archi.".json","w");
$fp=fopen($archi.".json","w");
$sep1=count(explode(';',$data[0]));
$sep2=count(explode(',',$data[0]));
Escribir($fp,"[");
$sep=$sep1>$sep2?0:1;
echo $sep==0?'[;]':'[,]';

$b=explode($sep==0?';':',',$data[0]);
$columnas=count($b);
$filas=count($data);

for($i=0;$i<count($b);$i++){
if(strpos($b[$i],' '))
$b[$i]=str_replace(' ','_',$b[$i]);
elseif(is_integer($b[$i]))
$b[$i]=preg_replace( "/\r|\n/", "", $b[$i] );
}
for($i=1;$i<count($data);$i++){
//$c=explode(';',$data[$i]);
$c=explode($sep==0?';':',',$data[$i]);
$sal='{';
for($j=0;$j<count($c);$j++){
$q='';
if($c[$j]!=""){
if(is_numeric($c[$j])==$c[$j]){
$q=preg_replace( "/\r|\n/", "", $c[$j] );
}else{
$q=chr(39).preg_replace( "/\r|\n/", "", $c[$j] ).chr(39);
}

$sal.=$b[$j].':'.$q;
}
if($j<$columnas-1)
$sal.=',' ;
}
if($i<$filas-1)
$sal.='},';
else
$sal.='}';
Escribir($fp,$sal);
}

Escribir($fp,"]");

fclose($fp);
echo chr(10)."____________________________________________________".chr(10);
echo "Entrada: ".$archi.".csv".chr(10);
echo "Salida: ".$archi.".json".chr(10);
echo "Filas: ".$filas.chr(10);
echo "Columnas: ".$columnas.chr(10);
echo "____________________________________________________".chr(10);

?>