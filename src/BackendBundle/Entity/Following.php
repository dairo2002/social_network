<?php

namespace BackendBundle\Entity;

/**
 * Following
 */
class Following
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var \BackendBundle\Entity\User
     */
    private $following;

    /**
     * @var \BackendBundle\Entity\Users
     */
    private $user;


    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set following
     *
     * @param \BackendBundle\Entity\User $following
     *
     * @return Following
     */
    public function setFollowing(\BackendBundle\Entity\User $following = null)
    {
        $this->following = $following;

        return $this;
    }

    /**
     * Get following
     *
     * @return \BackendBundle\Entity\User
     */
    public function getFollowing()
    {
        return $this->following;
    }

    /**
     * Set user
     *
     * @param \BackendBundle\Entity\Users $user
     *
     * @return Following
     */
    public function setUser(\BackendBundle\Entity\Users $user = null)
    {
        $this->user = $user;

        return $this;
    }

    /**
     * Get user
     *
     * @return \BackendBundle\Entity\Users
     */
    public function getUser()
    {
        return $this->user;
    }
}

