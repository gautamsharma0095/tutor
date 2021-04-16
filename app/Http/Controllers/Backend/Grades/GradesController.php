<?php

namespace App\Http\Controllers\Backend\Grades;

use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Grades\CreateGradeRequest;
use App\Http\Requests\Backend\Grades\DeleteGradeRequest;
use App\Http\Requests\Backend\Grades\EditGradeRequest;
use App\Http\Requests\Backend\Grades\ManageGradeRequest;
use App\Http\Requests\Backend\Grades\StoreGradeRequest;
use App\Http\Requests\Backend\Grades\UpdateGradeRequest;
use App\Http\Responses\Backend\Grade\EditResponse;
use App\Http\Responses\RedirectResponse;
use App\Http\Responses\ViewResponse;
use App\Models\Grade;
use App\Repositories\Backend\GradesRepository;
use Illuminate\Support\Facades\View;

class GradesController extends Controller
{
    /**
     * @var \App\Repositories\Backend\GradesRepository
     */
    protected $repository;

    /**
     * @param \App\Repositories\Backend\GradesRepository $repository
     */
    public function __construct(GradesRepository $repository)
    {
        $this->repository = $repository;
        View::share('js', ['grades']);
    }

    /**
     * @param \App\Http\Requests\Backend\Grades\ManageGradeRequest $request
     *
     * @return \App\Http\Responses\ViewResponse
     */
    public function index(ManageGradeRequest $request)
    {
        return new ViewResponse('backend.grades.index');
    }

    /**
     * @param \App\Http\Requests\Backend\Grades\CreateGradeRequest $request
     *
     * @return \App\Http\Responses\ViewResponse
     */
    public function create(CreateGradeRequest $request)
    {
        return new ViewResponse('backend.grades.create');
    }

    /**
     * @param \App\Http\Requests\Backend\Grades\StoreGradeRequest $request
     *
     * @return \App\Http\Responses\RedirectResponse
     */
    public function store(StoreGradeRequest $request)
    {
        $this->repository->create($request->except(['_token', '_method']));

        return new RedirectResponse(route('admin.grades.index'), ['flash_success' => "The grade was successfully created."]);
    }

    /**
     * @param \App\Models\Grade $page
     * @param \App\Http\Requests\Backend\Grades\EditGradeRequest $request
     *
     * @return \App\Http\Responses\Backend\Blog\EditResponse
     */
    public function edit(Grade $grade, EditGradeRequest $request)
    {
        // dd($grade, $request);
        return new EditResponse($grade);
    }

    /**
     * @param \App\Models\Grade $page
     * @param \App\Http\Requests\Backend\Grades\UpdateGradeRequest $request
     *
     * @return \App\Http\Responses\RedirectResponse
     */
    public function update(Grade $grade, UpdateGradeRequest $request)
    {
        $this->repository->update($grade, $request->except(['_token', '_method']));

        return new RedirectResponse(route('admin.grades.index'), ['flash_success' => "The grade was successfully updated."]);
    }

    /**
     * @param \App\Models\Grade $page
     * @param \App\Http\Requests\Backend\Grades\DeleteGradeRequest $request
     *
     * @return \App\Http\Responses\RedirectResponse
     */
    public function destroy(Grade $grade, DeleteGradeRequest $request)
    {
        $this->repository->delete($grade);

        return new RedirectResponse(route('admin.grades.index'), ['flash_success' => "The grade was successfully deleted."]);
    }
}
