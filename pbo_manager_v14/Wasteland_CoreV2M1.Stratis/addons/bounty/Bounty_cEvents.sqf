//Bounty Client Events
//Author: Tyler
//@file Name: Bounty_cEvents.sqf

"pvar_bountyNotify" addPublicVariableEventHandler {
  _list = _this select 1;
  _type = _list param [0, "", [""]];

  switch (toLower _type) do
  {
    case "bountysent":
    {
      _rewardAmount = _list param [1, 0, [0]];
      _name = _list param [2, "", [""]];

      if (_rewardAmount != 0) then
      {
        _message = if (isStreamFriendlyUIEnabled) then {
          "Você adicionou com sucesso um bounty com resompesa de $%1"
        } else {
          "Você adicionou com sucesso um bounty com resompesa de $%1 para %2"
        };

        playSound "defaultNotification";
        [format [_message, [_rewardAmount] call fn_numbersText, _name], 5] call mf_notify_client;
        true call mf_items_atm_refresh;
      }
      else
      {
        playSound "FD_CP_Not_Clear_F";
        ["Transação Invalida, tente novamente", 5] call mf_notify_client;
        true call mf_items_atm_refresh;
      };
    };

    case "bountyadded":
    {
      _rewardAmount = _list param [1, 0, [0]];
      _name = _list param [2, "", [""]];

      _message = if (isStreamFriendlyUIEnabled) then {
        "Um bounty de $%1 foi adicionada na sua cabeça"
      } else {
        "%2 adicionou um bounty de $%1 na sua cabeça"
      };

      playSound "FD_Finish_F";
      [format [_message, [_rewardAmount] call fn_numbersText, _name], 5] call mf_notify_client;
      true call mf_items_atm_refresh;
    };

    case "bountycollected":
    {
      _rewardAmount = _list param [1, 0, [0]];
      _name = _list param [2, "", [""]];

      _message = if (isStreamFriendlyUIEnabled) then {
        "Você coletou um bounty de $%1"
      } else {
        "Você matou %2. e você recolhe o bounty de $%1"
      };

      playSound "FD_Finish_F";
      [format [_message, [_rewardAmount] call fn_numbersText, _name], 5] call mf_notify_client;
    };
  };
};
