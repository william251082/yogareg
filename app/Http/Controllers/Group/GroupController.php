<?php

namespace App\Http\Controllers\Group;

use App\Group;
use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;

class GroupController extends ApiController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $groups = Group::all();

        return $this->showAll($groups);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
	    $rules = [
		    'name' => 'required',
		    'description' => 'required',
	    ];

	    $this->validate($request, $rules);

	    $newGroup = Group::create($request->all());

	    return $this->showOne($newGroup, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Group  $group
     * @return \Illuminate\Http\Response
     */
    public function show(Group $group)
    {
        return $this->showOne($group);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Group  $group
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Group $group)
    {
	    $group->fill($request->only([
		    'name',
		    'description',
	    ]));

	    if ($group->isClean()) {
		    return $this->errorResponse('You need to specify any different value to update', 422);
	    }

	    $group->save();

	    return $this->showOne($group);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Group  $group
     * @return \Illuminate\Http\Response
     */
    public function destroy(Group $group)
    {
	    $group->delete();

	    return $this->showOne($group);
    }
}
