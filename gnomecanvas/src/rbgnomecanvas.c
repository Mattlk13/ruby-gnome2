/* -*- c-file-style: "ruby"; indent-tabs-mode: nil -*- */
/************************************************

  rbgnomecanvas.c -

  $Author: tkubo $
  $Date: 2002/09/28 15:48:21 $

  Copyright (C) 2002 KUBO Takehiro 
************************************************/

#include "rbgnomecanvas.h"

void
Init_gnomecanvas2(void)
{
    VALUE mGnome = rb_define_module("Gnome");

    Init_gnome_canvas(mGnome);
    Init_gnome_canvas_util(mGnome);
    Init_gnome_canvas_item(mGnome);
    Init_gnome_canvas_path_def(mGnome);
}
