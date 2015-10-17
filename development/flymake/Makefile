##############################################
# Copyleft (c) haidang001 (tm) (@yahoo.com)  #
# 2011, 2012 Allleft reserved 		     #
##############################################

# Time-stamp: <2012-04-12 21:02:28 haidang-debian>

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
EXE=
OBJ=
ALL=$(OBJ) $(EXE)

# Compiler and setup.

# From gccsense project
CC-REC=gccrec
CC-AS=gcc-code-assist

CC=$(CC-REC) $(CC-AS) #normal: gcc
# Standard flag
CFLAGS=-g -std=c99
# BTree library
BTFLAGS=-lbt
# curses and ncurses lib
NCFLAGS=-lncurses -lcurses -lpanel -lmenu -lform
# using POSIX pthread
PTFLAGS=-pthread
# gtk application
GTKFLAGS=`pkg-config --cflags gtk+-2.0` `pkg-config --libs gtk+-2.0`
FULL_C_FLAGS=$(CFLAGS) $(NCUFLAGS) $(BTFLAGS) $(PTFLAGS) $(GTKFLAGS)

# C++ code assist (support class member auto complete)
CPP-AS=g++-code-assist
CPPFLAGS=-g
CPP=$(CC-REC) $(CCPP-AS) #normal: g++

PAS=fpc
PASFLAGS=-TLINUX

RM=rm -rRf

PDFTEX=pdflatex
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
	$(CC-REC) -r -o nul -S ${CHK_SOURCES}


# Excutable linkage.
link: $(EXE)

# Clean.
clean:
	$(RM) $(ALL)

# S_have fun! :)
