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
#include <stdlib.h>

#include "mazelib.h"

FILE* getFStream(const char *filename) {
	printf("Getting file stream from file %s\n", filename);
	FILE* f = fopen(filename, "r");

	if (!f || ferror(f)) {
		perror("Error opening file");
		exit(1);
	}

	return f;
}

/// Set the bit to indicate the presence of a partition \n
/// \param b A BLOCK array. (Either bitmapH or bitmapV)
/// \param partition_num The partition number. (between 0 and PARTITIONS_MAX/2 - 1)
/// \return 1 on success. 0 if \e partition_num is out of bound.
unsigned short setWall(BLOCK* b, unsigned short partition_num) {
	/// \internal (partition_num < 0) isn't checked because of unsigned short
	if (partition_num > ((PARTITIONS_MAX/2) -1))
		return 0;
	b[partition_num / BLOCK_SIZE] |= (1 << (partition_num % BLOCK_SIZE));
	return 1;
}

/// Clear a partition bit \n
/// \param b A BLOCK array. (Either bitmapH or bitmapV)
/// \param partition_num The partition number. (between 0 and PARTITIONS_MAX/2 - 1)
/// \return 1 on success. 0 if \e partition_num is out of bound.
unsigned short clearWall(BLOCK* b, unsigned short partition_num) {
	if (partition_num > ((PARTITIONS_MAX/2) -1))
		return 0;
	b[partition_num / BLOCK_SIZE] &= ~(1 << (partition_num % BLOCK_SIZE));
	return 1;
}

void readEastWall(FILE* f, bitmap_t* bitmap, unsigned short y) {
	if (!f) {
		fprintf(stderr, "file stream null\n");
		exit(1);
	}
	char buffer[35];
	unsigned short x;

	fgets(buffer, 3, f); // discard outer wall partition and space
	for (x = 0; x < 15; x++) {
		fgetc(f);
		fgetc(f);
	}
	fgets(buffer, 3, f); // discard outer wall partition
}

void readSouthWall(FILE* f, bitmap_t* bitmap, unsigned short y) {
	if (!f) {
		fprintf(stderr, "file stream null\n");
		exit(1);
	}
	
	char buffer[35];
	unsigned short x, partition;

	fgetc(f); // discard outer peg
	for (x = 0; x < 16; x++) {
		partition = x+(y-1)*16;
		switch(fgetc(f)) {
		case '-':
			setWall(bitmap->bitmapH, partition); break;
		case ' ':
			clearWall(bitmap->bitmapH, partition); break;
		default:
			break;
		}
		fgetc(f); //discard peg
	}
	fgets(buffer, 3, f); // discard newline
}

/// Import a maze map represented in ASCII format.\n
/// Maps should be 33 lines by 34 characters including newlines
/// \param filename Filename to import
/// \param bitmap Pointer to bitmap structure
/// \return Nothing. \n \e bitmap will be modified.
void importMap(const char* filename, bitmap_t* bitmap) {
	FILE* f = getFStream(filename);
	char buffer[35], c;
	short i;

	fgets(buffer, 35, f); // skip first line, top outer wall
	for (i = 15; i >= 0; i--) { // count backward since we are reading from top
		readEastWall(f, bitmap, i);
		if (i) readSouthWall(f, bitmap, i);
	}
	if (f) fclose(f);
}

void printBinaryMap(BLOCK* bitmap) {
	//printf("Binary Maze Map\n%s",bitmap);
	fprintf(stdout, "Printing map..\n");
	short i = 0, j = 0;
	for (i = 29; i >= 0; i--) {
		for (j = 0; j < 8; j++) {
			if (((bitmap[i] & (1 << (7-j))) >> (7-j)))
				printf("1");
			else
				printf("0");
		}
		if (!(i%2)) printf("\n");
	}
}
