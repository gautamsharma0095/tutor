<?php

namespace App\Http\Controllers\Backend\Subjects;

use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Subjects\CreateSubjectRequest;
use App\Http\Requests\Backend\Subjects\DeleteSubjectRequest;
use App\Http\Requests\Backend\Subjects\EditSubjectRequest;
use App\Http\Requests\Backend\Subjects\ManageSubjectRequest;
use App\Http\Requests\Backend\Subjects\StoreSubjectRequest;
use App\Http\Requests\Backend\Subjects\UpdateSubjectRequest;
use App\Http\Responses\Backend\Subject\EditResponse;
use App\Http\Responses\RedirectResponse;
use App\Http\Responses\ViewResponse;
use App\Models\Subject;
use App\Repositories\Backend\SubjectsRepository;
use Illuminate\Support\Facades\View;

class SubjectsController extends Controller
{
    /**
     * @var \App\Repositories\Backend\SubjectsRepository
     */
    protected $repository;

    /**
     * @param \App\Repositories\Backend\SubjectsRepository $repository
     */
    public function __construct(SubjectsRepository $repository)
    {
        $this->repository = $repository;
        View::share('js', ['subjects']);
    }

    /**
     * @param \App\Http\Requests\Backend\Grades\ManageSubjectRequest $request
     *
     * @return \App\Http\Responses\ViewResponse
     */
    public function index(ManageSubjectRequest $request)
    {
        return new ViewResponse('backend.subjects.index');
    }

    /**
     * @param \App\Http\Requests\Backend\Grades\CreateSubjectRequest $request
     *
     * @return \App\Http\Responses\ViewResponse
     */
    public function create(CreateSubjectRequest $request)
    {
        return new ViewResponse('backend.subjects.create');
    }

    /**
     * @param \App\Http\Requests\Backend\Grades\StoreSubjectRequest $request
     *
     * @return \App\Http\Responses\RedirectResponse
     */
    public function store(StoreSubjectRequest $request)
    {
        $this->repository->create($request->except(['_token', '_method']));

        return new RedirectResponse(route('admin.subjects.index'), ['flash_success' => "The subject was successfully created."]);
    }

    /**
     * @param \App\Models\Subject $page
     * @param \App\Http\Requests\Backend\Grades\EditSubjectRequest $request
     *
     * @return \App\Http\Responses\Backend\Blog\EditResponse
     */
    public function edit(Subject $subject, EditSubjectRequest $request)
    {
        // dd($subject, $request);
        return new EditResponse($subject);
    }

    /**
     * @param \App\Models\Subject $page
     * @param \App\Http\Requests\Backend\Grades\UpdateSubjectRequest $request
     *
     * @return \App\Http\Responses\RedirectResponse
     */
    public function update(Subject $subject, UpdateSubjectRequest $request)
    {
        $this->repository->update($subject, $request->except(['_token', '_method']));

        return new RedirectResponse(route('admin.subjects.index'), ['flash_success' => "The subject was successfully updated."]);
    }

    /**
     * @param \App\Models\Subject $page
     * @param \App\Http\Requests\Backend\Grades\DeleteGradeRequest $request
     *
     * @return \App\Http\Responses\RedirectResponse
     */
    public function destroy(Subject $subject, DeleteSubjectRequest $request)
    {
        $this->repository->delete($subject);

        return new RedirectResponse(route('admin.subjects.index'), ['flash_success' => "The subject was successfully deleted."]);
    }
}
