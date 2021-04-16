<?php

namespace App\Http\Controllers\Backend\Subjects;

use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Grades\ManageGradeRequest;
use App\Repositories\Backend\SubjectsRepository;
use Yajra\DataTables\Facades\DataTables;

class SubjectsTableController extends Controller
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
    }

    /**
     * @param \App\Http\Requests\Backend\Pages\ManageGradeRequest $request
     *
     * @return mixed
     */
    public function __invoke(ManageGradeRequest  $request)
    {
        return Datatables::of($this->repository->getForDataTable())
            ->editColumn('created_at', function ($page) {
                return $page->created_at->toDateString();
            })
            ->addColumn('actions', function ($page) {
                return $page->action_buttons;
            })
            ->rawColumns(['actions'])
            ->make(true);
    }
}
