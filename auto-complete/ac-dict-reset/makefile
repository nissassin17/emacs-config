##############################################
# Copyleft (c) haidang001 (tm) (@yahoo.com)  #
# 2011, 2012 Allleft reserved 		     #
##############################################

# Time-stamp: <2012-04-08 10:38:40 haidang-debian>

# makefile ---
#
# Copyright (C)  haidang001\haidang001-vaio
#
# Author: haidang001\haidang001-vaio <haidang-debian@debian>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2, or (at
# your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
# Boston, MA 02110-1301, USA.

# Desciption:

# Object.
EXE=gen-ac-dict refine-key
OBJ=
ALL=$(OBJ) $(EXE)

# Compiler and setup.

CC=gcc
CFLAGS=-g -std=c99
# Standard flag
CFLAGS=-g -std=c99
# BTree library
BTFLAGS=-lbt
# curses and ncurses lib
NCFLAGS=-lncurses -lcurses -lpanel -lmenu -lform
# using POSIX pthread
PTFLAGS=-pthread

CPP=g++
CPPFLAGS=-g

PAS=fpc
PASFLAGS=-TLINUX

RM=rm -rRf

TEX=pdflatex
TEX=latex

ASM=nasm
LD=ld
ASMFLAGS=-g -f elf

JAVAC=javac
JAVA=java
JFLAGS=
JCFLAGS=

# All job.
all: $(ALL)

# Object compile.
compile: $(OBJ)


#check-syntax for flymake-mode:
# For flymake
check-syntax:
	$(CC) -o nul -S ${CHK_SOURCES}


# Excutable linkage.
link: $(EXE)
gen-ac-dict: gen-ac-dict.c
	$(CC) gen-ac-dict.c -o gen-ac-dict
refine-key: refine-key.c
	$(CC) refine-key.c -o refine-key $(BTFLAGS)

# Clean.
clean:
	$(RM) $(ALL)

# S_have fun! :)
