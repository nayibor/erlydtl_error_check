-module(erlydtl_error_check).

%% API exports
-export([]).

%%====================================================================
%% API functions
%%====================================================================
%%functions for processing pages
-export([process_template/0]).

%%====================================================================
%% Internal functions
%%====================================================================

%%%record for storing the institution information
-record(usermod_inst,{id,inst_short_name,inst_long_name,inst_ident}).


%%for processing the template
process_template()->
	Data = [  
			  {usermod_inst,1,<<"Test">>,<<"Long Test">>,<<"TST001">>},
			  {usermod_inst,3,<<"Nb1">>,<<"BANK OF NUKU">>,<<"BCN2">>},
			  {usermod_inst,4,<<"Un drap">>,<<"Undergroud Rappers">>,<<"UNDRAP2">>},
			  {usermod_inst,2,<<"Ecb Grp">>,<<"ECOBANK GROUP">>,<<"ECBGRP">>},
			  {usermod_inst,5,<<"TESTINST1a">>,<<"TINST">>,<<"TINST">>}
           ],
        {ok, UiData} = yapp_test_inst_search:render([{data,Data}]).

