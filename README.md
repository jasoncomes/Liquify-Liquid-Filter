# liquify

*Parses variables into Liquid syntax. Helpful for converting Liquid variables in template front matter.*

### **Usage**

    {{ string | liquify }}

### **Parameters**

- `string` string. required. The string to parse into Liquid

### Return

- string. Returns the given string with the Liquid tags parsed.

## **Example**

### Input

    ---
    title: {{ site.title }}
    ---
    
    {{ page.title | liquify }}

### **Output**

    My Blog

If `site.title` is set to "My Blog" in `_config.yml`:
