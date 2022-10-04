-- sCRIPT REGULARIZA CSTMR_HLDG_DIM  Y  CSTMR_GRP_DIM
DECLARE
  PO_CODERR VARCHAR2(500);
  v_fecha_ini date := TO_DATE('20220705', 'yyyymmdd');
  v_FECHA_FIN date := trunc(sysdate-1);
  v_TIPO_EJECUCION varchar2(1):='D';
  v_ID_FLUJO number := 1;
  V_IDENFINIDO number := -1;
  TYPE t_holding IS TABLE OF VARCHAR2(50) INDEX BY PLS_INTEGER;
  holding t_holding;
BEGIN
  
holding(1)   := 'HBO-11197342'; /*SOUTH AMERICAN EXPRESS*/
holding(2)   := 'HBO-11197731'; /*RANSA OPERADOR LOGISTICO BOLIVIA*/
holding(3)   := 'HBO-11198362'; /*GOBIERNO AUTONOMO MUNICIPAL DE MINEROS*/ 
holding(4)   := 'HBO-11210298'; /*DATEC*/
holding(5)   := 'HBO-11218855'; /*COOP. DE AHORRO Y CREDITO JESUS NAZARENO*/
holding(6)   := 'HBO-11221560'; /*FUTURO DE BOLIVIA - FONDOS PENSIONES*/
holding(7)   := 'HBO-11226308'; /*ESMICAL*/
holding(8)   := 'HBO-11228120'; /*AVESCA*/
holding(9)   := 'HBO-11239768'; /*PIL ANDINA*/
holding(10)  := 'HBO-11242132'; /*VIAS BOLIVIA*/
holding(11)  := 'HBO-11249441'; /*EMACRUZ*/
holding(12)  := 'HBO-11264622'; /*ALIANZA COMPANIA DE SEGUROS Y REASEGUROS*/
holding(13)  := 'HBO-11271885'; /*FONDO FINANCIERO PRIVADO FASSIL*/
holding(14)  := 'HBO-11274948'; /*HONORABLE ALCALDIA MUNICIPAL DE PORONGO*/
holding(15)  := 'HBO-11283694'; /*BANCO SOLIDARIO BANCOSOL*/
holding(16)  := 'HBO-11288391'; /*MINOIL*/
holding(17)  := 'HBO-11294081'; /*YPFB*/
holding(18)  := 'HBO-11294583'; /*MINISTERIO DE ECONOMIA Y FINANZAS PUBLICAS*/
holding(19)  := 'HBO-11300032'; /*FARMACIAS CORPORATIVAS*/
holding(20)  := 'HBO-11303521'; /*HONORABLE ALCALDIA DE 4 CANADAS*/
holding(21)  := 'HBO-11308686'; /*INTERCONEXION ELECTRICA ISA BOLIVIA*/
holding(22)  := 'HBO-11341785'; /*COMPANIA DE ALIMENTOS*/
holding(23)  := 'HBO-11343776'; /*TOYOSA*/
holding(24)  := 'HBO-11378614'; /*EMPRESA ELECTRICA ENDE GUARACACHI*/
holding(25)  := 'HBO-11395578'; /*PROMEDICAL*/
holding(26)  := 'HBO-11451280'; /*SOCIEDAD SYNERGY*/
holding(27)  := 'HBO-1147851';  /*UNIVERSIDAD SAN FRANCISCO XAVIER DE CHUQUISACA*/
holding(28)  := 'HBO-11483405'; /*EMBOL*/
holding(29)  := 'HBO-11484840'; /*C.I.D.R.E.*/
holding(30)  := 'HBO-11503117'; /*PRENDAMAS*/
holding(31)  := 'HBO-11507674'; /*SUDAMERICANA SRL CORREDORES Y ASES SEG*/
holding(32)  := 'HBO-11605834'; /*GOBIERNO MUNICIPAL DE PORVENIR*/
holding(33)  := 'HBO-11644366'; /*LINKSER*/
holding(34)  := 'HBO-11648715'; /*COMPANIA INDUSTRIAL DE TABACOS*/
holding(35)  := 'HBO-11691070'; /*BISA SOCIEDAD DE TITULARIZACION*/
holding(36)  := 'HBO-11692595'; /*EMPRESA NACIONAL DE ELECTRICIDAD ENDE*/
holding(37)  := 'HBO-11711216'; /*ENDE TRANSMISION*/
holding(38)  := 'HBO-11713903'; /*GOBIERNO AUTONOMO MUNICIPAL DE CHULUMANI*/
holding(39)  := 'HBO-11722352'; /*CREDICASAS LA FUENTE JN*/
holding(40)  := 'HBO-11740466'; /*GOBIERNO MUNICIPAL DE LA PAZ*/
holding(41)  := 'HBO-11744944'; /*ADUANA NACIONAL DE BOLIVIA*/
holding(42)  := 'HBO-11758846'; /*GOBIERNO AUTONOMO DEPARTAMENTAL DEL BENI*/
holding(43)  := 'HBO-11761026'; /*EXTERRAN BOLIVIA*/
holding(44)  := 'HBO-11778745'; /*VICEPRESIDENCIA DEL ESTADO*/
holding(45)  := 'HBO-11865869'; /*VINTAGE PETROLEUM*/
holding(46)  := 'HBO-11869666'; /*LA SERRANA*/
holding(47)  := 'HBO-11914624'; /*ASAMBLEA LEGISLATIVA DEL DEPARTAMENTO DE SC*/
holding(48)  := 'HBO-11968';    /*EMPRESA DE SERVICIOS ELECTROMECANICOS*/
holding(49)  := 'HBO-11976';    /*EMPRESA ELECTRICA CORANI*/
holding(50)  := 'HBO-12074926'; /*BEBIDAS BOLIVIANAS BBO*/
holding(51)  := 'HBO-12150710'; /*EMPRESA MUNICIPAL AREAS VERDES PARQUES*/
holding(52)  := 'HBO-12179149'; /*EMPRESA MUNICIPAL DE SERVICIO DE ASEO*/
holding(53)  := 'HBO-12181551'; /*UNIVERSIDAD PRIVADA BOLIVIANA UPB*/
holding(54)  := 'HBO-12357513'; /*GOBIERNO MUNICIPAL EL TORNO*/
holding(55)  := 'HBO-12357660'; /*SERVICIO DEPARTAMENTAL DE SALUD (SEDES)*/
holding(56)  := 'HBO-12456254'; /*MONOPOL*/
holding(57)  := 'HBO-12461345'; /*POLICIA BOLIVIANA*/
holding(58)  := 'HBO-12516550'; /*MINISTERIO DE EDUCACION*/
holding(59)  := 'HBO-12542242'; /*SERVICIO DE IMPUESTOS NACIONALES*/
holding(60)  := 'HBO-12553695'; /*JALASOFT*/
holding(61)  := 'HBO-12557793'; /*SEGURO SOCIAL UNIVERSITARIO*/
holding(62)  := 'HBO-12702907'; /*GOBIERNO AUTONOMO MUNICIPAL DE CAJUATA*/
holding(63)  := 'HBO-12795008'; /*GOBIERNO AUTONOMO MUNICIPAL DE SACABA*/
holding(64)  := 'HBO-12815803'; /*GOBIERNO AUTONOMO MUNICIPAL DE VINTO*/
holding(65)  := 'HBO-12850700'; /*UNIVERSIDAD CATOLICA BOLIVIANA SAN PABLO*/
holding(66)  := 'HBO-13138070'; /*GOBIERNO AUTONOMO MUNICIPAL DE TRINIDAD*/
holding(67)  := 'HBO-13165623'; /*GOBIERNO AUTONOMO DEPARTAMENTAL DE LA PAZ*/
holding(68)  := 'HBO-13216134'; /*ASAMBLEA REGIONAL DEL CHACO TARIJENO*/
holding(69)  := 'HBO-13317646'; /*GOBIERNO AUTONOMO MUNICIPAL DE TARIJA*/
holding(70)  := 'HBO-13321668'; /*CORPORACION DE AQUINO BOLIVIA*/
holding(71)  := 'HBO-13334259'; /*GOBIERNO AUTONOMO DEPARTAMENTAL DE TARIJA*/
holding(72)  := 'HBO-13339070'; /*UELICN MINISTERIO DE GOBIERNO*/
holding(73)  := 'HBO-13372918'; /*INSTITUTO BOLIVIANO DE METROLOGIA*/
holding(74)  := 'HBO-13398094'; /*SEGIP*/
holding(75)  := 'HBO-13427167'; /*AUTO CORPORACION SERCOA*/
holding(76)  := 'HBO-13488497'; /*FRIGORIFICO CHIQUITANO*/
holding(77)  := 'HBO-13501848'; /*TELEFERICOS DOPPELMAYR*/
holding(78)  := 'HBO-13570950'; /*INMOBILIARIA KANTUTANI*/
holding(79)  := 'HBO-13646246'; /*MANACO*/
holding(80)  := 'HBO-13646619'; /*EMPRESA DE TRANSFORMACION AGRARIA*/
holding(81)  := 'HBO-13655822'; /*DIRECCION DEPARTAMENTAL DE EDUCACION LA PAZ*/
holding(82)  := 'HBO-13711887'; /*HOSPITAL CRISTO DE LAS AMERICAS*/
holding(83)  := 'HBO-13724515'; /*MULTIPAT*/
holding(84)  := 'HBO-13775072'; /*COBEE*/
holding(85)  := 'HBO-13810165'; /*ELFEC*/
holding(86)  := 'HBO-13929074'; /*FARMACIA CHAVEZ*/
holding(87)  := 'HBO-13958314'; /*TERBOL*/
holding(88)  := 'HBO-13979783'; /*EMPRESA ALEMANA UNIFICADA*/
holding(89)  := 'HBO-14008293'; /*ADMINISTRADORA DE TARJETAS DE CREDITO*/
holding(90)  := 'HBO-14023649'; /*BOLIVIANA DE AVIACION BOA*/
holding(91)  := 'HBO-14023657'; /*AEREO AMASZONAS*/
holding(92)  := 'HBO-14029080'; /*PROCURADURIA GENERAL DEL ESTADO*/
holding(93)  := 'HBO-14040300'; /*ORGANO JUDICIAL DAF*/
holding(94)  := 'HBO-14121475'; /*BANCO PYME DE LA COMUNIDAD*/
holding(95)  := 'HBO-14138747'; /*ORGANO ELECTORAL PLURINACIONAL*/
holding(96)  := 'HBO-14154064'; /*TECHO EN EL URUBO*/
holding(97)  := 'HBO-14240422'; /*KPMG*/
holding(98)  := 'HBO-14430825'; /*MERINCO*/
holding(99)  := 'HBO-14455759'; /*GOBIERNO AUTONOMO MUNICIPAL DE MAPIRI*/
holding(100) := 'HBO-14471096'; /*EMPRESA DE SERVICIOS DELOSUR*/
holding(101) := 'HBO-14479386'; /*REPSOL E&P*/
holding(102) := 'HBO-14527452'; /*TSK ELECTRONICA Y ELECTRICA*/
holding(103) := 'HBO-14529070'; /*GOBIERNO AUTONOMO MUNICIPAL DE POTOSI*/
holding(104) := 'HBO-14529337'; /*BANCO CENTRAL DE BOLIVIA*/
holding(105) := 'HBO-14534';    /*HONORABLE SENADO NACIONAL*/
holding(106) := 'HBO-14548003'; /*EMPRESA MUNICIPAL DE ASFALTOS Y VIAS*/
holding(107) := 'HBO-14576037'; /*ITACAMBA CEMENTO*/
holding(108) := 'HBO-146130';   /*AUTORIDAD BINACIONAL AUTONOMA DEL LAGO TITICACA*/
holding(109) := 'HBO-14627065'; /*GOBIERNO AUTONOMO MUNICIPAL DE POOPO*/
holding(110) := 'HBO-14627878'; /*GOBIERNO AUTONOMO MUNICIPAL DE SAPAHAQUI*/
holding(111) := 'HBO-14631546'; /*GOBIERNO AUTONOMO MUNICIPAL DE ANCORAIMES*/
holding(112) := 'HBO-14665417'; /*GOBIERNO AUTONOMO MUNICIPAL DE EL CHORO*/
holding(113) := 'HBO-14673295'; /*EMPRESA MUNICIPAL DE ASEO URBANO DE TRINIDAD*/
holding(114) := 'HBO-14703430'; /*UNIVERSIDAD AUTONOMA DEL BENI JOSE BALLIVIAN*/
holding(115) := 'HBO-14710669'; /*FUNDACION ABYA YALA BOLIVIA*/
holding(116) := 'HBO-14712143'; /*GOBIERNO AUTONOMO MUNICIPAL DE CAQUIAVIRI*/
holding(117) := 'HBO-14718';    /*EMPRESAS PUBLICAS PRODUCTIVAS LACTEOS DE BOLIVIA*/
holding(118) := 'HBO-14779749'; /*ENTIDAD MUNICIPAL DE ASEO POTOSI*/
holding(119) := 'HBO-14799';    /*ILLIMANI DE COMUNICACIONES*/
holding(120) := 'HBO-14851688'; /*MI RANCHO*/
holding(121) := 'HBO-14860200'; /*SEDES CHUQUISACA*/
holding(122) := 'HBO-14878160'; /*DEPOSITOS ADUANEROS BOLIVIANOS DAB*/
holding(123) := 'HBO-14906161'; /*ENTIDAD MUNICIPAL DE ASEO URBANO SUCRE*/
holding(124) := 'HBO-14917758'; /*GOBIERNO AUTONOMO MUNICIPAL DE MACHARETI*/
holding(125) := 'HBO-14921185'; /*GOBIERNO AUTONOMO MUNICIPAL DE SAN CARLOS*/
holding(126) := 'HBO-14934768'; /*GOBIERNO AUTONOMO MUNICIPAL SAN JAVIER*/
holding(127) := 'HBO-14983823'; /*NULIFE HOTELES*/
holding(128) := 'HBO-15058490'; /*GOBIERNO AUTONOMO MUNICIPAL DE PUERTO SUAREZ*/
holding(129) := 'HBO-15093057'; /*GOBIERNO AUTONOMO MUNICIPAL DE ROBORE*/
holding(130) := 'HBO-15135588'; /*DIGITAL TV CABLE EDMUND*/
holding(131) := 'HBO-15150239'; /*EMPRESA TARIJENA DEL GAS EMTAGAS*/
holding(132) := 'HBO-15174538'; /*LA PRIMERA ENTIDAD FINANCIERA DE VIVIENDA*/
holding(133) := 'HBO-15179582'; /*GOBIERNO AUTONOMO MUNICIPAL DE MACHACAMARCA*/
holding(134) := 'HBO-15186458'; /*GOBIERNO AUTONOMO MUNICIPAL DE COCHABAMBA*/
holding(135) := 'HBO-15187210'; /*EMPRESA HOTELERA ICON*/
holding(136) := 'HBO-15210187'; /*HOSPITAL DE LA MUJER*/
holding(137) := 'HBO-15212924'; /*ASOCIACION DE MUNICIPALIDADES DE BOLIVIA*/
holding(138) := 'HBO-15222704'; /*FONDESIF*/
holding(139) := 'HBO-15228835'; /*INSTITUTO NACIONAL DEL TORAX*/
holding(140) := 'HBO-15261135'; /*GESTORA PUBLICA SEGURIDAD SOCIAL LARGO PLAZO*/
holding(141) := 'HBO-15269675'; /*GOBIERNO AUTONOMO MUNICIPAL DE CALAMARCA*/
holding(142) := 'HBO-15270633'; /*MOLINARI RAIL AG*/
holding(143) := 'HBO-15288865'; /*GOBIERNO AUTONOMO MUNICIPAL DE YAPACANI*/
holding(144) := 'HBO-15291072'; /*GOBIERNO AUTONOMO MUNICIPAL DE SAN PEDRO*/
holding(145) := 'HBO-15303606'; /*BANCO DE DESARROLLO PRODUCTIVO BDP SAM*/
holding(146) := 'HBO-15313570'; /*QUIMICA SUIZA INDUSTRIAL*/
holding(147) := 'HBO-15341229'; /*INDABOL*/
holding(148) := 'HBO-15342630'; /*DISTRIBUIDORA DE ELECTRICIDAD ENDE DEL BENI*/
holding(149) := 'HBO-15435021'; /*ACI SYSTEMS ALEMANIA*/
holding(150) := 'HBO-15483140'; /*SEMAPA*/
holding(151) := 'HBO-155086';   /*DIRECCION DEPARTAMENTAL DE EDUCACION CHUQUISACA*/
holding(152) := 'HBO-15516934'; /*INSUMOS-BOLIVIA*/
holding(153) := 'HBO-15579441'; /*HERBALIFE*/
holding(154) := 'HBO-15580984'; /*GOBIERNO AUTONOMO MUNICIPAL DE VILLA ALCALA*/
holding(155) := 'HBO-15716';    /*LA BOLIVIANA CIACRUZ DE SEGUROS Y REASEGUROS*/
holding(156) := 'HBO-15772';    /*LABORATORIOS VITA*/
holding(157) := 'HBO-1624928';  /*COBOCE*/
holding(158) := 'HBO-1640537';  /*HANSA*/
holding(159) := 'HBO-1656663';  /*MONICA*/
holding(160) := 'HBO-1659979';  /*NIBOL*/
holding(161) := 'HBO-1671856';  /*DISMATEC*/
holding(162) := 'HBO-1678889';  /*MADISA*/
holding(163) := 'HBO-1680073';  /*BIS OVERSEAS BOLIVIA*/
holding(164) := 'HBO-1690364';  /*SOCIEDAD INDUSTRIAL MOLINERA*/
holding(165) := 'HBO-1694714';  /*ENDE VALLE HERMOSO*/
holding(166) := 'HBO-1696564';  /*CREDITO CON EDUCACION RURAL CRECER*/
holding(167) := 'HBO-1730430';  /*ENDE TECNOLOGIAS*/
holding(168) := 'HBO-1731803';  /*SERVICIO DEPARTAMENTAL DE CAMINOS*/
holding(169) := 'HBO-1756065';  /*GOBIERNO AUTONOMO DEPARTAMENTAL DE SANTA CRUZ*/
holding(170) := 'HBO-1789974';  /*TUMPAR*/
holding(171) := 'HBO-20625';    /*PROESA*/
holding(172) := 'HBO-3417';     /*GRANJA AVICOLA INTEGRAL SOFIA*/
holding(173) := 'HBO-43377';    /*CORPORACION DEL SEGURO SOCIAL MILITAR - COSSMIL*/
holding(174) := 'HBO-59922';    /*DEFENSORIA DEL PUEBLO*/
holding(175) := 'HBO-9712';     /*CIA IND COMERCIAL HNOS VICENTE*/
holding(176) := 'HBO-987037';   /*INESCO INGENIERIA & CONSTRUCCION*/
holding(177) := 'HBO-10504';    /*SEGUROS Y REASEGUROS CREDINFORM INTERNATIONAL*/
holding(178) := 'HBO-11085817'; /*ALTA ESTETICA*/
holding(179) := 'HBO-11095929'; /*COMPANIA COMERCIAL MINERA RICACRUZ*/
holding(180) := 'HBO-11099794'; /*GOBIERNO AUTONOMO MUNICIPAL DE SUCRE*/
holding(181) := 'HBO-11102588'; /*GOBIERNO AUTONOMO MUNICIPAL DE TIPUANI*/
holding(182) := 'HBO-11107132'; /*ALCALDIA MUNICIPAL DE COROICO*/
holding(183) := 'HBO-11118205'; /*EMPRESA DE COMUNICACION SOCIAL EL DEBER*/
holding(184) := 'HBO-11136717'; /*FERROVIARIA ORIENTAL*/
holding(185) := 'HBO-11147721'; /*SOALPRO*/
holding(186) := 'HBO-11162078'; /*GOBIERNO AUTONOMO MUNICIPAL DE PAILON*/
holding(187) := 'HBO-11175584'; /*IMPORTADORA Y EXPORTADORA MONTERREY*/
holding(188) := 'HBO-11177344'; /*COOPERATIVA DE SERVICIOS PUBLICOS SANTA CRUZ*/
holding(189) := 'HBO-11182337'; /*PRETENSA*/
holding(190) := 'HBO-11184619'; /*AIR BP BOLIVIA*/
holding(191) := 'HBO-11187600'; /*EID MENDOZA IVETTE ANTONIETA*/
holding(192) := 'HBO-11188401'; /*INDUSTRIAS VENADO*/
holding(193) := 'HBO-11189179'; /*EMPRESA MINERA MANQUIRI*/
holding(194) := 'HBO-11194911'; /*INDUSTRIAS FERROTODO*/

 -- se da de baja los holding especificos 
  FOR I IN holding.FIRST .. holding.LAST LOOP
   PKG_CSTMR_HLDG_DIM.BAJA_STG_CUSTOMER_HOLDING(PI_UNQ_ID_SRC_STM => holding(I),
                                                PO_COD_ERR        => PO_CODERR);   
  END LOOP;
