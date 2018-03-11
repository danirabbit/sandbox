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

public class Sandbox.TileBox : Gtk.FlowBoxChild {
    public string resource_path { get; construct; }

    public TileBox (string resource_path) {
        Object (resource_path: resource_path);
    }

    construct {
        var image = new Gtk.Image.from_resource (resource_path);

        halign = Gtk.Align.CENTER;
        get_style_context ().add_class (Granite.STYLE_CLASS_CARD);
        add (image);
    }
}
