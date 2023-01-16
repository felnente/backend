module CreateAndUpdate
  def generic_create(collection)
    if collection.save 
      return [ 
        'collection': collection,
        'status': :created   
      ]
      
    end
    return [
      'collection': collection.errors,
      'status': :unprocessable_entity
    ]
    
  end

  def generic_update(collection, params)
    if collection.update(params)
      return render(json: collection)
    end
    render(json: collection.errors, status: :unprocessable_entity)
  end
end