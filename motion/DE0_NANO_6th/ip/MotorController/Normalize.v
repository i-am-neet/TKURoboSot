// --------------------------------------------------------------------
// Copyright (c) 2012 by Intelligent Control Lab. of Tamkang University. 
// --------------------------------------------------------------------
//
//
// Major Functions: Normoalize speed and feedback
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date  :|  Changes Made:
//   0.1  :| Chih-en Wu        :| 2012/08/01 :|  Initial Version
// --------------------------------------------------------------------

module Normalize #(
//===========================================================================
// PARAMETER declarations
//===========================================================================
parameter	SPD_DIV	=	1,		// Divisor of Speed
parameter	FB_MAX	=	200	// Max Feedback
)(
//===========================================================================
// PORT declarations
//===========================================================================
input		[9:0]	iFB,	// Feedback Input
output	[7:0]	oFB	// Feedback Output
);

//==================================================================
//  REG/WIRE declarations
//==================================================================

//=============================================================================
// Structural coding
//=============================================================================
assign	oFB		=	iFB * (127*SPD_DIV) / FB_MAX;	// Normalize

endmodule
