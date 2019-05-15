<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Component\HttpFoundation\Response;

use App\Entity\Category;
use Symfony\Component\HttpFoundation\Request;
use App\Form\CategoryType;
use Doctrine\Common\Persistence\ObjectManager;

/**
 * @Route("/category", name="category_")
 */
class CategoryController extends AbstractController
{
    /** Creating a category
     *
     *
     * @Route("/", name="create")
     *  @return Response A response instance
     */
    public function add(Request $request,ObjectManager $manager): Response
    {   
        $category=new Category();
        $form = $this->createForm(CategoryType::class, $category);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $manager->persist($category);
            $manager->flush();

            return $this->redirectToRoute('blog_index');

        }

        return $this->render(
                'blog/create.html.twig',
                ['form' => $form->createView()]
        );
    }
}