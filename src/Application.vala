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

public class Sandbox.Application : Gtk.Application {
    public Application () {
        Object (
            application_id: "com.github.danrabbit.sandbox",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        if (get_windows ().length () > 0) {
            get_windows ().data.present ();
            return;
        }

        var main_window = new MainWindow (this);

        var quit_action = new SimpleAction ("quit", null);

        add_action (quit_action);
        set_accels_for_action ("app.quit", {"<Control>q"});

        quit_action.activate.connect (() => {
            if (main_window != null) {
                main_window.destroy ();
            }
        });
    }    
}

public static int main (string[] args) {
    var app = new Sandbox.Application ();
    return app.run (args);
}
