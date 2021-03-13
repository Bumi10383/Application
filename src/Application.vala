
/*
* Copyright (c) 2019-2020 Bumi10383
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
* You should have received a copy of the GNU General Public License
* along with this program. If not, see <https://www.gnu.org/licenses/>.
*
* Authored by: Bumi10383 <yoaertz@gmail.com>
*/
public class MyApp : Gtk.Application {
    public MyApp () {
        Object 
        (
            application_id: "com.github.Bumi10383.main",
            flags: ApplicationFlags.FLAGS_NONE
        );
        
    }
    protected override void activate() {
        var label = new Gtk.Label ("Hello Again World!");
        
        var main_window  = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Application"
        };
        main_window.add (label);
        main_window.show_all ();
    }
    public static int main (string[] args) {
        return new MyApp().run (args);
    }
}
