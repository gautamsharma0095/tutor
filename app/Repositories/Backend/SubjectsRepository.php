<?php

namespace App\Repositories\Backend;

use App\Events\Backend\Pages\PageCreated;
use App\Events\Backend\Pages\PageDeleted;
use App\Events\Backend\Pages\PageUpdated;
use App\Exceptions\GeneralException;
use App\Models\Subject;
use App\Repositories\BaseRepository;
use Illuminate\Support\Str;

class SubjectsRepository extends BaseRepository
{
    /**
     * Associated Repository Model.
     */
    const MODEL = Subject::class;

    /**
     * Sortable.
     *
     * @var array
     */
    private $sortable = [
        'id',
        'name',
        'created_at',
        'updated_at',
    ];

    /**
     * Retrieve List.
     *
     * @var array
     * @return Collection
     */
    public function retrieveList(array $options = [])
    {
        $perPage = isset($options['per_page']) ? (int) $options['per_page'] : 20;
        $orderBy = isset($options['order_by']) && in_array($options['order_by'], $this->sortable) ? $options['order_by'] : 'created_at';
        $order = isset($options['order']) && in_array($options['order'], ['asc', 'desc']) ? $options['order'] : 'desc';
        $query = $this->query()
            ->with([
                'owner',
                'updater',
            ])
            ->orderBy($orderBy, $order);

        if ($perPage == -1) {
            return $query->get();
        }

        return $query->paginate($perPage);
    }

    /**
     * @return mixed
     */
    public function getForDataTable()
    {
        return $this->query()
            ->select([
                'subjects.id',
                'subjects.name',
                'subjects.created_at',
            ]);
    }

    /**
     * @param array $input
     *
     * @throws \App\Exceptions\GeneralException
     *
     * @return bool
     */
    public function create(array $input)
    {
        if ($this->query()->where('name', $input['name'])->first()) {
            throw new GeneralException("Name Already Exist");
        }


        if ($page = Subject::create($input)) {
            // event(new PageCreated($page));

            return $page->fresh();
        }

        throw new GeneralException("Something Wrong In Create Subject");
    }

    /**
     * Update Page.
     *
     * @param \App\Models\Page $page
     * @param array $input
     */
    public function update(Subject $page, array $input)
    {
        if ($this->query()->where('name', $input['name'])->where('id', '!=', $page->id)->first()) {
            throw new GeneralException("Subject Already Exists");
        }

        if ($page->update($input)) {
            // event(new PageUpdated($page));

            return $page;
        }

        throw new GeneralException(
            __('exceptions.backend.pages.update_error')
        );
    }

    /**
     * @param \App\Models\Page $page
     *
     * @throws GeneralException
     *
     * @return bool
     */
    public function delete(Subject $page)
    {
        if ($page->delete()) {
            // event(new PageDeleted($page));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.pages.delete_error'));
    }
}
