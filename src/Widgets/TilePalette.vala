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

public class Sandbox.TilePalette : Gtk.FlowBox {
    construct {
        var grass_tile = new TileBox ("/com/github/danrabbit/sandbox/grass.svg");
        var water_tile = new TileBox ("/com/github/danrabbit/sandbox/water.svg");

        column_spacing = 12;
        row_spacing = 12;
        add (grass_tile);
        add (water_tile);
    }
}
