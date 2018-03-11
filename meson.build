project ('com.github.danrabbit.sandbox', 'vala', 'c')

gnome = import('gnome')

asresources = gnome.compile_resources(
    'as-resources', 'data/tiles.gresource.xml',
    source_dir: 'data',
    c_name: 'as'
)

executable (
    meson.project_name (),
    'src/Application.vala',
    'src/MainWindow.vala',
    'src/Widgets/MapEditor.vala',
    'src/Widgets/TileBox.vala',
    'src/Widgets/TilePalette.vala',
    asresources,
    dependencies: [
        dependency('glib-2.0'),
        dependency('gobject-2.0'),
        dependency('granite', version: '>=0.5'),
        dependency('gtk+-3.0'),
    ],
    install: true
)
