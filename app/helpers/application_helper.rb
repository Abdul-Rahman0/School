
module ApplicationHelper
  def link_to_add_fields(name, f, association, **args)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, child_index: "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: 'add-fields', data: { association: association, content: fields.gsub("\n", '') }, **args)
  end
end
