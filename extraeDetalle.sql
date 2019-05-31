SELECT concat("\"",concat_ws("\",\"",
       ip,Usuario,fecha,hora,metodo,aplicacion,prog,estatus,bytes,microsegs,conex,url,protocolo
       ),"\"") 
       -- count(*)
  from gob_p1.tb_bitahttp_conmexw1
 where fecha = curdate() 
   and (hora between '13:30' and '13:45');
