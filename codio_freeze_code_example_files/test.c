// FREEZE CODE BEGIN
// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full
// license information.

/*
 *	COMMAND LINE: -Ox -Gz -YX -UPROTOTYPES_REQUIRED
 */


#pragma warning(disable : 4532)
#pragma warning(disable : 4702)

// FREEZE CODE END

#if defined(_WIN32)

#if defined(_M_SH)
#define WIN_CE
#endif

#if defined(_M_AMD64)
#define NEST_IN_FINALLY /* allow when __try nested in __finally OK */
#endif
