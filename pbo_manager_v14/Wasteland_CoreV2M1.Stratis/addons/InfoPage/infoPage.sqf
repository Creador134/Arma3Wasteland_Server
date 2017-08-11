// infoPage.sqf
// by CRE4MPIE
// ver 0.1
// 2015-02-01 01:20pm
// contributions from BIStudio Forums, by CRE4MPIE


sleep 30;   //delay before message is displayed after logging in
	
_text = "
<t align='center'><t shadow= 1 shadowColor='#000000'><t size='1.2'><t color='#ff0000'>TEAM CORE STRATIS</t>
<br />
<br />
<t align='center'><t size='1.2'><t shadow= 1 shadowColor='#000000'>Atalhos do teclado</t><br />
<br />
<t align='left'><img size='2' shadow = 0 image='mapConfig\img\windows.paa'/></t><t align='left'><t size='1'><t shadow= 1 shadowColor='#000000'> Nome dos Jogadores</t><br />
<t align='left'><img size='2' shadow = 0 image='mapConfig\img\end.paa'/></t><t align='left'><t size='1'><t shadow= 1 shadowColor='#000000'> Inserir/Remover Fone de Ouvido</t><br />
<t align='left'><img size='2' shadow = 0 image='mapConfig\img\v.paa'/></t><t align='left'><t size='1'><t shadow= 1 shadowColor='#000000'> Abre/Corta Paraquedas</t><br />
<t align='left'><img size='2' shadow = 0 image='mapConfig\img\h.paa'/></t><t align='left'><t size='1'><t shadow= 1 shadowColor='#000000'> Guardar Arma</t><br />
<t align='left'><img size='2' shadow = 0 image='mapConfig\img\del.paa'/></t><t align='left'><t size='1'><t shadow= 1 shadowColor='#000000'> Ejetar Emergência</t><br />
<br />
<t align='center'><t size='1.2'><t shadow= 1 shadowColor='#0000ff'>Tenha um bom jogo. Respeite os outros jogadores e não use hack.</t><br />
<br />
<t align='left'><img size='1.6' shadow = 0 image='mapConfig\img\www.paa'/></t><t align='left'><t size='1'><t shadow= 1 shadowColor='#000000'>  www.a3teamcore.blogspot.com.br</t><br />
<t align='left'><img size='1.7' shadow = 0 image='mapConfig\img\teamspeak.paa'/></t><t align='left'><t size='1'><t shadow= 1 shadowColor='#000000'>  coreoficial.ts3gamer.com</t><br />
<t align='left'><img size='1.6' shadow = 0 image='mapConfig\img\fb.paa'/></t><t align='left'><t size='1'><t shadow= 1 shadowColor='#000000'>   A3 TEAM CORE SERVER</t><br />
<br />
<br />";

hint parseText format ["<t align='center'>Bem vindo %2</t><br />%1",_text, name player];
 
 
