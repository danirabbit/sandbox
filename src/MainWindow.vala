/*
*  Copyright (C) 2018 Daniel Foré (http://danielfore.com)
*
*  This program or library is free software; you can redistribute it
*  and/or modify it under the terms of the GNU Lesser General Public
*  License as published by the Free Software Foundation; either
*  version 3 of the License, or (at your option) any later version.
*
*  This library is distributed in the hope that it will be useful,
*  but WITHOUT ANY WARRANTY; without even the implied warranty of
*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
*  Lesser General Public License for more details.
*
*  You should have received a copy of the GNU Lesser General
*  Public License along with this library; if not, write to the
*  Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
*  Boston, MA 02110-1301 USA.
*/

public class Sandbox.MainWindow : Gtk.ApplicationWindow {
    public MainWindow (Gtk.Application application) {
        Object (application: application);
    }

    construct {
        var header = new Gtk.HeaderBar ();
        header.get_style_context ().add_class ("compact");
        header.show_close_button = true;

        var tile_palette = new TilePalette ();
        tile_palette.margin = 12;
        tile_palette.valign = Gtk.Align.START;

        var map_editor = new MapEditor ();

        var hpaned = new Gtk.Paned (Gtk.Orientation.HORIZONTAL);
        hpaned.pack1 (tile_palette, false, false);
        hpaned.add2 (map_editor);

        get_style_context ().add_class ("rounded");
        set_titlebar (header);
        set_default_size (1000, 700);
        add (hpaned);

        show_all ();
    }
}
