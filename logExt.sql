/* Totales de Tabla */
select fecha, count(*), min(hora), max(hora)
  from gob_p1.tb_bitahttp_pp10myw1
 where hora <> ('00:00:00')
 group by fecha;

/* Extracción General de aplicación en pisa Plex */
SELECT concat("\"",concat_ws("\",\"",
       ip,Usuario,fecha,hora,metodo,aplicacion,prog,estatus,bytes,microsegs,conex,url,protocolo
       ),"\"") 
       -- count(*)
  from gob_p1.tb_bitahttp_conpbaw1
 where fecha = curdate() 
   and (hora between '11:00' and '11:20');
--   and microsegs > 1000000;SELECT `tb_bitahttp_pp10qrw1`.`idsec`,
    `tb_bitahttp_pp10qrw1`.`lote`,
    `tb_bitahttp_pp10qrw1`.`sec-lote`,
    `tb_bitahttp_pp10qrw1`.`ip`,
    `tb_bitahttp_pp10qrw1`.`Usuario`,
    `tb_bitahttp_pp10qrw1`.`fecha`,
    `tb_bitahttp_pp10qrw1`.`hora`,
    `tb_bitahttp_pp10qrw1`.`metodo`,
    `tb_bitahttp_pp10qrw1`.`url`,
    `tb_bitahttp_pp10qrw1`.`protocolo`,
    `tb_bitahttp_pp10qrw1`.`estatus`,
    `tb_bitahttp_pp10qrw1`.`bytes`,
    `tb_bitahttp_pp10qrw1`.`microsegs`,
    `tb_bitahttp_pp10qrw1`.`conex`,
    `tb_bitahttp_pp10qrw1`.`aplicacion`,
    `tb_bitahttp_pp10qrw1`.`prog`
FROM `gob_p1`.`tb_bitahttp_pp10qrw1`;

--   and usuario = 'P30MOLOFUE';
--   and (aplicacion = '/pisaPLEXV10N' or aplicacion like '/CacheLDAPRepplexAppWeb');

select min(fecha) from gob_p1.tb_bitahttp_pp10myw1 where fecha <> '0000-00-00-00:00:00';

/* Extracción de Cliente */
-- SELECT ip,Usuario,fecha,hora,metodo,aplicacion,prog,estatus,bytes,microsegs,conex,url,protocolo
SELECT COUNT(*)
  FROM gob_p1.tb_bitahttp_pp10myw1
 WHERE fecha between '2018-11-28' and curdate() and hora between '06:00' and '19:00' and usuario='PLXCACRRTO'
 ORDER BY fecha asc, hora asc;

SELECT concat("\"",concat_ws("\",\"",
	   ip,Usuario,fecha,hora,metodo,aplicacion,prog,estatus,bytes,microsegs,conex,url,protocolo))
-- SELECT COUNT(*)
  FROM gob_p1.tb_bitahttp_pp10myw1
 WHERE fecha between '2018-12-01' and curdate() and hora between '06:00' and '19:00' and usuario='PLXCACRRTO'
 ORDER BY fecha asc, hora asc;
