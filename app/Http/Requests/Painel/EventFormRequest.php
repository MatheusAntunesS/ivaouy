<?php

namespace App\Http\Requests\Painel;

use Illuminate\Foundation\Http\FormRequest;

class EventFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'title'         => 'required|min:4|max:100',
            'description'   => 'required|min:4|max:500',
            'date'          => 'required',
        ];
    }
    
    public function messages()
    {
        return [
        'title.required' => 'Es necesario incluir un título!',
        'description.required' => 'Es necesario incluir una descripción!',
        'date.required' => 'Es necesario incluir una fecha!',    
            ];
    }
}
