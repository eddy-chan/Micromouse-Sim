/***************************************************************************
 *   Copyright (C) 2008 by Eddy Chan
 *   edc529@gmail.com
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc.,                                       *
 *   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 ***************************************************************************/

#include <stdio.h>

#define BLOCK_SIZE 8
#define BLOCK_ARRAY_SIZE 30
#define PARTITIONS_MAX 480

/// A BLOCK is a data type element with a set number of bits to represent partitions.<br />
/// It is defined this way so we can use uint16 from AVR libc instead of unsigned char
/// if we ever decide to port the code to AVR.
typedef unsigned char BLOCK;

/// Bitmap structure containing maps of vertical and horizontal partitions
typedef struct {
	/// Vertical partitions
	BLOCK bitmapV[BLOCK_ARRAY_SIZE];
	/// Horizontal partitions
	BLOCK bitmapH[BLOCK_ARRAY_SIZE];
} bitmap_t;

void importMap(const char* filename, bitmap_t* bitmap);
unsigned short setWall(BLOCK* b, unsigned short partition_num);
unsigned short clearWall(BLOCK* b, unsigned short partition_num);
void printBinaryMap(BLOCK* bitmap);
