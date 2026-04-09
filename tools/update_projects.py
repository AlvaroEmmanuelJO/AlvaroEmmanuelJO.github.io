import os

def update_project_files():
    # Directorio de proyectos
    projects_dir = os.path.join(os.path.dirname(__file__), 'projects')
    
    # Lista de archivos de proyecto
    project_files = [
        'project1.html', 'project2.html', 'project3.html',
        'project4.html', 'project5.html', 'project6.html',
        'project7.html', 'project8.html', 'project9.html',
        'project10.html', 'project11.html', 'project12.html'
    ]
    
    # Color a reemplazar y nuevo color
    old_color = '#7beec7'
    new_color = '#001489'
    
    # Procesar cada archivo
    for project_file in project_files:
        file_path = os.path.join(projects_dir, project_file)
        
        # Leer el contenido del archivo
        with open(file_path, 'r', encoding='utf-8') as file:
            content = file.read()
        
        # Reemplazar el color
        updated_content = content.replace(old_color, new_color)
        
        # Guardar los cambios
        with open(file_path, 'w', encoding='utf-8') as file:
            file.write(updated_content)
    
    print("Actualización completada!")

if __name__ == "__main__":
    update_project_files()
