
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
const string GETTEXT_PACKAGE = "project_name"; 

public class MyApp : Gtk.Application {
   public MyApp () {
    Object
     (
        application_id: "com.github.Bumi10383.main",
        flags: ApplicationFlags.FLAGS_NONE
     );
    }
     protected override void activate() {
        var grid = new Gtk.Grid ();
        //grid.orientation = Gtk.Orientation.VERTICAL;
        grid.row_spacing = 300;
        grid.column_spacing = 300;

        var hello_button = new Gtk.Button.with_label (_("Say Hello"));
        var hello_label = new Gtk.Label (null);

        var rotate_button = new Gtk.Button.with_label (_("Rotate"));
        var rotate_label = new Gtk.Label (_(":)"));
        
        grid.add (hello_button);
        grid.add (hello_label);
        
        
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Hello World"
        };
        
        hello_button.clicked.connect (() => {
            hello_label.label = _("Hello World!");
            hello_button.sensitive = false;
        });

        rotate_button.clicked.connect (() => {
            rotate_label.angle = 270;
            rotate_label.label = _(":)");
            rotate_button.sensitive = false;
        });
        
        // add first row of widgets
        grid.attach (hello_button, 0, 0, 1, 1);
        grid.attach_next_to (hello_label, hello_button, Gtk.PositionType.RIGHT, 1, 1);

        // add second row of widgets
        grid.attach (rotate_button, 0, 1);
        grid.attach_next_to (rotate_label, rotate_button, Gtk.PositionType.RIGHT, 1, 1);
        
        main_window.add(grid);
        main_window.show_all ();
        }

       public static int main (string[] args) {
          return new MyApp ().run (args);
      }
}
