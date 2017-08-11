//***************************************************************
//***************************************************************
//Coded by calibaan www.nomercykillers.com

//***************************************************************
//***************************************************************
private ["_MessagesToAnnounceStringArray","_DisplayTimesCheckArray","_MinimumSleepTimeScalar","_DisplayReadyMessageStringsArray","_MiniumTimeBetweenAnnouncementsScalar","_CurrentAnnouncementTimeCounterScalar","_UpdatedAnnouncementTimeScalar","_CompiledMessageDisplayString"];

/*
	The message announcement array has the following format: [Message to display, format String, Time between announcements, format scalar]
	For example:
	["Testmessage1 here!", 60], ["This is testmessage 2 displayed every 90 seconds!", 90]
*/

_MessagesToAnnounceStringArray = 

[
["O Arsenal Virtual pode ser utilizado por qualquer jogador. Basta trocar $1 milhão da atm por 15 dias de acesso ao nosso Arsenal Virtual. Procure um ADMIN para se esclarecer sobre o assunto.", 300],
["Use o chat global apenas para falar com admin, para reportar bugs ou hackers. Evite ficar trolando outros players no chat global. ", 612],
["ADMs do Servidor: TitanShady, TitanKing, TitanFallen. ", 907], 
["Entre no grupo do Olympus Server no Facebook. Lá você terá todas as informações sobre eventos e atualizações que ocorrem em nosso servidor.  ", 523],
["Nos pagamos mensalmente um valor para manter este servidor ativo e te proporcionar a melhor diversão possível. Você pode nos ajudar doando R$10,00?  ", 709],
["Visite http://armalivre.blogspot.com.br para dicas e tutorias de ARMA 3. " , 765],
["Misseis TITAN AT e algumas armas como GM6 LYNX, SPMG e NAVID, você só consegue pegar em missões que oferecem caixas como recompensa. Elas não são mais vendidas na gun store.", 810]
];

if ((count _MessagesToAnnounceStringArray) == 0) exitWith 
	{
	diag_log format ["** Automatic message announcement not used, the array is empty. **"];
	};

if (isNil ("CGV_MessageAnnouncementArray")) then
	{
		CGV_MessageAnnouncementArray = [];
	};

_DisplayTimesCheckArray = [];
{
CGV_MessageAnnouncementArray set [count CGV_MessageAnnouncementArray, [_x select 0, _x select 1, 0]];
_DisplayTimesCheckArray set [count _DisplayTimesCheckArray, _x select 1];
} forEach _MessagesToAnnounceStringArray;

_MinimumSleepTimeScalar = [_DisplayTimesCheckArray, 0] call BIS_fnc_findExtreme;
if (_MinimumSleepTimeScalar > 300) then 
	{
	_MinimumSleepTimeScalar = 300;
	};
_MinimumSleepTimeScalar = 5;

while {(true)} do 
	{
	_DisplayReadyMessageStringsArray = [];
	
		{
		_DisplayMessageString = _x select 0;
		_MiniumTimeBetweenAnnouncementsScalar = _x select 1;
		_CurrentAnnouncementTimeCounterScalar = _x select 2;
		
		if (_CurrentAnnouncementTimeCounterScalar >= _MiniumTimeBetweenAnnouncementsScalar) then 
			{
			_DisplayReadyMessageStringsArray set [count _DisplayReadyMessageStringsArray, _DisplayMessageString];
			_UpdatedAnnouncementTimeScalar = 0;
			}
			else
			{
			_UpdatedAnnouncementTimeScalar = _CurrentAnnouncementTimeCounterScalar + _MinimumSleepTimeScalar;
			};
		
		[CGV_MessageAnnouncementArray, [_forEachIndex, 2], _UpdatedAnnouncementTimeScalar] call BIS_fnc_setNestedElement;
		} forEach CGV_MessageAnnouncementArray;
	
	if ((count _DisplayReadyMessageStringsArray) != 0) then 
		{
		_CompiledMessageDisplayString = "";
		
			{
			_CompiledMessageDisplayString = _CompiledMessageDisplayString + _x;
			} forEach _DisplayReadyMessageStringsArray;
		
		//cutText [_CompiledMessageDisplayString, "PLAIN DOWN", 2, false];
		 hint format ["%1", _CompiledMessageDisplayString, "plain down"];
		};
	
	sleep _MinimumSleepTimeScalar;
	};