-- se registra los que faltan regulaizar   
  FOR I IN (SELECT *
              FROM STG.STG_HOLDING_B2B_HIST@BIDWDB
             WHERE HOLDING_CODE IN (SELECT HOLDING_CODE
                                      FROM STG.STG_HOLDING_B2B_HIST@BIDWDB
                                    MINUS
                                    SELECT UNQ_ID_SRC_STM
                                      FROM STG.STG_CUSTOMER_HOLDING@BIDWDB)) LOOP

  PKG_CSTMR_HLDG_DIM.ALTA_STG_CUSTOMER_HOLDING(PI_UNQ_ID_SRC_STM => I.HOLDING_CODE,
                                               PI_CSTMR_HLDG_NM  => I.HOLDING_NAME,
                                               PI_CNTRY_KEY      => v_idenfinido,
                                               PI_BTCH_KEY       => v_idenfinido,
                                               PI_SRC_OBJ_KEY    => v_idenfinido,
                                               PI_SRC_STM_KEY    => 1,  /* BCCS*/
                                               PI_EFF_DT         => v_fecha_ini,
                                               PO_COD_ERR        => PO_CODERR);
  END LOOP;
-- se actualiza la dimension en rolap  
  PKG_CSTMR_HLDG_DIM.ETL_ALL_CSTMR_HLDG_DIM;  

  PKG_CSTMR_GRP_DIM.ETL_ALL_CSTMR_GRP_DIM(PI_FECHA_INI           => TO_CHAR(v_FECHA_FIN,'YYYYMMDD'),
                                          PI_FECHA_FIN           => TO_CHAR(v_FECHA_FIN,'YYYYMMDD'),
                                          PI_TIPO_EJECUCION      => v_TIPO_EJECUCION,
                                          PI_TIPO_CARGA          => v_TIPO_EJECUCION,
                                          PI_ID_FLUJO            => v_ID_FLUJO);
    
END;

