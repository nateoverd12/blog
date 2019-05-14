<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;


/**
 * @Route("/blog", name="blog")
 */
class BlogController extends AbstractController
{
    /**
     * @Route("", name="_index")
     */
    public function index()
    {
        return $this->render('blog/index.html.twig', [
            'controller_name' => 'BlogController',
        ]);
    }

    /**
     * @Route("/show/{slug<([a-z0-9]-?)+>?Article non défini}", name="_showArticle")
     */
    public function show($slug)
    {   
        $readable=ucwords(implode(' ',(explode('-',$slug))));
        return $this->render('blog/show.html.twig', ['readable' => $readable]);
    }
}
