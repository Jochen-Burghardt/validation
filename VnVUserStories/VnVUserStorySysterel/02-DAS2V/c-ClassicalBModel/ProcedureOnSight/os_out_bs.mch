/*?**********************************************

Procedure On-Sight : classical B example

Author : Benoît Lucet (benoit.lucet@systerel.fr)

*************************************************

Output data interface (basic machine)

**********************************************?*/

MACHINE
	os_out_bs

SEES
	os_typ

DEFINITIONS
	d_variables ==
	ack_request_os_mode_out_i ,
	service_brake_command_out_i
	;

	d_invariant ==
	ack_request_os_mode_out_i : BOOL &
	service_brake_command_out_i : BOOL

ABSTRACT_VARIABLES
	d_variables

INVARIANT
	d_invariant

INITIALISATION
	ack_request_os_mode_out_i := FALSE ||
	service_brake_command_out_i := FALSE

OPERATIONS

	/* write operations */

	write_ack_request_os_mode_out(p_bool) =
	PRE
		p_bool : BOOL
	THEN
		ack_request_os_mode_out_i := p_bool
	END
	;
	
	write_service_brake_command_out(p_bool) =
	PRE
		p_bool : BOOL
	THEN
		service_brake_command_out_i := p_bool
	END

END
